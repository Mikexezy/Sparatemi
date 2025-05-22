# Basi

---

Ogni processore, proprio come il mio ARM64, lavora seguendo un determinato schema:

> Riceve le istruzioni -> Esegue le istruzioni -> Aggiorna memoria e registri

Le parti principali sono:

1. Registri, ovvero delle piccole allocazioni di memoria.
2. Memoria, utilizziamo la RAM perchè accediamo tramite indirizzi.
3. ALU, che usiamo per fare somme, confronti ecc.
4. Unità di controllo, che esegue le istruzioni una per volta.

#### I registri

I registri sono i posti in cui il processore è in grado di leggere e scrivere più velocemente.
In particolare esistono 31 _registri generici_ + i _registri speciali_.

Quelli generici sono:

1. _x0 - x7_ , usati per il passaggio di argomenti e valori di ritorno00

# .section **TEXT,**text

---

Questa riga di codice va messa in ogni file Assembly che andiamo a creare, si occupa infatti di definire la sezione di codice. (Dice al compilatore che tutto quello che ci sta sotto è codice Assembly)

# .globl \_main

---

Serve a definire \_main come una funzione visibile dall'esterno

# \_main:

---

Dice al compilatore che \_main inizia da qua
