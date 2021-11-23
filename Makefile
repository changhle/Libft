# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: changhle <changhle@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/17 20:25:28 by changhle          #+#    #+#              #
#    Updated: 2021/11/17 21:27:35 by changhle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a
SRCS := *.c
OBJS := $(SRCS:.c=.o)
AR := ar
ARFLAGS := -rc
CC := gcc
CFLAGS := -Wall -Wextra -Werror

all : $(NAME)

clean :
	rm -f *.o
fclean : clean
	rm -f $(NAME)
re : fclean all


$(NAME) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $?
%.o : %.c
	$(CC) $(CFLAGS) -c $<

.PHONY : all clean fclean
