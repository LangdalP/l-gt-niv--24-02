# Tankar

## Løysing:
1. Bruke gdb til å debugge `gdb not-crypto`
2. `layout asm` + `starti` + masse `si` og `fin`
3. Kom til ein memcmp
4. Svaret var i den første adressa som var input til memcmp

- Må gå inn i funksjonskallet rett før hlt
- For å kome dit: Gjer masse `si` + litt forsiktig `fin`
- MEN: Når du får denne:
```
warning: Function __libc_start_main does not return normally.
Try to finish anyway? (y or n) y
```

- Så må du svare NEI
- Kjem til slutt til ein del av programmet som har 

```
│   0x5641a2466081      sub    $0x1d8,%rsp
│   0x5641a2466088      mov    %fs:0x28,%rax
│   0x5641a2466091      mov    %rax,0x1c8(%rsp)
│  >0x5641a2466099      xor    %eax,%eax
│   0x5641a246609b      lea    0xb0(%rsp),%rbx
│   0x5641a24660a3      call   0x5641a2466030 <puts@plt>
```

- Og seinare fread og puts
- Viktig å sette breakpoints der ein har lyst å kome seg, for plutseleg hoppar ein til ein anna del av koden også blir det kødd

fread:
```
│   0x5641a2466164      mov    %rdi,0x40(%rsp)
│   0x5641a2466169      add    $0xa0,%rbx
│   0x5641a2466170      vmovdqa %xmm0,0x160(%rsp)
│   0x5641a2466179      mov    (%rax),%rcx
│   0x5641a246617c      call   0x5641a2466040 <fread@plt>
│   0x5641a2466181      movzbl 0xb0(%rsp),%eax
│   0x5641a2466189      lea    0xf10(%rip),%rdi        # 0x5641a24670a0
│   0x5641a2466190      vmovdqa 0x1028(%rip),%xmm0        # 0x5641a24671c0
```

memcmp:
```
│   0x5641a24663aa      mov    0x40(%rsp),%rsi
│   0x5641a24663af      mov    $0x40,%edx      p)
│   0x5641a24663b4      mov    0x48(%rsp),%rdi
│   0x5641a24663b9      call   0x5641a2466060 <memcmp@plt>
│   0x5641a24663be      mov    %eax,%r12d
│   0x5641a24663c1      test   %eax,%eax               # 0x5641a24670a0
```

Rett før memcmp må du gjere set $pc = (adressa til jne-instruksjon rett under)
Eller nei, får berre "Yep, that's it!" som output. Så trur ikkje den printar flagget. Vi må gi flagget som input?

```
int memcmp(const void *s1, const void *s2, size_t n);
```
- 1st arg: %rdi =   0x7fffdbc8b680
- 2nd arg: %rsi =   0x7fffdbc8b570
- 2nd arg: %rdx =   0x40 = 64

Bør prøve radare2:
https://github.com/radareorg/radare2/blob/master/doc/macos.md

## Med radare
- r2 -d not-crypto
- afl
- V
- Scrolle til memcmp (J, K for å scrolle sider)
- F2 => breakpoint
- dc
- Sjå på koden
- Printe rdi: dr
- pfz @rdi