#ifndef _PONGMASTER_H_
#define _PONGMASTER_H_

#include "config.h"
#include "systemc.h"

namespace mysim
{

SC_MODULE(pongmaster)
{
public:
  virtual ~pongmaster();

//In / Out Ports
  sc_in<bool> clock;
  sc_in<bool> reset;

  //TriggerBus
  sc_in<bool> trigger_in;
  sc_out<bool> trigger_out;
  sc_out<bool> run;

//Process
  void p1();
  void p2();

//Constructor
  SC_CTOR(pongmaster){
    
    //Rx Thread => Triggered
    SC_THREAD(p1);
    sensitive << trigger_in.pos() << reset;
    
    //Tx Thread => Clocksynchrounous
    SC_THREAD(p2);
    sensitive << clock.pos() << reset;
    return;
  }
};

}

#endif // _PONGMASTER_H_
