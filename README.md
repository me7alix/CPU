# 8CPU

<img width="942" height="510" alt="image" src="https://github.com/user-attachments/assets/620ae46c-2f94-48f6-afc7-2ee7c7f0beac" />

An accumulator based 8 bit CPU made in <a href="https://sebastian.itch.io/digital-logic-sim">DigLogSim</a>

## Registers
 - **PCTR**: Program counter
 - **A**: Accumulator
 - **B**: General-purpose register

## Set of instructions
 - `01` **add**:   `A = A + B`
 - `02` **sub**:   `A = A - B`
 - `03` **jmp**:   `PCTR = IMM`
 - `04` **jnz**:   `jmp if A != 0`
 - `05` **jne**:   `jmp if A != B`
 - `06` **imma**:  `A = IMM`
 - `07` **lda**:   `A = RAM[B]`
 - `08` **sta**:   `RAM[B] = A`
 - `09` **prnta**: `print A`
 - `0A` **immb**:  `B = IMM`
 - `0B` **movb**:  `B = A`
 - `0C` **scst**:  `BRAM[A] = IMM`
 - `0D` **scrf**:  `VRAM = BRAM`
 - `0E` **scrs**:  `BRAM = {0}`

## Example programs

Two numbers multiplication:

```asm
imma 8 ; A
sta 0

imma 7 ; B
sta 1

imma 0
sta 2

loop:
  lda 1
  movb
  lda 2
  add
  sta 2

  lda 0
  immb 1
  sub
  sta 0

  jnz loop

lda 2
prnta
```

Fibonacci sequence:

```asm
imma 1
sta 0
prnta

imma 2
sta 1

loop:
  lda 0
  prnta

  lda 1
  sta 2

  movb
  lda 0
  add
  sta 1

  lda 2
  sta 0

  jmp loop
```
