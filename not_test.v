
`timescale 1ns / 1ps

module not_test;

    // Inputs
    reg A;

    // Outputs
    wire Y;

    // Instantiate the AND gate
    not_design uut (
        .A(A), 
        .Y(Y)
    );

    // Test cases
    initial begin
        // Initialize inputs and apply test vectors
        A = 0;
        #10; // Wait for 10 ns

        A = 1;
        #10;

        // End the simulation
        $finish;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t, A = %b, Y = %b", $time, A, Y);
    end

endmodule












