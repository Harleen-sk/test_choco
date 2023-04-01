##
## EPITECH PROJECT, 2022
## test_choco
## File description:
## Makefile
##

SRC 	=	main.c	\

OBJ		=	$(SRC:.c=.o)

NAME	=	choco

CPPFLAGS	= Iinclude	

all: $(NAME)

$(NAME):	$(OBJ)
		echo "hi"
		gcc -o $(NAME) $(OBJ) $(CPPFLAGS)

tests_run:
		echo "bye"
		gcc -o unit_test $(SRC) tests/test_my_putstr.c --coverage -lcriterion
		./unit_tests

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY:	all clean fclean re
