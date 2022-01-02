
# The Development Process

1. Figure out what you are going to build.  Specifications / Designs / Planning is important.
2. Decompose the problem into a set of manageable steps (small problems will not need this)
3. Develop example data for this.  The example data will be used in tests - so verify that the data is good and accurate.
4. Return to (1) above as necessary at this point to refine what it is that you are doing.
5. Build out code to match with simple steps.   
	- Test the code as you go
	- Figure out the sections that you do not know
	- Return to (1) above to refine the design
6. Test larger and larger sections of your "program" as you build it.
7. Keep re-testing the small stuff to verify that it still works.
8. Add more tests to verify that the small stuff still works.
9. Build integration tests that test the entire program when it is done.

# Start the Maintenance Process

1. Track the problems in the code / documentation / presentation / usage.
2. For each problem - 
	- Address where it is
	- Estimate how long it takes to fix it from 5 min to Never.
	- Prioritize the fixes
	- Associate people and other resources with fixes	
	- Fri from the most important to the least
	- Re-Run all the test from part(1) step (9) and add to the set of test.
	- Re-Run all the unit tests.
3. Revise part(1) step(1) to reflect changes in code.

