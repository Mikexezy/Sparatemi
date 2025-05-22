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

1. _x0 - x7_ , usati per il passaggio di argomenti e valori di ritorno.
2. _x8_ , riservato esclusivamente per chiamate di sistema.
3. _x9 - x15_ , sono registri temporanei usati dal compilatore stesso.
4. _x16 - x18_ , riservati a System Call, Link e usi speciali.
5. _x19 - x28_ , vengono usati per conservare dati.
6. _x29_ , usato come Frame Pointer.
7. _x30_ , usato come Link Register.
8. _sp_ , usato come Stack Pointer.
9. _pc_ , usato come Program Counter.
10. _xzr_ , è un registro speciale che vale sempre 0.

> Ogni registro xN ha una versione ridotta wN per sistemi a 32 bit.

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
