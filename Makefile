# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: imontero <imontero@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/21 16:14:07 by imontero          #+#    #+#              #
#    Updated: 2023/09/02 11:12:46 by imontero         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 				push_swap

CC = 				gcc

CFLAGS =			-g3 -Wall -Werror -Wextra #-fsanitize=address

LIBFT = 			libft.a

SRC_FILES = 		main.c \
					error.c \
					checks.c \
					checks2.c \
					moves.c \
					moves2.c \
					moves3.c \
					algo.c \
					algo2.c \
					algo3.c \
					costs.c \
					costs2.c \
					costs3.c \

INCLUDE = 			push_swap.h

OBJS = $(SRC_FILES:.c=.o)

#.c.o: $(SRCS)
#	$(CC) $(CFLAGS) $(SRCS) -c $(OBJS) -o

all: libft $(NAME)

libft:
	make -C my_libft
	cp my_libft/$(LIBFT) $(LIBFT)

$(NAME): $(OBJS) $(INCLUDE)
	$(CC) $(CFLAGS) $(OBJS) $(FTPRINTF) $(GNL) $(LIBFT) -o $(NAME)

clean:
	rm -f $(OBJS)
	rm -f $(LIBFT)
	make -C my_libft clean

fclean: clean
	rm -f $(NAME)
	make -C my_libft fclean

re: fclean all

.PHONY: all clean fclean re libft