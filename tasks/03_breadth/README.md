# Oppgåve

Surely this is what people mean when they say "horizontal scaling," right?

TOP SECRET INFO: Our operatives managed to exfiltrate an in-development version of this challenge, where the function with the real flag had a mistake in it. Can you help us get the flag?

## Notatar

- Ganske store binaries
- Masse funksjonar som startar med "fcn" som outputtar noko, f.eks. `<fcn2Yw4aC>` og `<fcnbUno6N>`
- `break main`
- All form for hopping gir segfaults?
- Gjorde objdump -d og diffa. Diff i funksjonen: `fcnkKTQpF`
- Kunne ikkje hoppe til funksjonen, men starta i gdb, scrolla ned til funksjonen, rekna ut `lea 0xc0e91(%rip),%rdi = 0x559648d48ef8`
- Deretter: `x/2sb 0x559648d48ef8` som gav flagget

```
│   0x559648c8803c                      nopl   0x0(%rax)
│b+ 0x559648c88040 <fcnkKTQpF>      movq   $0x41bc73e,-0x10(%rsp)
│   0x559648c88049 <fcnkKTQpF+9>    mov    -0x10(%rsp),%r
│   0x559648c8804e <fcnkKTQpF+14>   mov    $0xd037803a,%e
│   0x559648c88053 <fcnkKTQpF+19>   cmp    %rax,%r
│   0x559648c88056 <fcnkKTQpF+22>   je     0x559648c88060 <fcnkKTQpF+32>
│   0x559648c88058 <fcnkKTQpF+24>   r
│   0x559648c88059 <fcnkKTQpF+25>   nopl   0x0(%rax)
│   0x559648c88060 <fcnkKTQpF+32>   lea    0xc0e91(%rip),%rdi
│   0x559648c88067 <fcnkKTQpF+39>   jmp    0x559648bf4030 <puts@plt>
│   0x559648c8806c                      nopl   0x0(%rax)
```

rip = 0x559648c88067
rdi = 0x559648c88067 + 0xc0e91 = 559648d48ef8