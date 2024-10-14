CC = gcc
CFLAGS = -g -Wall

# Add additional source files here
SRCS = test_assign1_1.c dberror.c storage_manager.c

# Derive object file names from source file names
OBJS = $(SRCS:.c=.o)

# Main target
test_assign1: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

# Rule to compile .c files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target to remove object files and binary
clean:
	rm -f $(OBJS) test_assign1
