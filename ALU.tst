// ALU.tst
load ALU.hdl,
output-file ALU.out,
output-list a%B1.16.1 b%B1.16.1 opcode%B1.3.1 out%B1.16.1 zero%B1.1.1;

// Test ADD operation (opcode 000)
set a %B0000000000000101,  // 5
set b %B0000000000000011,  // 3
set opcode %B000,          // ADD
eval,
output;

// Test SUB operation (opcode 001)
set a %B0000000000000101,  // 5
set b %B0000000000000011,  // 3
set opcode %B001,          // SUB
eval,
output;

// Test AND operation (opcode 010)
set a %B0000000000001111,  // 15
set b %B0000000000000011,  // 3
set opcode %B010,          // AND
eval,
output;

// Test OR operation (opcode 011)
set a %B0000000000001111,  // 15
set b %B0000000000000011,  // 3
set opcode %B011,          // OR
eval,
output;

// Test NOT A operation (opcode 100)
set a %B0000000000001111,  // 15
set b %B0000000000000011,  // (b is ignored)
set opcode %B100,          // NOT A
eval,
output;

// Test NOT B operation (opcode 101)
set a %B0000000000001111,  // (a is ignored)
set b %B0000000000000011,  // 3
set opcode %B101,          // NOT B
eval,
output;

// Test XOR operation (opcode 110)
set a %B0000000000001111,  // 15
set b %B0000000000000011,  // 3
set opcode %B110,          // XOR
eval,
output;

// Test XNOR operation (opcode 111)
set a %B0000000000001111,  // 15
set b %B0000000000000011,  // 3
set opcode %B111,          // XNOR
eval,
output;

// Test zero flag (using addition that results in zero)
set a %B0000000000000000,
set b %B0000000000000000,
set opcode %B000,          // ADD
eval,
output;

// Test zero flag with non-zero result
set a %B0000000000000001,
set b %B0000000000000001,
set opcode %B000,          // ADD
eval,
output;

// Test larger numbers
set a %B1111111111111111,  // -1 in two's complement
set b %B0000000000000001,  // 1
set opcode %B000,          // ADD
eval,
output;

// Test subtraction with negative result
set a %B0000000000000011,  // 3
set b %B0000000000000101,  // 5
set opcode %B001,          // SUB
eval,
output;

// Test subtraction with negative result
set a %B0000000000100011,  // 3
set b %B0000000010000101,  // 5
set opcode %B001,          // SUB
eval,
output;

// Test subtraction with negative result
set a %B0000000001000011,  // 3
set b %B0000011000000101,  // 5
set opcode %B011,          // SUB
eval,
output;

// Test subtraction with negative result
set a %B0000000000101011,  // 3
set b %B0000000000110101,  // 5
set opcode %B101,          // SUB
eval,
output;

// Test XNOR operation (opcode 111)
set a %B0000000000001111,  // 15
set b %B0000000000000011,  // 3
set opcode %B111,          // XNOR
eval,
output;

// Test zero flag (using addition that results in zero)
set a %B0000000000000000,
set b %B0000000000000000,
set opcode %B000,          // ADD
eval,
output;