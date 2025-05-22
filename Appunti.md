# 🧠 Basi

Ogni processore, proprio come il mio ARM64, lavora seguendo un determinato schema:

> Riceve le istruzioni -> Esegue le istruzioni -> Aggiorna memoria e registri

Le parti principali sono:

1. Registri, ovvero delle piccole allocazioni di memoria.
2. Memoria, utilizziamo la RAM perchè accediamo tramite indirizzi.
3. ALU, che usiamo per fare somme, confronti ecc.
4. Unità di controllo, che esegue le istruzioni una per volta.

### I registri

I registri sono i posti in cui il processore è in grado di leggere e scrivere più velocemente.
In particolare esistono 31 _registri generici_ + i _registri speciali_.

I registri generici più usati sono:

- _x0 - x7_ , usati per il passaggio di argomenti e valori di ritorno.
- _x8_ , riservato esclusivamente per chiamate di sistema.
- _x9 - x15_ , sono registri temporanei usati dal compilatore stesso.
- _x16 - x18_ , riservati a System Call, Link e usi speciali.
- _x19 - x28_ , vengono usati per conservare dati.
- _x29_ , usato come Frame Pointer.
- _x30_ , usato come Link Register.
- _sp_ , usato come Stack Pointer.
- _pc_ , usato come Program Counter.
- _xzr_ , è un registro speciale che vale sempre 0.

> Ogni registro xN ha una versione ridotta wN per sistemi a 32 bit.

### 🧾 LE ISTRUZIONI PRINCIPALI

📦 Movimento dati

- _mov x0, #5_ Carica valore immediato 5 in x0
- _mov x1, x0_ Copia valore da x0 a x1
- _ldr x0, =label_ Carica indirizzo di una variabile
- _str x0, [x1]_ Scrive valore di x0 in memoria

➕ Aritmetica

- _add x0, x1, x2_ Somma x1 e x2, salva in x0
- _sub x0, x1, x2_ Sottrai x2 da x1, salva in x0
- _mul x0, x1, x2_ Moltiplica x1 e x2

🔁 Controllo di flusso

- _b label_ Salta sempre a label
- _bl funzione_ Chiama funzione (salva ritorno in x30)
- _ret_ Ritorna dalla funzione
- _cmp x0, x1_ Confronta x0 con x1
- _b.eq label_ Salta a label se uguali
- _b.ne label_ Salta se diversi
- _b.gt, b.lt, b.ge, b.le_ Confronti numerici

🧵 Stack

- _stp x29, x30, [sp, #-16]!_ Push di due registri
- _ldp x29, x30, [sp], #16_ Pop di due registri
- _sub sp, sp, #16_ Riserva spazio sullo stack
- _add sp, sp, #16_ Libera spazio

<br>
<br>
<br>

# 🏗️ Struttura di un file Assembly ARM64

### .section \_\_TEXT, \_\_text

Questa riga di codice va messa in ogni file Assembly che andiamo a creare, si occupa infatti di definire la sezione di codice. (Dice al compilatore che tutto quello che ci sta sotto è codice Assembly)

### .globl \_main

Serve a definire \_main come una funzione visibile dall'esterno

### \_main:

Dice al compilatore che \_main inizia da qua
<br>

### Esempio

```Assembly
.section __TEXT,__text
.globl _main
_main:
//resto del codice
```
