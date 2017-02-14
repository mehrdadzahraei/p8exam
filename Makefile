SHELL = /bin/sh
CC = gcc
RM = rm -f
CPPFLAGS = -I/usr/local/include
CFLAGS = -Wall 
PROGNAME = examen
PACKAGE=$(PROGNAME)
VERSION = 1.0
distdir = $(PACKAGE)-$(VERSION)
HEADERS = 
SOURCES = main.c   
OBJ = $(SOURCES:.c=.o)
all: $(PROGNAME)
$(PROGNAME): $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -o $(PROGNAME)
%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@
clean:
	@$(RM) -r $(PROGNAME) .o