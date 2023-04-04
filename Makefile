##
## EPITECH PROJECT, 2022
## test_choco
## File description:
## Makefile
##

MAIN_SRC	=	main.c

SRC 	=	./sub_main.c	\
			./my_putstr.c	\

OBJ		=	$(SRC:.c=.o)

MAIN_OBJ		=	$(MAIN_SRC:.c=.o)

NAME	=	choco

CPPFLAGS	= -I./include

TEST_NAME	=	unit_test

TEST_FILES	=	tests/test_my_putstr.c

TEST_FLAGS	=	--coverage -lcriterion

all:	$(NAME)

$(NAME):	$(OBJ) $(MAIN_OBJ)
		gcc -o $(NAME) $(MAIN_OBJ) $(OBJ) $(CPPFLAGS)

tests_run:
		gcc -o $(TEST_NAME) $(TEST_FILES) $(CPPFLAGS) $(SRC) $(TEST_FLAGS)
		./$(TEST_NAME)

clean:
		rm -f $(OBJ)
		rm -f $(MAIN_OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY:	all clean fclean re
