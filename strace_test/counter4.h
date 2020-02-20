#ifndef COUNTER4_H
#define COUNTER4_H

#include <string>
#include "systemc.h"

SC_MODULE(counter4)
{
private:
  sc_trace_file *fp; // VCD filepointer
public:

//In Ports
  sc_in<bool> reset;
  sc_in<bool> clk;
  sc_in<bool> load;
  sc_in<sc_uint<4> > load_value;

//Out Ports
  sc_out<bool> ovf;
  sc_out<sc_uint<4> > Qout;

//Process
  void px(){
    while(true){
      wait();
      ovf = false;
      if(reset==true){
        Qout = 0;
      }else if(load==true){
        Qout = load_value;
      }else if(clk==true){
        if(Qout.read()==15){
          Qout = 0;
          ovf = true;
        }else{
          Qout.write(1+Qout.read());
        }
      }
    }
    return;
  }

  SC_HAS_PROCESS(counter4);

//Constructor
counter4(sc_module_name _n, sc_trace_file* _fp) : sc_module(_n), fp(_fp){
//--- Threads:
    SC_THREAD(px);
    dont_initialize();  // don't call p1 at time 0
    sensitive << reset << clk.pos() << load;
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

#endif // COUNTER4_H
