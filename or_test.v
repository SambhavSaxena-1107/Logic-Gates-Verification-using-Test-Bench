`timescale 1ns / 1ps

module or_test;

    // Inputs
    reg A;
    reg B;

    // Outputs
    wire Y;

    // Instantiate the AND gate
    or_design uut (
        .A(A), 
        .B(B), 
        .Y(Y)
    );

    // Test cases
    initial begin
        // Initialize inputs and apply test vectors
        A = 0; B = 0;
        #10; // Wait for 10 ns

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        // End the simulation
        $finish;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t, A = %b, B = %b, Y = %b", $time, A, B, Y);
    end

endmodule


