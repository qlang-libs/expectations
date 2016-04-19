Expectation = class {
	fn _init(testingT) {
		this.testingT = testingT
	}

	fn truthy() {
		return equalFn(true)
	}

	fn falsey() {
		return equalFn(false)
	}
}

Assert = class {
	fn _init(description, assertFn) {
		this.description = description
		this.assertFn = assertFn
	}

	fn assert(testObj) {
		return this.assertFn(testObj)
	}
}

equalFn = fn(expect) {
	return new Assert(fmt.sprintf("equals to %v", expect), fn(testObj) {
		return testObj == expect
	})
}

create = fn(testingT) {
	return new Expectation(testingT)
}

