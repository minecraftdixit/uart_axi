// .prescale(125000000/(9600*8))
`timescale 1ns / 1ps

/*
 * AXI4-Stream UART
 */
 
 // here prescale meaning is 125MHZ and baud rate is 9600 so it is assumed to be running at 2 prescale 
module uart #
       (
           parameter DATA_WIDTH = 8
       )
       (
           input  wire                   s_axi_aclk,
           input  wire                   s_axi_aresetn,

           /*
            * AXI input
            */
           input  wire [DATA_WIDTH-1:0]  input_axis_tdata,
           input  wire                   input_axis_tvalid,
           output wire                   input_axis_tready,

           /*
            * AXI output
            */
           output wire [DATA_WIDTH-1:0]  output_axis_tdata,
           output wire                   output_axis_tvalid,
           input  wire                   output_axis_tready,

           /*
            * UART interface
            */
           input  wire                   rxd,
           output wire                   txd,

           /*
            * Status
            */
           output wire                   tx_busy,
           output wire                   rx_busy,
           output wire                   rx_overrun_error,
           output wire                   rx_frame_error

           /*
            * Configuration
            */
         //  input  wire [15:0]            prescale

       );

uart_tx #(
            .DATA_WIDTH(DATA_WIDTH)
        )
        uart_tx_inst (
            .s_axi_aclk(s_axi_aclk),
            .s_axi_aresetn(s_axi_aresetn),
            // axi input
            .input_axis_tdata(input_axis_tdata),
            .input_axis_tvalid(input_axis_tvalid),
            .input_axis_tready(input_axis_tready),
            // output
            .txd(txd),
            // status
            .busy(tx_busy),
            // configuration
            .prescale(100000000/(115200*8))
        );

uart_rx #(
            .DATA_WIDTH(DATA_WIDTH)
        )
        uart_rx_inst (
            .s_axi_aclk(s_axi_aclk),
            .s_axi_aresetn(s_axi_aresetn),
            // axi output
            .output_axis_tdata(output_axis_tdata),
            .output_axis_tvalid(output_axis_tvalid),
            .output_axis_tready(output_axis_tready),
            // input
            .rxd(rxd),
            // status
            .busy(rx_busy),
            .overrun_error(rx_overrun_error),
            .frame_error(rx_frame_error),
            // configuration
            .prescale(100000000/(115200*8))
        );

endmodule