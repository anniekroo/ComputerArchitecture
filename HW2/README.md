# Naming Schemes:  
In this repo are 3 verilog schematics named decoder.v, multiplexer.v, and adder.v. In addition there are 3 test benches to run these schematics: decoder.t.v, multiplexer.t.v, and adder.t.v. There are also scripts used to run the tests named hw2decode, hw2multi, and hw2add. to run one of the schematics on a test bench simply use the commands:  
./hw2decode, ./hw2add, or ./hw2multi  
# Decoder:   
To create a structural decoder in Verilog, I aimed to recreate the following circuit diagram.
![Alt text](/schematic/decode_schem.png?raw=true "Decoder schematic (from All about circuits)")
I then verified that my decoder worked by running the provided test bench on my circuit and
getting out the following truth table:  

En A0 A1| O0 O1 O2 O3 | Expected Output  
0  0  0 |  0  0  0  0 | All false  
0  1  0 |  0  0  0  0 | All false  
0  0  1 |  0  0  0  0 | All false    
0  1  1 |  0  0  0  0 | All false  
1  1  0 |  0  1  0  0 | O1 Only  
1  0  0 |  1  0  0  0 | O0 Only    
1  0  1 |  0  0  1  0 | O2 Only  
1  1  1 |  0  0  0  1 | O3 Only  

This truth table shows the device working as expected. To ensure that the test
bench was set up correctly I tried to run the provided behavioral model on the
test bench which similarly gave the the truth table:  
En A0 A1| O0 O1 O2 O3 | Expected Output    
0  0  0 |  0  0  0  0 | All false  
0  1  0 |  0  0  0  0 | All false    
0  0  1 |  0  0  0  0 | All false  
0  1  1 |  0  0  0  0 | All false  
1  0  0 |  1  0  0  0 | O0 Only  
1  1  0 |  0  1  0  0 | O1 Only  
1  0  1 |  0  0  1  0 | O2 Only  
1  1  1 |  0  0  0  1 | O3 Only  
Because these two are identical I concluded that my device was working as expected.
Then I looked into the gate delay propagation using GTK. From this, I got the following
output graph.  
![Alt text](/decoderGTK.png?raw=true "Decoder Gate Delay")

# Multiplexer:
To create a structural multiplexer in Verilog, I aimed to recreate the following circuit diagram.
![Alt text](/schematic/multiplex_schem.png?raw=true "Multiplexer schematic (from TutorialsPoint)")
I then verified that my multiplexer worked by running my file on a test bench that I created to test every case of inputs. This results in the following truth table:  

