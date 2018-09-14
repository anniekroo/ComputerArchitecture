module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output AandB,       // Output intermediate gates
  output AorB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output nAornB,      // Single bit output, (~A)+(~B)

  output nAandB,      // Single bit output, ~(A*B)
  output nAorB       // Single bit output, ~(A+B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);   // AND gate produces nAandnB from nA and nB

  or orgate(AorB, A, B);          // OR gate produces AorB from A and B inputs
  not Orinv(nAorB, AorB);         // inverter is named Orinv, takes signal AorB as input and produces signal nAorB

  or orgate(nAornB, nA, nB);      // OR gate produces nAornB from nA and nB inputs

  and andgate(AandB,A,B);         // AND gate produces AandB from A and B inputs
  not Andinv(nAandB, AandB);      // inverter is named Andinv, takes signal AandB as inputs and produces signal nAandB

endmodule
