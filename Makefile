##
## EPITECH PROJECT, 2022
## test_choco
## File description:
## Makefile
##

SRC 	=	main.c	\

OBJ		=	$(SRC:.c=.o)

NAME	=	choco

all: $(NAME)

$(NAME):	$(OBJ)
		gcc -o $(NAME) $(OBJ)

tests_run:
		gcc -o unit_test $(SRC) tests/test_my_printf.c --coverage -lcriterion
		./unit_tests

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY:	all clean fclean re
