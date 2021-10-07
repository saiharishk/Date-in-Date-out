# Date-in & Date-out

This verilog code takes a date as input and the number of days to be added to the date and gives the output date.  
It is assumed that each month has 30 days.

Inputs - Datein, N  
Output - Date-out  

N takes a maximum of 63 as input
Example outputs:  
  datein=1; N=15; dateout=16 
	datein=25;N=15; dateout=10 (of the next month)
	datein=28;N=10; dateout=8 (of the next month)
	datein=25;N=60; dateout=25 (of the next to next month)
	datein=30;N=63; dateout=3  (of the next to next to next month)
