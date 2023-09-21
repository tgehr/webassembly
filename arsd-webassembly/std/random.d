module std.random;

import arsd.webassembly;

struct RndGen{
	void seed(long val){} // TODO
}
RndGen rndGen;

int uniform(string p:"[)")(int low, int high) {
	int max = high - low;
	return low + eval!int(q{ return Math.floor(Math.random() * $0); }, max);
}

int uniform(string p:"[]")(int low, int high) {
	return uniform(low, high+1);
}

double uniform(string p)(double low, double high) {
	double max = high - low;
	//return low + eval!double(q{ return Math.random() * $0; }, max); // TODO
	return low + eval!float(q{ return Math.random() * $0; }, max);
}
