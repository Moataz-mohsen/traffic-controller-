--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:11:13 08/05/2024
-- Design Name:   
-- Module Name:   D:/trraficcontroller/w.vhd
-- Project Name:  trraficcontroller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T20_TrafficLights
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY w IS
END w;
 
ARCHITECTURE behavior OF w IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT T20_TrafficLights
    PORT(
         Clk : IN  std_logic;
         nRst : IN  std_logic;
         NorthRed : OUT  std_logic;
         NorthYellow : OUT  std_logic;
         NorthGreen : OUT  std_logic;
         WestRed : OUT  std_logic;
         WestYellow : OUT  std_logic;
         WestGreen : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal nRst : std_logic := '0';

 	--Outputs
   signal NorthRed : std_logic;
   signal NorthYellow : std_logic;
   signal NorthGreen : std_logic;
   signal WestRed : std_logic;
   signal WestYellow : std_logic;
   signal WestGreen : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: T20_TrafficLights PORT MAP (
          Clk => Clk,
          nRst => nRst,
          NorthRed => NorthRed,
          NorthYellow => NorthYellow,
          NorthGreen => NorthGreen,
          WestRed => WestRed,
          WestYellow => WestYellow,
          WestGreen => WestGreen
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
