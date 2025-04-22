CC = gcc
CFLAGS = -Wall -Wextra -g
TARGET = mydb
SRCS = main.c
OBJS = $(SRCS:.c=.o)


# 預設執行目標
all: $(TARGET)

# 連結
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^
	
clean:
	rm -f $(TARGET) $(OBJS)