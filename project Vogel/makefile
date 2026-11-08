# Variablen für Pfade und Befehle
NASM = nasm
QEMU = qemu-system-x86_64
SRC = asm/boot.s
BIN = tmp/boot.bin

# Standard-Ziel: Baut die Datei, führt sie aber nicht automatisch aus


# Regel zum Assemblieren der .bin Datei
$(BIN): $(SRC)
	@mkdir -p tmp
	$(NASM) -f bin $(SRC) -o $(BIN)

# Ziel zum Starten in QEMU
run: $(BIN)
	$(QEMU) $(BIN)

# Clean-Ziel zum Aufräumen
clean:
	rm -rf tmp
