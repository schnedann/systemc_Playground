#include <iostream>
#include <string>
#include <sstream>

#include "sysc/datatypes/fx/fx.h"

#include "pongmaster.h"

namespace mysim
{

pongmaster::~pongmaster()
{
}

/**************************************************
 * Rx
 **************************************************/
void pongmaster::p1(){
  std::stringstream ss;


  while(true){
    wait();
    if(reset==true){

    }else if(trigger_in.posedge()==true){
      //cout << "Rx-Task @ " << sc_time_stamp() << endl;
    }
  }
  return;
}

/**************************************************
 * Tx
 **************************************************/
void pongmaster::p2(){
  std::stringstream ss;
  sc_dt::sc_ufixed<DATAWIDTH,DATAWIDTH,sc_dt::SC_TRN,sc_dt::SC_SAT,DATAWIDTH> count;
  bool was_reset = false;
  bool trigger = false;
  run = false;
  while(true){
    wait();
    if(reset==true){
      was_reset = true;
      trigger = false;
      run = false;
    }else if(clock.posedge()==true){
      if(was_reset == true){
        was_reset = false;
        count = DATAMAX;
      }else if(count==0){
        count = DATAMAX;
      }else{
        --count;
      }      
      trigger = !trigger;
      run = true;
    }
    trigger_out = trigger;
  }
  return;
}

}

