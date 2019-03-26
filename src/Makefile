ASFLAGS64  = --64
ASFLAGS64 += -march=corei7

all:
	$(AS) collatz_length_windows.S ${ASFLAGS64} -o collatz_length_windows.o
	$(AS) collatz_length_linux.S ${ASFLAGS64} -o collatz_length_linux.o
	@echo "No errors"
