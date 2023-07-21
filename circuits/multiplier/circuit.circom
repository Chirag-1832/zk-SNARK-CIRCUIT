pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Multiplier2 () {  

   signal input a;
   signal input b;
   signal  x;
   signal  y;
   signal output z;

   component agate = AND();
   component ogate = OR();
   component ngate = NOT();

   agate.a <== a;
   agate.b <== b;
   x <== agate.out;

   ngate.in <== b;
   y <== ngate.out;

   ogate.a <== x;
   ogate.b <== y;
   z <== ogate.out

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}
}

component main = Multiplier2();
