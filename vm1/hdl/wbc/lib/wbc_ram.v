////////////////////////////////////////////////////////////////////////////////
// (c) 2019 <1801BM1@gmail.com>
// 16KB (8K words) memory build on LUTs
// and initialized by test.mem file

`timescale 1 ns/1 ps

module ram_16k
(
   input [12:0]   addra,
   input          clka,
   input [15:0]   dina,
   input          wea,
   input [1:0]    byteena,
   output [15:0]  douta
);

reg [15:0]  mem [0:8191];
reg [12:0]  areg;
reg [1:0]   wreg;

always @ (posedge clka)
begin
   areg <= addra;
   wreg[0] <= wea & byteena[0];
   wreg[1] <= wea & byteena[1];

   if (wreg[0])
      mem[areg][7:0] <= dina[7:0];
   if (wreg[1])
      mem[areg][15:8] <= dina[15:8];
end

assign douta = mem[areg];
//
// $readmemh is synthezable in XST
// Use inferred block memory instead core generator
// (work too boring, difficult to change content)
//
initial
begin
   $readmemh("../../../tst/out/test.mem", mem, 0, 8191);
end
endmodule
