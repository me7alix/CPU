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
