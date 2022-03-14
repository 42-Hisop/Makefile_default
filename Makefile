CC= clang++
CFLAGS = -Wall -Wextra -Werror
SRCS= main.cpp

OBJS= $(SRCS:.cpp=.o)

NAME= replace

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.cpp=.o)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re:fclean all
