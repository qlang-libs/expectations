Assert = class {
	fn _init(description, assertFn) {
		this.description = description
		this.assertFn = assertFn
	}

	fn assert(testObj) {
		return this.assertFn(testObj)
	}
}

trusty = new Assert("equals to true", fn(testObj) { return testObj == true })
falsity = new Assert("equals to false", fn(testObj) { return testObj == false })
