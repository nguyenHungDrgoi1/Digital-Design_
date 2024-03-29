module adder(
   input[3:0] a,b,
	output[4:0] s,
	output co);
	assign{co,s}=a+b
endmodule
`timescale 1ns/1ps
module testbench_adder()
	reg [3:0] stim_a,stim_b;
	wire [3:0] mon_s;
	wire mon_co
    adder adder_duy(
	 .a(stim_a),
	 .b(stim_b),
	 .s(mon_s),
	 .co(mon_co)
	 //sinh cac tin hieu dau vao
	 initial
	 begin 
	 stim_a=0;
	 stim_b=1;
	 #5;
	 stim_a=10;
	 stim_b=10;
	 initial 
	 begin 
	   $monitor("Time=&t,a%d,b=%d,s=%d,co=5d\n,%time,stim_a,stim_b,mon_s,mon_co");
	 )