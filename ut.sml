fun assert_true(actual : bool) : bool =
	actual = true

fun assert_false(actual : bool) : bool =
	actual = false

fun assert_equals(expected : ''Z, actual : ''Z) : bool =
	expected = actual
    
fun run_tests(tests : (string * bool) list) : bool = 
    if null tests
    then true
    else 
    	let
        	val current_test = hd tests
        in
        	if #2 current_test
        	then run_tests(tl tests)
        	else raise Fail("test failed: " ^ #1 current_test)
    	end