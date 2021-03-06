#ifndef PHIOSTATS_H
#define PHIOSTATS_H

#include<stdlib.h> /* size_t */

#ifdef __cplusplus
extern "C" {
#endif
void phastaio_initStats();
void phastaio_addReadBytes(size_t bytes);
void phastaio_addWriteBytes(size_t bytes);
void phastaio_addWriteTime(double time);
void phastaio_addReadTime(double time);
void phastaio_addOpenTime(double time);
void phastaio_addCloseTime(double time);
void phastaio_printStats();
#ifdef __cplusplus
}
#endif

#endif
