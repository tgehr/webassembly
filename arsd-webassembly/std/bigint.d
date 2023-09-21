struct BigInt{
	long payload;
	this(long payload){ this.payload=payload; }
	this(BigInt other){ this.payload=other.payload; }
	this(string str){ this.payload=imported!"std.conv".to!long(str); }
	string toString(){ return imported!"std.conv".text(payload); }
	BigInt opUnary(string op)(){ return BigInt(mixin(op~" payload")); }
	BigInt opBinary(string op)(BigInt rhs){ return BigInt(mixin("payload "~op~" rhs.payload")); }
	BigInt opBinary(string op)(long rhs){ return BigInt(mixin("payload "~op~" rhs")); }
	BigInt opBinaryRight(string op)(long rhs){ return BigInt(mixin("rhs "~op~" payload")); }
	void opOpAssign(string op)(BigInt rhs){ mixin("payload "~op~"= rhs.payload;"); }
	void opOpAssign(string op)(long rhs){ mixin("payload "~op~"= rhs;"); }
	bool opCast(T:bool)(){ return !!payload; }
	long opCast(T:long)(){ return payload; }
	bool opCmp(BigInt rhs){ return payload<rhs.payload?-1:payload==rhs.payload?0:1; }
	bool opCmp(long rhs){ return payload<rhs?-1:payload==rhs?0:1; }
	bool opEquals(BigInt rhs){ return payload==rhs.payload; }
	bool opEquals(long rhs){ return payload==rhs; }
	bool opEqualsRight(long rhs){ return rhs==payload; }
	hash_t toHash(){ return paylod; }
}
