#include <criterion/redirect.h>
#include <criterion/criterion.h>
#include "my.h"

void redirect_all_stdout(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(my_putstr, simple_string, .init = redirect_all_stdout)
{
    my_putstr("hello World\n");
    cr_assert_stdout_eq_str("hellO World\n");
}