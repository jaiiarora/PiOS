#ifndef _P_GPIO_H
#define _P_GPIO_H

#include "peripherals/base.h"

//now define the peripheral addresses
//gpio pins need to be enabled first before enabling uart


#define GPFSEL1 (PBASE + 0x200004)
#define GPSET0 (PBASE + 0x20001C)
#define GPCLR0 (PBASE + 0x200028)
#define GPPUD (PBASE + 0x200094)
#define GPPUDCLK0 (PBASE + 0x200098)

#endif
