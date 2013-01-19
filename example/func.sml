fun sum(l : int list) : int =
	if null l
	then 0
	else hd l + sum(tl l)