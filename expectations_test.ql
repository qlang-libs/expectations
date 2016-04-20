import "expectations" as be

// trusty
if !be.trusty.assert(true) {
	println("can not test true")	
}

// falsity
if !be.falsity.assert(false) {
	println("can not test true")	
}