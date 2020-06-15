# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: jde-la-m <jde-la-m@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/02/13 20:13:16 by jde-la-m     #+#   ##    ##    #+#        #
#    Updated: 2019/04/12 12:48:10 by jde-la-m    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #


NAME	= 	libftprintf.a

CC 		= 	gcc

CFLAGS	=	-Wall -Werror -Wextra

SRC 	=	ft_printf.c				\
			handle_f.c				\
			handle_numbers.c		\
			handle_others.c			\
			handle_text.c			\
			parsing.c				\
			tools.c					\
			tools_f.c				\
			tools_f2.c				\
			tools_numbers.c			\
			tools_parsing.c

OBJ		=	$(SRC:.c=.o)

INC		=	-I./$(LFTDIR) -I.

LFTDIR	=	libft
LFT		=	-L $(LFTDIR) -lft

RM		=	/bin/rm

%.o: %.c ft_printf.h $(LFTDIR)/libft.a
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<

all: LFTC $(NAME)

LFTC:
	@$(MAKE) -C $(LFTDIR)

$(NAME): $(OBJ)
	@ar vrus $@ $^ $(wildcard $(LFTDIR)/objs/*.o)
	@printf "\n|-> \033[32m$(NAME) compiled\033[0m\n\n"

clean:
	@$(MAKE) -C $(LFTDIR) $@
	@$(RM) -rf $(OBJ)
	@printf "|-> \033[31mobjects removed\033[0m\n"

fclean: clean
	@$(MAKE) -C $(LFTDIR) $@
	@$(RM) -f $(NAME)
	@printf "|-> \033[31m$(NAME) deleted\033[0m\n"

re: fclean all

.SILENT: $(OBJ)
.PHONY: all clean fclean re