load Add16.hdl,
output-file Add16.out,
output-list a%B1.16.1 b%B1.16.1 out%B1.16.1;

// Test case 1: Basic addition
set a %B0000000000000000,
set b %B0000000000000000,
eval,
output;

set a %B0000000000000001,
set b %B0000000000000001,
eval,
output;

// Test case 2: Larger numbers
set a %B0000000011111111,
set b %B0000000011111111,
eval,
output;

// Test case 3: Carry propagation
set a %B1111111111111111,
set b %B0000000000000001,
eval,
output;