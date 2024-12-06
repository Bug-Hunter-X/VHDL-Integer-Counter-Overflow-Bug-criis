```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fixed_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count : out std_logic_vector(3 downto 0)
  );
end entity fixed_counter;

architecture behavioral of fixed_counter is
  signal internal_count : std_logic_vector(3 downto 0) := "0000";
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= "0000";
    elsif rising_edge(clk) then
      internal_count <= std_logic_vector(unsigned(internal_count) + 1);
    end if;
  end process;
  count <= internal_count;
end architecture behavioral;
```