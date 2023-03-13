 

`timescale 1ns / 1ps

/*
 * FPGA core logic
 */
module fpga_core 
(
    /*
     * Clock: 125MHz
     * Synchronous reset
     */
    input  wire       s_axi_aclk,
    input  wire       s_axi_aresetn,

    /*
     * GPIO
     */
//     input uart_rx_valid,
//     input uart_tx_valid,
//    input    uart_tx_tready ,
//    input    [3:0] sw,
//    output  [3:0]  led,

    /*
     * UART: 115200 bps, 8N1
     */
    input  wire       rxd,
    output wire       txd
);

reg [7:0] input_axis_tdata;
reg input_axis_tvalid;
wire input_axis_tready;

wire [7:0] output_axis_tdata;
wire output_axis_tvalid;
reg output_axis_tready;

uart uart_inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    // AXI input
    .input_axis_tdata(input_axis_tdata),
    .input_axis_tvalid(input_axis_tvalid),
    .input_axis_tready(input_axis_tready),
    // AXI output
    .output_axis_tdata(output_axis_tdata),
    .output_axis_tvalid(output_axis_tvalid),
    .output_axis_tready(output_axis_tready),
    // uart
    .rxd(rxd),
    .txd(txd),
    // status
    .tx_busy(),
    .rx_busy(),
    .rx_overrun_error(),
    .rx_frame_error()
    // configuration
    //.prescale(100000000/(115200*8))
);

//assign led[0] = sw[0];

//assign led[1] = sw[1];
//assign led[2] = sw[2];
//assign led[3] = sw[3];
//assign led[4] = sw[4];
//assign led[5] = sw[5];
//assign led[6] = sw[6];
//assign led[7] = sw[7];
////assign sw = input_axis_tdata;
//assign {sw[7], sw[6], sw[5], sw[4], sw[3], sw[2], sw[1], sw[0]} = input_axis_tdata;


always @(posedge s_axi_aclk or posedge s_axi_aresetn) begin
    if (s_axi_aresetn) begin
        input_axis_tdata <= 0;
        input_axis_tvalid <= 0;
        output_axis_tready <= 0;
    end else begin
        if (input_axis_tvalid) begin
            // attempting to transmit a byte
            // so can't receive one at the moment
            output_axis_tready <= 0;
            // if it has been received, then clear the valid flag
            if (input_axis_tready) begin
                input_axis_tvalid <= 0;
            end
        end else begin
            // ready to receive byte
            output_axis_tready <= 1;
            if (output_axis_tvalid) begin
                // got one, so make sure it gets the correct ready signal
                // (either clear it if it was set or set it if we just got a
                // byte out of waiting for the transmitter to send one)
                output_axis_tready <= ~output_axis_tready;
                // send byte back out
                input_axis_tdata <= output_axis_tdata;
                input_axis_tvalid <= 1;
            end
        end
    end
end
//assign  uart_rx_valid = output_axis_tvalid;
//assign  uart_tx_valid = input_axis_tvalid;
//assign  uart_tx_tready = input_axis_tready;

endmodule
