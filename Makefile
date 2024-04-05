##
## EPITECH PROJECT, 2024
## Intro to Devops: Chocolatine
## File description:
## Makefile
##

SRC	=	src/main.c

OBJ	=	$(SRC:.c=.o)

NAME	=	chocolatine

SRC_TESTS	=	tests/test_chocolatine.c

OBJ_TESTS	=	$(SRC_TESTS:.c=.o)

NAME_TESTS	=	unit_tests

all: $(OBJ)
	gcc -o $(NAME) $(OBJ)

clean:
	rm -f *~
	rm -f *#
	rm -f *.gcda
	rm -f *.gcno

fclean: clean
	rm -f $(OBJ)
	rm -f $(NAME)
	rm -f $(OBJ_TESTS)
	rm -f $(NAME_TESTS)

tests_run: $(OBJ) $(OBJ_TESTS)
	gcc -o $(NAME_TESTS) $(OBJ) $(OBJ_TESTS) --coverage -lcriterion

re: fclean all
