

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use ieee.numeric_std.all;




entity trrafic is
generic(ClockFrequencyHz : integer);
port(
    clk : in std_logic;
	 rst : in std_logic;
	 n_red,
	 n_green,
	 n_yollow,
	 w_red,
	 w_green,
	 w_yollow : out std_logic 
  
);
end trrafic;

architecture Behavioral of trrafic is
 type state is (northnext, startnorth,north,stopnorth,westnext, startwest,west,stopwest);
 signal cstate : state;
 
 signal count : integer range 0 to ClockFrequencyHz * 60 ;
begin
 process(clk)
 begin
 if (rising_edge(clk)) then
   if rst = '1' then
	cstate<=northnext;
	 n_red <='1';
	 n_green<='0';
	 n_yollow<='0';
	 w_red<='1';
	 w_green<='0';
	 w_yollow<='0';
	 count <= 0;
	else 
	 n_red <='0'; 
	 n_green<='0';
	 n_yollow<='0';
	 w_red<='0';
	 w_green<='0';
	 w_yollow<='0';
	 count <= count +1;
	case cstate is
	when northnext =>
	 n_red <='1';
	 w_red<='1';
	 if count <= ClockFrequencyHz*5-1 then
	 count <= 0;
	    cstate <= startnorth;
		 end if;
	when startnorth =>
	 n_red <='1';
	 n_yollow <='1';
	 w_red<='1';
	 if count <= ClockFrequencyHz*5-1 then
	 count <= 0;
		 cstate <= north;
		 end if;
	when north =>
	n_green <='1';
	w_red <='1';
	if count <= ClockFrequencyHz*60-1 then
	 count <= 0;
		 cstate <= stopnorth;
		 end if;
	when stopnorth =>
	n_yollow <= '1';
	w_red <= '1';
	if count <= ClockFrequencyHz*5-1 then
	 count <= 0;
	    cstate <= westnext;
		 end if;
	when westnext =>
	 n_red <='1';
	 w_red<='1';
	 if count <= ClockFrequencyHz*5-1 then
	 count <= 0;
	    cstate <= startwest;
		 end if;
	when startwest =>
	n_red <='1';
	w_red <='1';
	w_yollow <='1';
	if count <= ClockFrequencyHz*5-1 then
	 count <= 0;
	    cstate <= west;
		 end if;
	when west =>
	n_red <='1';
	w_green <= '1';
	if count <= ClockFrequencyHz*60-1 then
	 count <= 0;
	    cstate <= stopwest;
		 end if;
	when stopwest =>
	n_red<='1';
	w_yollow <='1';
	if count <= ClockFrequencyHz*5-1 then
	 count <= 0;
		 cstate <= northnext;
		 end if;
	end case;
	 end if;
 end if;
 end process;
end Behavioral;
