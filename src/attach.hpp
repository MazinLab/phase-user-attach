#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"

#define N_PHASE 4
#define N_PHASEGROUPS 512

typedef ap_uint<9> phasegroup_t;
typedef ap_uint<7> pgroup256_t;

typedef unsigned long long uint64_t;
typedef ap_axiu<64,0,0,0> instream_t;
typedef ap_axiu<64,16,0,0> outstream_t;


void attach_user(hls::stream<instream_t> &in, hls::stream<outstream_t> &out);
