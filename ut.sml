fun run_tests(tests : (string * ''a * ''a) list) : bool = 
    if null tests
    then true
    else 
    	let
        	val current_test = hd tests
            val test_name = #1 current_test
            val expected_value = #2 current_test
            val actual_value = #3 current_test
        in
        	if expected_value = actual_value
        	then run_tests(tl tests)
        	else raise Fail("test failed: " ^ test_name)
    	end