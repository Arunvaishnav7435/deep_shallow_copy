//SV Topics : Classes
//Problem statement : to create a parameterized class which can be controlled to create deep or a shallow copy
//======================================

class one;		
  int a;
  extern function one copy();	//extern definition of copy function
endclass

    //we have to define copy function for deep copy
function one one :: copy();	//extern declaration of copy function
  copy = new;               //creating object for copying
  copy.a = this.a;          
  return copy;              //returning the object handle
endfunction

class two #(parameter bit sd = 1); //parameter to control deep and shallow copy
  int b;
  one c;                           //handle of another class
  extern function new();
  extern function two copy();
    extern function void print(string);  //print function
endclass

function two::new;
  c = new;
endfunction

function two two::copy();
  copy = new;
  copy.b = this.b;
  
  if(sd) begin                        //perform suitable copy based on parameter
    copy.c = this.c.copy();
    $display("\nDeep copy performed");
  end
  else begin
    copy.c = this.c;
    $display("\nShallow copy performed");
  end
  
  return copy;
endfunction

function void two::print(string ss);
  $display("%s.b = %0d and %s.c = %p", ss, this.b, ss, this.c);   
endfunction
    
module test;
  two #(1'b0) H1;   //1'b0 for shallow copy and 1'b1 for deep copy
  two H2;
  
  initial begin
    H1 = new;
    H2 = new;                   //object creation
    
    H1.b = 5;                   //assigning values
    H1.c.a = 10;
    
    H2 = H1.copy();             //calling copy function
    
    H1.print("H1");
    H2.print("H2");
    
    H1.c.a = 21;  //in shallow copy, this change will be visible in H2 as well
    
    H1.print("H1");
    H2.print("H2");  
    
    $finish();
  end
endmodule
