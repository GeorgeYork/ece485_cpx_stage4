
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    Port (
        a       : in  STD_LOGIC_VECTOR(31 downto 0);
        b       : in  STD_LOGIC_VECTOR(31 downto 0);
        op      : in  STD_LOGIC_VECTOR(3 downto 0);
        result  : out STD_LOGIC_VECTOR(31 downto 0)
    );
end alu;

architecture Behavioral of alu is
begin
    process(a, b, op)
    begin
        case op is
            when "0000" => result <= std_logic_vector(signed(a) + signed(b)); -- ADD
            when "0001" => result <= std_logic_vector(signed(a) - signed(b)); -- SUB
			when "0010" => result <= (others => '0'); -- AND, not implemented
			when "0011" => result <= (others => '0'); -- OR, not implemented
			when "0100" => result <= (others => '0'); -- XOR, not implemented
			when "0101" => result <= (others => '0'); -- SLL, not implemented
			when "0110" => result <= (others => '0'); -- SRL, not implemented
			when "0111" => result <= (others => '0'); -- SRA, not implemented
            when others => result <= (others => '0');
        end case;
    end process;
end Behavioral;
