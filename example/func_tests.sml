use "func.sml";
use "../ut.sml";

val func_test_success = run_tests([
	("sum should return 0 if empty list passed", 0, sum([])),
    ("sum should return correct result for list with one element", 10, sum([10])),
    ("sum should correctly add positive values", 21, sum([1, 3, 5, 6, 4, 2])),
    ("sum should correctly add negative values", ~19, sum([~2, ~7, ~6, ~4])),
    ("sum should correctly values with different signs", 8, sum([~3, 2, 5, ~6, 10]))
])