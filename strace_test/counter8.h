#ifndef COUNTER8_H
#define COUNTER8_H

#include <string>
#include "systemc.h"
#include "counter4.h"

SC_MODULE(counter8)
{
private:
  sc_trace_file *fp; // VCD filepointer
public:

//In Ports
  sc_in<bool> reset;
  sc_in<bool> clk;
  sc_in<bool> load;
  sc_in<sc_uint<8> > load_value;

//Out Ports
  sc_out<bool> ovf;
  sc_out<sc_uint<8> > Qout;

//Signals
  sc_signal<bool > low_to_high;
  sc_signal<sc_uint<4> > lova_low;
  sc_signal<sc_uint<4> > lova_high;
  sc_signal<sc_uint<4> > cnt_low_qout;
  sc_signal<sc_uint<4> > cnt_high_qout;

//Sub-Modules
  counter4 cnt_low;
  counter4 cnt_high;

  void px(){
    while(true){
      wait();
      lova_low = load_value.read().range(3,0);
      lova_high = load_value.read().range(7,4);
      Qout = (cnt_high_qout,cnt_low_qout);
    }
    return;
  }

  SC_HAS_PROCESS(counter8);

//Constructor
counter8(sc_module_name _n, sc_trace_file* _fp) : sc_module(_n), fp(_fp), cnt_low("Low",_fp), cnt_high("High",fp){
//--- Threads:
    SC_THREAD(px);
    dont_initialize();  // don't call p1 at time 0
    sensitive << clk.pos();

//Sub-Module Wireing
  cnt_low.clk(clk);
  cnt_low.reset(reset);
  cnt_low.load(load);
  //cnt_low.load_value((static_cast<sc_lv<8> >(load_value.read())).range(0,3));
  cnt_low.load_value(lova_low);
  cnt_low.Qout(cnt_low_qout);
  cnt_low.ovf(low_to_high);

  cnt_high.clk(low_to_high);
  cnt_high.reset(reset);
  cnt_high.load(load);
  //cnt_high.load_value((static_cast<sc_lv<8> >(load_value.read())).range(4,7));
  cnt_high.load_value(lova_high);
  cnt_high.Qout(cnt_high_qout);
  cnt_high.ovf(ovf);

//--- Tracing
    {
    std::string str = std::string(name()) + std::string("=>Overflow");
    sc_trace(fp,ovf,str.c_str());
    }
    {
    std::string str = std::string(name()) + std::string("=>Qout");
    sc_trace(fp,Qout,str.c_str());
    }
    return;
  }
};

#endif // COUNTER8_H
