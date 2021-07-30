module Counter1_181(
	//input
	input		Clk,Rst_n,
	input		Counter_En,
	//output
	output	Flag
);
	//Parameters
	parameter Data_Width = 32;


//wire define


//reg define
	reg	[ Data_Width - 1 : 0 ]	Counter;

//RTL

always @(posedge Clk,negedge Rst_n)
	if(!Rst_n)
		Counter <= 0;
	else if(Counter_En)
		Counter <= 32'd232455096;
	else if(Counter[ Data_Width - 1 ] != 1'b1)
		Counter <= Counter - 1'b1;
		

assign Flag = Counter[ Data_Width - 1 ];

endmodule


module Counter3_181(
	//input
	input		Clk,Rst_n,
	input		Counter_En,
	//output
	output	Flag
);
//Parameters
parameter Data_Width = 32;

//wire define


//reg define
	reg	[ Data_Width - 1 : 0 ]	Counter;

//RTL

always @(posedge Clk,negedge Rst_n)
	if( !Rst_n )
		Counter <= 0;
	else if( Counter_En && Counter[Data_Width - 1] != 1 )
		Counter <= Counter - 1'b1;
	else
		Counter <= 32'd232455096;
		
assign Flag = Counter[ Data_Width - 1 ];


endmodule


module Counter4_181(
	//input
	input		Clk,Rst_n,
	input		Counter_En,
	//output
	output	Flag
);
	//Parameters
	parameter Data_Width = 32;
	
//wire define


//reg define
	reg	[ Data_Width - 1 :0]	Counter;

//RTL

always @(posedge Clk,negedge Rst_n)
	if(!Rst_n)
		Counter <= 0;
	else if(Counter_En && Counter[ Data_Width - 1 ] != 1'b1)
		Counter <= Counter + 1'b1;
	else
		Counter <= 32'hFFFFFFFF - 32'd232455096;
		
assign Flag = Counter[ Data_Width - 1 ];


endmodule


module Counter5_181(
	//input
	input		Clk,Rst_n,
	input		Counter_En,
	//output
	output	Flag
);
//Parameters
parameter Data_Width = 32;

//wire define


//reg define
	reg	[ Data_Width - 1 : 0 ]	Counter;

//RTL

always @(posedge Clk,negedge Rst_n)
	if( !Rst_n )
		Counter <= 0;
	else if( Counter_En && Counter != 0 )
		Counter <= Counter - 1'b1;
	else
		Counter <= 32'd232455096;
		
assign Flag = Counter[ Data_Width - 1 ];


endmodule



