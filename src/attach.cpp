#include "attach.hpp"
void attach_user(hls::stream<instream_t> &in, hls::stream<outstream_t> &out){
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS INTERFACE mode=axis register_mode=off port=in //register
#pragma HLS INTERFACE mode=axis register_mode=off port=out //register
#pragma HLS PIPELINE II=1

	static phasegroup_t x;
	instream_t in_tmp;
	outstream_t out_tmp;

	in_tmp = in.read();
	out_tmp.user=x;
	out_tmp.last=in_tmp.last;
	out_tmp.data=in_tmp.data;
	out_tmp.keep=-1;
	out.write(out_tmp);

	x = in_tmp.last ? phasegroup_t(0):phasegroup_t(x+1);
}
