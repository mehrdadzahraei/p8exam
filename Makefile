CC = g++
CFLAGS = -Wall
EXEC_NAME = SaySomthing
INCLUDES =
LIBS =
OBJ_FILES = saySomthing.o  
INSTALL_DIR = /usr/bin

all 	: 	$SaySomthing

clean :

rm	$SaySomthing	$(OBJ_FILES)


$(EXEC_NAME) 	: 	$(OBJ_FILES)
$(CC) -o $SaySomthing $(OBJ_FILES) $(LIBS)

%.o: %.cpp
$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<

%.o: %.cc
$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<

%.o: %.c
gcc $(CFLAGS) $(INCLUDES) -o $@ -c $<