En A0 A1| O0 O1 O2 O3 | Expected Output  
i0 i1 i2 i3| A0 A1|Out| Expected Output  
0  0  0  0 | 0  1 | 0 | False
0  0  0  0 | 1  0 | 0 | False
0  0  0  0 | 0  0 | 0 | False    
0  0  0  0 | 1  1 | 0 | False  
1  0  0  0 | 0  1 | 0 | False
1  0  0  0 | 0  0 | 1 | True    
1  0  0  0 | 1  0 | 0 | False  
0  1  0  0 | 0  0 | 0 | False
0  1  0  0 | 0  1 | 0 | False
0  1  0  0 | 1  0 | 1 | True
0  1  0  0 | 1  1 | 0 | False
0  0  1  0 | 0  0 | 0 | False
0  0  1  0 | 0  1 | 1 | True
1  0  0  0 | 1  1 | 0 | False            
0  0  1  0 | 1  0 | 0 | False  
0  0  1  0 | 1  1 | 0 | False  
0  0  0  1 | 0  0 | 0 | False  
0  0  0  1 | 0  1 | 0 | False  
0  0  0  1 | 1  0 | 0 | False  
0  0  0  1 | 1  1 | 1 | True  
0  0  1  1 | 0  0 | 0 | False  
0  0  1  1 | 0  1 | 1 | True  
0  0  1  1 | 1  0 | 0 | False  
0  0  1  1 | 1  1 | 1 | True  
0  1  1  0 | 0  0 | 0 | False  
0  1  1  0 | 0  1 | 1 | True  
0  1  1  0 | 1  0 | 1 | True  
1  1  0  0 | 0  0 | 1 | True
0  1  1  0 | 1  1 | 0 | False    
1  1  0  0 | 1  0 | 1 | True
1  1  0  0 | 1  1 | 0 | False
1  1  0  0 | 0  1 | 0 | False      
1  0  0  1 | 0  0 | 1 | True  
1  0  0  1 | 0  1 | 0 | False  
1  0  0  1 | 1  1 | 1 | True
1  0  0  1 | 1  0 | 0 | False    
0  1  0  1 | 0  0 | 0 | False  
0  1  0  1 | 1  0 | 1 | True
0  1  0  1 | 1  1 | 1 | True
1  0  1  0 | 0  0 | 1 | True
0  1  0  1 | 0  1 | 0 | False      
1  0  1  0 | 0  1 | 1 | True  
1  0  1  0 | 1  0 | 0 | False  
1  0  1  0 | 1  1 | 0 | False  
1  1  1  0 | 0  0 | 1 | True  
1  1  1  0 | 1  0 | 1 | True
1  1  1  0 | 1  1 | 0 | False
1  1  0  1 | 0  0 | 1 | True
1  1  0  1 | 0  1 | 0 | False
1  1  0  1 | 1  0 | 1 | True
1  1  0  1 | 1  1 | 1 | True
1  1  1  0 | 0  1 | 1 | True            
1  0  1  1 | 0  0 | 1 | True  
1  0  1  1 | 0  1 | 1 | True  
1  0  1  1 | 1  0 | 0 | False  
1  0  1  1 | 1  1 | 1 | True  
0  1  1  1 | 0  0 | 0 | False  
0  1  1  1 | 0  1 | 1 | True  
0  1  1  1 | 1  0 | 1 | True  
0  1  1  1 | 1  1 | 1 | True  
1  1  1  1 | 0  0 | 1 | True  
1  1  1  1 | 0  1 | 1 | True  
1  1  1  1 | 1  0 | 1 | True  
1  1  1  1 | 1  1 | 1 | True  


This truth table shows the device working as expected as the output results match the expected output. To ensure that the test bench was set up correctly I tried to run the provided behavioral model on the
test bench which gave exactly the same truth table which I will not include again for ease of reading.  

Because these two are identical and because they both matched the expected output, I concluded that my device was working as expected.  
Then I looked into the gate delay propagation using GTK. From this, I got the following
output graph.  
![Alt text](/multiGTK.png?raw=true "Multiplexer Gate Delay")  

# Adder:  

To create a structural adder in Verilog, I aimed to recreate the following circuit diagram.  
![Alt text](https://github.com/anniekroo/ComputerArchitecture/tree/master/HW2/schematic/add_schem.jpg?raw=true "Full Adder schematic from ResearchGate")  
I then verified that my adder worked by running a test bench on my circuit that I modeleded after the example test bench and got out the following truth table:  

a  b in | Out Sum| Expected Output  
0  0  0 |  0   0 | All False  
0  0  1 |  0   1 | Sum Only  
1  0  1 |  1   0 | Carryout Only  
1  0  0 |  0   1 | Sum Only    
0  1  0 |  0   1 | Sum Only  
0  1  1 |  1   0 | Carryout Only  
1  1  0 |  1   0 | Carryout Only  
1  1  1 |  1   1 | Both True  


This truth table shows the device working as expected. To ensure that the test
bench was set up correctly I tried to run the provided behavioral model on the
test bench which similarly gave the the truth table:  

a  b in | Out Sum| Expected Output  
0  0  0 |  0   0 | All False  
1  0  0 |  0   1 | Sum Only
0  0  1 |  0   1 | Sum Only    
1  0  1 |  1   0 | Carryout Only  
0  1  0 |  0   1 | Sum Only  
0  1  1 |  1   0 | Carryout Only  
1  1  0 |  1   0 | Carryout Only  
1  1  1 |  1   1 | Both True  

Because these two are identical I concluded that my device was working as expected.
Then I looked into the gate delay propagation using GTK. From this, I got the following
output graph.  
![Alt text](/adderGTK.png?raw=true "Adder Gate Delay")  
