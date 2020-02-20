#include <iostream>

#include "systemc.h"
#include "counter4.h"
#include "counter8.h"

using namespace std;

int sc_main (int argc __attribute__((unused)), char* argv[] __attribute__((unused)))
{
  cout << "Hello World!" << endl;

//VCD File Logger
  sc_trace_file *fp; // VCD filepointer
  fp=sc_create_vcd_trace_file("out"); // Create wave.vcd file

  sc_clock clk("clk",1,SC_NS,0.5,0,SC_NS,true);

  sc_signal<bool> reset;
  sc_signal<bool> load;
  sc_signal<sc_uint<4> > load_value4;
  sc_signal<sc_uint<8> > load_value8;

  sc_signal<bool> ovf4;
  sc_signal<sc_uint<4> > Qout4;
  sc_signal<bool> ovf8;
  sc_signal<sc_uint<8> > Qout8;

  sc_trace(fp,clk,"TOP=>CLK");
  sc_trace(fp,reset,"TOP=>RESET");
  sc_trace(fp,load,"TOP=>LOAD");
  sc_trace(fp,load_value4,"TOP=>LOAD_VALUE");

//--- Submodules

  counter4 c4("Counter4Bit",fp);
  c4.clk(clk);
  c4.reset(reset);
  c4.load(load);
  c4.load_value(load_value4);
  c4.ovf(ovf4);
  c4.Qout(Qout4);

  counter8 c8("Counter8Bit",fp);
  c8.clk(clk);
  c8.reset(reset);
  c8.load(load);
  c8.load_value(load_value8);
  c8.ovf(ovf8);
  c8.Qout(Qout8);


//--- Testbench
  load_value8 = 0;

  reset      = true;
  load       = false;
  load_value4 = 0;
  sc_start(5,SC_NS);
  reset      = true;
  load       = false;
  load_value4 = 6;
  sc_start(1,SC_NS);
  reset      = false;
  load       = true;
  load_value4 = 6;
  sc_start(1,SC_NS);
  reset      = false;
  load       = false;
  load_value4 = 6;
  sc_start(1000,SC_NS);
  return 0;
}

