module counter;
  reg clk = 0;
  reg [3:0] out = 0;

  always #5 clk = ~clk;

  always @(posedge clk)
    out = out + 1;

  initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, counter);
    #100 $finish;
  end
endmodule
