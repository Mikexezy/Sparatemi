.section __TEXT,__text  
.globl _main 
_main: 
mov x0, #0  //x0 è il registro per il valore di ritorno (0 = successo).
mov x16, #1  //syscall n°1 (exit).
svc #0  //esegue la syscall (supervisor call).