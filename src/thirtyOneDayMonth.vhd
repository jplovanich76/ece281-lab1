
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

-- entity name should match filename, this has been filled out for you  
entity thirtyOneDayMonth is 
  port(
	i_A : in std_logic; -- one of four inputs
	i_B : in std_logic;
	i_C : in std_logic;
	i_D : in std_logic;
	
	o_Y : out std_logic -- output
  );
end thirtyOneDayMonth;

architecture thirtyOneDayMonth_arch of thirtyOneDayMonth is 
	signal w_sel : std_logic_vector (2 downto 0); -- MUX sel
	-- include components declarations and signals	
	--signals internal to the architecture are declared and initialized such as w_sel
  
begin
	-- CONCURRENT STATEMENTS---------------------------------------
    o_Y <= (not i_A and i_D) or (i_A and not i_D); -- target <= expression (boolean logic)

end thirtyOneDayMonth_arch;
