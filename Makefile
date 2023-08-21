SOCS ?= mx6q mx6dl mx6sl mx6sx mx7d mx6ul mx6ull mx7ulp mx8mq
SOCS_UPPER = $(shell echo $(SOCS) | tr '[:lower:]' '[:upper:]')
BIN = memtool
OBJECTS = memtool.o
OBJECTS += $(patsubst %, %_modules.o, $(SOCS))

CFLAGS = -Os
CFLAGS += $(SOCS_UPPER:%=-DENABLE_%)

all: $(OBJECTS)
	$(CC) -o $(BIN) $(OBJECTS)

clean:
	rm -f $(BIN) $(OBJECTS)
