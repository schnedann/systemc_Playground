#include <iostream>
#include <ctime>
#include <string>
#include <sstream>

#include <chrono>

#include "config.h"
#include "systemc.h"
#include "pingpong.h"
#include "pongmaster.h"

#define VCD_OUT_FILE "out"

using namespace std;
using namespace mysim;

string itos(int x){
  stringstream ss;
  ss << x;
  return ss.str();
}

int sc_main (int argc __attribute__((unused)), char* argv[] __attribute__((unused)))
{
  using namespace std::chrono;
  high_resolution_clock::time_point t1 = high_resolution_clock::now();

//----- Simulation Time Start
  std::time_t tstart = std::time(NULL);
  cout << "Start@UTC: " << ctime(&tstart) << endl;

  //5ns Clock
  //50% Duty Cycle
  //Starting at SimTime = 0ns
  //Starting with clk=true
  sc_clock ma_clk("ma_clk",SLOTTIME,SC_NS,0.5,0,SC_NS,true);
  sc_clock sl_clk("sl_clk",MODULEDELAY_ALL,SC_NS,0.5,0,SC_NS,true);
  sc_signal<bool> reset;
  sc_signal<bool> trigger[PP_INSTANCES+1];
  sc_signal<sc_uint<COUNTERWIDTH> > bitcount[PP_INSTANCES];
  sc_signal<bool> working[PP_INSTANCES];
  sc_signal<bool> run[PP_INSTANCES+1];

//sc_signal<bool> dummy;

//VCD File Logger
  sc_trace_file *fp;                         // VCD filepointer
  fp=sc_create_vcd_trace_file(VCD_OUT_FILE); // Create wave.vcd file
  sc_trace(fp,ma_clk,"MasterClock");
  sc_trace(fp,sl_clk,"SlaveClock");
  sc_trace(fp,reset,"Reset");

  sc_trace(fp,run,"Run");

//Modul-Instances Create PongMaster
  pongmaster* pm = new pongmaster("PongMaster");
  pm->clock(ma_clk);
  pm->reset(reset);
  pm->trigger_in(trigger[PP_INSTANCES]);
  pm->trigger_out(trigger[0]);
  pm->run(run[0]);

//Modul-Instances Create PingPong
  pingpong* pp[PP_INSTANCES];
  for(int ii=0; ii<PP_INSTANCES; ++ii){
    string name = "PingPong"+itos(ii);
    pp[ii] = new pingpong(name.c_str());
  }
  {
    string name;

//Modul-Instances Interconnect
    for(int ii=0; ii<PP_INSTANCES; ++ii){
      pp[ii]->reset(reset);
//---
      name = "TriggerLane"+itos(ii);
      sc_trace(fp,trigger[ii],name.c_str());
      pp[ii]->trigger_in(trigger[ii]);
      pp[ii]->trigger_out(trigger[ii+1]);
//---
      name = "Run"+itos(ii);
      sc_trace(fp,run[ii],name.c_str());
      pp[ii]->run_in(run[ii]);
      pp[ii]->run_out(run[ii+1]);
//---
      name = "Bitcount"+itos(ii);
      sc_trace(fp,bitcount[ii],name.c_str());
      pp[ii]->bitcount(bitcount[ii]);
//---
      name = "Working"+itos(ii);
      sc_trace(fp,working[ii],name.c_str());
      pp[ii]->working(working[ii]);
//---
    }
    name = "TriggerLane"+itos(PP_INSTANCES);
    sc_trace(fp,trigger[PP_INSTANCES],name.c_str());
  }

//Run-Simulation
  reset = 0;
  sc_start(0,SC_NS); // First time called will init schedular
  cout << "Simulating: " << SIMULATION_RESETDELAY << "ns" << endl;
  sc_start(SIMULATION_RESETDELAY,SC_NS);
  reset = 1;
  cout << "Simulating: " << SIMULATION_RESET << "ns" << endl;
  sc_start(SIMULATION_RESET,SC_NS);
  reset = 0;
  cout << "Simulating: " << MILESTONE1 << "ns" << endl;
  sc_start(MILESTONE1,SC_NS);
  reset = 1;
  cout << "Simulating: " << SIMULATION_RESET << "ns" << endl;
  sc_start(SIMULATION_RESET,SC_NS);
  reset = 0;
  cout << "Simulating: " << MILESTONE2 << "ns" << endl;
  sc_start(MILESTONE2,SC_NS);

  sc_close_vcd_trace_file(fp); // close trace

//Simulation Time
  sc_time simtime = sc_time_stamp();
  std::time_t tstop = std::time(NULL);
  cout << "Stop@UTC:  " << ctime(&tstop) << endl;
  cout << "Simulation Endtime [SystemC]: " << simtime << endl;
  cout << "Simulation Runtime [stdlib] : " << difftime(tstop,tstart) << " Seconds"<< endl;
  high_resolution_clock::time_point t2 = high_resolution_clock::now();
  duration<double> time_span = duration_cast<duration<double>>(t2 - t1);
  cout << "Simulation Runtime [HiRes]  : " << time_span.count() << " Seconds." << endl;

  return 0;
}
