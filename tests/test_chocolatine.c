/*
** EPITECH PROJECT, 2024
** Intro to Devops: Chocolatine
** File description:
** main
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../include/my.h"

Test(error_handling, test_error)
{
    cr_assert(error_handling(0, NULL) == 84);
}
