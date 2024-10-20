load ALU.hdl,
output-file ALU.out,
output-list a%B1.6.1 b%B1.6.1 opcode%B1.2.2 out%B1.6.1 zero%B1.1.1;

set a %B0000000000000000,  // a = 0
set b %B0000000000000000;  // b = -1

set opcode %B00,
eval,
output;

set opcode %B01,
eval,
output;

set opcode %B10,
eval,
output;

set opcode %B11,
eval,
output;

set a %B000000000010001,  // a = 17
set b %B000000000000011;  // b = 3

set opcode %B00,
eval,
output;

set opcode %B01,
eval,
output;

set opcode %B10,
eval,
output;

set opcode %B11,
eval,
output;

set a %B1111111111111111,  // a = -1
set b %B1111111111111111;  // b = -1

set opcode %B00,
eval,
output;

set opcode %B01,
eval,
output;

set opcode %B10,
eval,
output;

set opcode %B11,
eval,
output;

set a %B0000000000000000,  // a = 0
set b %B0000000000000000;  // b = 0

set opcode %B00,
eval,
output;

set opcode %B01,
eval,
output;

set opcode %B10,
eval,
output;

set opcode %B11,
eval,
output;