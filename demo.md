---
marp: true
paginate: true
---

# Gjennomgang av eit knippe picoCTF-oppgåver

![width:17cm](./picoMini/tasks.png)

---

# Gjennomgang av eit knippe picoCTF-oppgåver

Formål:
At de får gjere den kjekke delen der ein finner ut korleis løyse oppgåva utan å måtte bruke timesvis på knoting.

---

# XtraORdinary

> Check out my new, never-before-seen method of encryption! I totally invented it myself. I added so many for loops that I don't even know what it does. It's extraordinarily secure!

---

# XtraORdinary

```python
with open('flag.txt', 'rb') as f:
    flag = f.read()

with open('secret-key.txt', 'rb') as f:
    key = f.read()

def encrypt(ptxt, key):
    ctxt = b''
    for i in range(len(ptxt)):
        a = ptxt[i]
        b = key[i % len(key)]
        ctxt += bytes([a ^ b])
    return ctxt

# Kryptert med secret-key
ctxt = encrypt(flag, key)

random_strs = [
    b'my encryption method',
    b'is absolutely impenetrable',
    b'and you will never',
    b'ever',
    b'ever',
    b'ever',
    b'ever',
    b'ever',
    b'ever',
    b'break it'
]

# Også kryptert med kjente strengar
for random_str in random_strs:
    for i in range(randint(0, pow(2, 8))):
        for j in range(randint(0, pow(2, 6))):
            for k in range(randint(0, pow(2, 4))):
                for l in range(randint(0, pow(2, 2))):
                    for m in range(randint(0, pow(2, 0))):
                        ctxt = encrypt(ctxt, random_str)

with open('output.txt', 'w') as f:
    f.write(ctxt.hex())

```

---

# XtraORdinary

(B ⊕ A) ⊕ A = B ⊕ 0 = B

---

# XtraORdinary

Wikipedia:
> If the content of any message can be guessed or otherwise known then the key can be revealed.

---

# XtraORdinary

## Løysing 

1. Lage alle kandidatar av kva ctxt kan ha vore før siste krypteringssteg
2. For kvar av desse:
    - Anta kjent plaintext: "picoCTF"
    - For kvart av teikna i ctxt: Teste alle moglege byte-verdiar i nøkkel for å finne verdi som gir ønska teikn i plaintext
    - Dersom vi klarer det over: Har ein potensiell kandidat til nøkkel og ctxt
    - Printe forslag til nøkkel og ctxt
    - Siste steg: Prøve å dekryptere ctxt med nøkkel

---

# triple-secure

> To get the flag, you must break RSA not once, but three times!

---

# triple-secure

```python
#!/usr/bin/env python3

from Crypto.Util.number import getPrime, bytes_to_long

with open('flag.txt', 'rb') as f:
    flag = f.read()

p = getPrime(1024)
q = getPrime(1024)
r = getPrime(1024)

n1 = p * q
n2 = p * r
n3 = q * r

moduli = [n1, n2, n3]

e = 65537

# Originally, the plaintext
c = bytes_to_long(flag)

for n in moduli:
    # Encrypted 3 times
    c = pow(c, e, n)

with open('public-key.txt', 'w') as f:
    f.write(f'n1: {n1}\n')
    f.write(f'n2: {n2}\n')
    f.write(f'n3: {n3}\n')
    f.write(f'e: {e}\n')
    f.write(f'c: {c}\n')
```

---

# triple-secure

Implementasjonen av RSA er i utgangspunktet korrekt.

Ved RSA-kryptering bygger på at primtala som blir brukt til å beregne n er hemmelege (og umoglege å faktorisere seg fram til)

---

# triple-secure

## Løysing

Har gjenbrukt primtal når ein reknar ut n1, n2, n3.
Dette gjer at det blir eit likningssystem med tre ukjente variablar.

![](./picoMini/triple-secure/solution.png)

---

# triple-secure

Deretter må rekne ut den faktiske dekrypteringsnøkkelen

![](./picoMini/triple-secure/rsa1.png)

---

# clutter-overflow

> Clutter, clutter everywhere and not a byte to use.

```bash
nc mars.picoctf.net 31890
```

---

# clutter-overflow

```c
#include <stdio.h>
#include <stdlib.h>

#define SIZE 0x100
#define GOAL 0xdeadbeef

const char* HEADER = "<klipt vekk fordi den tok mykje plass";

int main(void)
{
  long code = 0;
  char clutter[SIZE];

  setbuf(stdout, NULL);
  setbuf(stdin, NULL);
  setbuf(stderr, NULL);
 	
  puts(HEADER); 
  puts("My room is so cluttered...");
  puts("What do you see?");

  gets(clutter);


  if (code == GOAL) {
    printf("code == 0x%llx: how did that happen??\n", GOAL);
    puts("take a flag for your troubles");
    system("cat flag.txt");
  } else {
    printf("code == 0x%llx\n", code);
    printf("code != 0x%llx :(\n", GOAL);
  }

  return 0;
}

```

---

# clutter-overflow

```sh
man gets
```

---

# clutter-overflow

![](./picoMini/clutter-overflow/stack1.png)

---

# clutter-overflow

