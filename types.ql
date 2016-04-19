isFn = fn(t) {
	return fmt.sprintf("%v", type(t)) == "*exec.Function"	
}
