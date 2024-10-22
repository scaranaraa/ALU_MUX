load Inc16.hdl,
output-file Inc16.out,
output-list in%B1.16.1 out%B1.16.1;

// Test case 1: Increment zero
set in %B0000000000000000,
eval,
output;

// Test case 2: Increment one
set in %B0000000000000001,
eval,
output;

// Test case 3: Increment max value minus 1
set in %B0111111111111111,
eval,
output;

// Test case 4: Increment max value
set in %B1111111111111111,
eval,
output;