![width:16cm](./picoMini/clutter-overflow/stack2.png)

---

# clutter-overflow

## Løysing

```c
----------------------TOPP
char[] clutter
...
...
----------------------
long code
----------------------
saved RBP
----------------------
return address
----------------------
locals of calling function
```

`clutter` har storleik 0x100 = 256, så må minst ha så mange tegn for å overflowe

---

# not crypto 

> there's crypto in here but the challenge is not crypto... 🤔

---

# not crypto 

- Får berre utlevert eit program du kan køyre: `not-crypto`
- Programmet spør om ein input, og svarer "Nope, come back later"

---

# not crypto 

```sh
objdump -o not-crypto
```

---

# scrambled-bytes

> I sent my secret flag over the wires, but the bytes got all mixed up!

---

# scrambled-bytes

Får utlevert:
- `capture.pcapng` - Et opptak av nettverkstrafikk i Wireshark
- `send.py` - Kjeldekoda for programmet som sendte trafikken

---

# scrambled-bytes

```python
def main(args):
  # Antek at dette er flagget
  with open(args.input, 'rb') as f:
    payload = bytearray(f.read())

  random.seed(int(time()))

  random.shuffle(payload)

  with IncrementalBar('Sending', max=len(payload)) as bar:
    # For kvar byte
    for b in payload:
      send(
        IP(dst=str(args.destination)) /

        # Send til destination port, set source port til tilfeldig port
        UDP(sport=random.randrange(65536), dport=args.port) /

        # Send byten XOR-a med ein tilfeldig byte
        Raw(load=bytes([b^random.randrange(256)])),
      verbose=False)

      bar.next()
```

---

<style scoped>
ol > * {
  font-size: 16px;
}
</style>

# scrambled-bytes - løysing


1. Opne pcapng-fil i wireshark
2. Fann seed ved å prøve litt forskjellige sekund rundt den første pakken som seed. Verifiserte ved å sjå på kva portar den valde. Det viste seg å vere viktig at payload var like lang som den opprinnelege payload. Eg antok dette sidan ein shufflar den opprinnelege payloaden - og det virka plausibelt at talet på modifikasjonar av seed-state hang saman med lengden på det ein skulle shuffle. Eg fann lengda ved å sjekke kor mange UDP-packets det var i Wireshark.
    - Filter: `udp and ip.src==172.17.0.2 and ip.dst==172.17.0.3 and data.len == 1 and count(ip.addr) == 2`
3. Henta ut sendte bytes frå Wireshark som json
4. Las inn bytes i python
5. Utførte ein reverse shuffle
    - Ved å shuffle ei liste range(0, len(payload)) som fortalde meg kva nye indeksar elementa fekk i den faktiske shufflen
    - Obs obs: Måtte først gjere del 1 av shuffle for å konsumere randomness, deretter dekryptere bytes, og så utføre den faktiske shufflen til slutt
6. Dekryptere bytes ved å gjere xor-kryptering på nytt
7. Dette burde ha vore heile oppgåva, for eg kunne verifisere ved å gjere ei re-kryptering at eg fekk identiske bytes som vi såg i wireshark, MEN: det var 3 malformed packets i wireshark som eg ikkje hadde tatt høgde for. Det var ganske jalla, for om eg tok med desse pakkane så ga ikkje re-kryptering lenger identiske bytes som i wireshark, og dermed trur eg at dei pakkane berre er lagt til manuelt i etterkant. Gjorde dette, og fekk ein png.


---

# college-rowing-team

> I just joined my college's rowing team! To make a good first impression, I started sending my teammates positive automated messages every day. I even send them flags from time to time!

---

# college-rowing-team

Får utlevert:
- `encrypted-messages.txt` - Krypterte meldingar
- `encrypt.py` - Kjeldekoda

---

# college-rowing-team

```python
with open('flag.txt', 'rb') as f:
    flag = f.read()

msgs = [
    b'I just cannot wait for rowing practice today!',
    b'I hope we win that big rowing match next week!',
    b'Rowing is such a fun sport!'
        ]

msgs.append(flag)
msgs *= 3
random.shuffle(msgs)

for msg in msgs:
    p = getPrime(1024)
    q = getPrime(1024)
    n = p * q
    e = 3
    m = bytes_to_long(msg)
    c = pow(m, e, n)
    with open('encrypted-messages.txt', 'a') as f:
        f.write(f'n: {n}\n')
        f.write(f'e: {e}\n')
        f.write(f'c: {c}\n\n')
```

---

# college-rowing-team

![](./picoMini/college-rowing-team/rsa-attacks.png)

---

# breadth

> Surely this is what people mean when they say "horizontal scaling," right?
> **Top secret info:**
> Our operatives managed to exfiltrate an in-development version of this challenge, where the function with the real flag had a mistake in it. Can you help us get the flag?

---

# breadth

Får utlevert:
- Programmet `breadth.v1`
- Programmet `breadth.v2`

---

Fin

<!-- 
# notepad

> This note-taking site seems a bit off.

[notepad.mars.picoctf.net](notepad.mars.picoctf.net)

<span style="font-weight: bold; color: red;">Obs:</span> Denne har eg ikkje fått til.

---

# notepad
-->