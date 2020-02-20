#ifndef _PINGPONG_H_
#define _PINGPONG_H_

#include "config.h"
#include "systemc.h"

#define psRESET 0
#define psIDLE  1
#define psWAIT1 2
#define psWORK  3
#define psWAIT2 4
#define TEV_WAIT1 0
#define TEV_WORK  1
#define TEV_WAIT2 2
#define TEV_RESET 3

namespace mysim
{

SC_MODULE(pingpong)
{
private:
  unsigned int state;
public:
  virtual ~pingpong();

//In / Out Ports
  sc_in<bool> reset;

  sc_out<bool> working;
  sc_out<sc_uint<COUNTERWIDTH> > bitcount;

  //TriggerBus
  sc_in<bool> trigger_in;
  sc_out<bool> trigger_out;
  sc_in<bool> run_in;
  sc_out<bool> run_out;

  sc_uint<3> pstate;
  sc_event px_work;
  sc_event trigger_ev[4];

//Process
  void py();
  void px();

//Constructor
SC_CTOR(pingpong){
//--- Threads:

    SC_THREAD(px);
    dont_initialize();         // don't call p1 at time 0
    sensitive << px_work << reset << trigger_ev[0] << trigger_ev[1] << trigger_ev[2] << trigger_ev[3];

    SC_THREAD(py);
    dont_initialize();         // don't call p1 at time 0
    sensitive << trigger_in << reset;

    return;
  }
};

} //namespace

#endif // _PINGPONG_H_
