
#ifndef _CONFIG_H_
#define _CONFIG_H_

#define PP_INSTANCES 16

//-----
#define SLOTBYTES              39
#define SLOTBITS              (8*SLOTBYTES)
#define BITTIME                5
#define BYTETIME              (8*BITTIME)
#define SLOTTIME              (SLOTBITS*BITTIME)
//-----
#define DATAWIDTH                5
#define DATAMAX                 31
#define DATAVOID              "XXXXX"
//-----
#define COUNTERWIDTH            12
#define COUNTERMAX            4095
#define COUNTERVOID           "XXXXXXXXXXXX"
//-----
#define MODULEDELAY_CABLE      20
#define MODULEDELAY_RX         180
#define MODULEDELAY_TX         100
#define MODULEDELAY_PU        (2*BYTETIME)
#define MODULEDELAY_IN        (MODULEDELAY_CABLE+MODULEDELAY_RX)
#define MODULEDELAY_WORK      (MODULEDELAY_IN+MODULEDELAY_PU)
#define MODULEDELAY_ALL       (MODULEDELAY_IN+MODULEDELAY_TX+MODULEDELAY_PU)
//-----
#define SIMULATION_RESETDELAY  25
#define SIMULATION_RESET       25
#define SIMULATION_RUNTIME1   (MODULEDELAY_ALL*PP_INSTANCES*250)
#define SIMULATION_RUNTIME2   (2*SIMULATION_RUNTIME1)
#define MILESTONE1            (SIMULATION_RUNTIME1-(SIMULATION_RESET+SIMULATION_RESETDELAY))
#define MILESTONE2            (SIMULATION_RUNTIME2-(SIMULATION_RUNTIME1+SIMULATION_RESET))
//-----

#endif
