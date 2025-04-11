library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevador is
    port(
			clk, reset: in std_logic;
			andarReq: in std_logic_vector(3 downto 0);
			andarReqD: out std_logic_vector(6 downto 0);
			andarReqU: out std_logic_vector(6 downto 0);
			andarAtualD: out std_logic_vector(6 downto 0);
			andarAtualU: out std_logic_vector(6 downto 0);
			estadoAtual: out std_logic_vector(1 downto 0)
		  );
end elevador;

architecture behaviour of elevador is
    type tipo is (parado, subindo, descendo);
    signal estado: tipo;
	 
	 function display7seg (num: integer) return std_logic_vector is
    begin
        case num is
            when 0 => return "0000001";
				when 1 => return "1001111";
				when 2 => return "0010010";
				when 3 => return "0000110";
				when 4 => return "1001100";
				when 5 => return "0100100";
				when 6 => return "0100000";
				when 7 => return "0001111";
				when 8 => return "0000000";
				when 9 => return "0000100";
				when others => return "1111111"; -- apagado
				
        end case;
    end function;
	 
begin
	process(clk, reset)
			variable andar1: integer;
			variable andar2: integer;
			variable dezena : integer := 0;
			variable unidade : integer := 0;
		begin
			if reset = '1' then
				estado <= parado;
				estadoAtual <= "01";
				andar1 := 0;
				andarAtualD <= display7seg(0);
				andarAtualU <= display7seg(0);
				andar2 := 0;
				
			elsif rising_edge(clk) then
				case estado is
				
					when parado =>
						andar2 := to_integer(unsigned(andarReq));
						andarReqD <= display7seg((andar2)/10);
						andarReqU <= display7seg((andar2) mod 10);
						
						if andar2 > andar1 then
							estado <= subindo;
						elsif andar2 < andar1 then
							estado <= descendo;
						else 
							estado <= parado;
						end if;
						
					when subindo =>
						if andar2 > andar1 then
							andar1 := andar1 + 1;
						elsif andar2 = andar1 then
							estado <= parado;
						end if;
						
					when descendo =>
						if andar2 < andar1 then
							andar1 := andar1 - 1;
						elsif andar2 = andar1 then
							estado <= parado;
						end if;
						
				end case;
				
				andarAtualD <= display7seg((andar1)/10);
				andarAtualU <= display7seg((andar1) mod 10);
				
				case estado is
					when parado =>   estadoAtual <= "01";
					when subindo =>  estadoAtual <= "10";
					when descendo => estadoAtual <= "11";
				end case;
			
		end if;
	end process;
end behaviour;
