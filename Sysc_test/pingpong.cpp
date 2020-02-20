#include <iostream>
#include <string>
#include <sstream>

#include "pingpong.h"

using namespace std;

namespace mysim
{

pingpong::~pingpong()
{
}

void pingpong::py(){
  bool reset_exec = false;
  while(true){
    wait();

    //cout << name() << " --> run_in=" << run_in << " | run_out=" << run_out << endl;
    if(reset==true){
      //cout << name() << " => Cancel" << endl;
      if(reset_exec==false){ //only once!
        trigger_ev[TEV_RESET].notify(MODULEDELAY_ALL,SC_NS);
        trigger_ev[TEV_WAIT1].cancel();
        trigger_ev[TEV_WORK].cancel();
        trigger_ev[TEV_WAIT2].cancel();
        reset_exec = true;
      }
    }else if(run_in==true){
      cout << name() << " => Notify: " << sc_time_stamp() << endl;
      trigger_ev[TEV_WAIT1].notify(MODULEDELAY_IN,SC_NS);
      trigger_ev[TEV_WORK].notify(MODULEDELAY_WORK,SC_NS);
      trigger_ev[TEV_WAIT2].notify(MODULEDELAY_ALL,SC_NS);
      reset_exec = false;
    }
    px_work.notify();
  }
  return;
}

void pingpong::px(){
  sc_uint<COUNTERWIDTH> count = 0;
  bool trigger = false;
  pstate = psIDLE;
  working = false;
  run_out = false;
  while(true){

    if(reset==true){
      pstate = psRESET;
    }

    switch(pstate){
      default:{
        wait(px_work);
        break;
      }
      case psRESET:{
        if(reset==false){
          wait(trigger_ev[TEV_RESET]);
        }else{
          wait();
        }
        break;
      }
      case psWAIT1:{
        wait(trigger_ev[TEV_WAIT1]);
        break;
      }
      case psWORK:{
        wait(trigger_ev[TEV_WORK]);
        break;
      }
      case psWAIT2:{
        wait(trigger_ev[TEV_WAIT2]);
        break;
      }
    };

    switch(pstate){
      default:{ //Reset
        cout << name() << " => Reset" << endl;
        working = false;
        trigger = false;
        run_out = false;
        if(reset==false){
          pstate = psIDLE;
        }
        break;
      }
      case psIDLE:{
        cout << name() << " => Idle" << endl;
        if(run_in==true){
          pstate = psWAIT1;
        }
        break;
      }
      case psWAIT1:{
        cout << name() << " => Wait1" << endl;
        pstate = psWORK;
        break;
      }
      case psWORK:{
        pstate = psWAIT2;
        cout << name() << " => Work" << endl;
        //Bittime Counter ++
        count = count.to_uint() + MODULEDELAY_ALL;
        //Bittime Counter overflow
        if(count>SLOTTIME){
          count = count.to_uint()-SLOTTIME;
        }

        cout << name() << " --> Count: " << count << endl;

        //Elaborate if working on Data
        if(count <= MODULEDELAY_ALL){
          working = true;
          cout << name() << " --> setwork: " << sc_time_stamp() << endl;
        }
        break;
      }
      case psWAIT2:{
        pstate = psIDLE;
        cout << name() << " => Wait2" << endl;
        trigger = !trigger;
        working = false;
        run_out = true;
        cout << name() << " --> clrwork: " << sc_time_stamp() << endl;
        break;
      }
    };
    trigger_out = trigger;
    bitcount = count;
  }
  return;
}

} //namespace
