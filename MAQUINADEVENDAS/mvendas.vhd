library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity m is
    port(
        clk, reset, botao : IN std_logic;
        moedas : IN std_logic_vector(2 downto 0);
        estadoAtual : OUT std_logic_vector(1 downto 0);
		  moedasCentena: OUT std_logic_vector(6 downto 0);
        moedasDezena: OUT std_logic_vector(6 downto 0);
        moedasUnidade: OUT std_logic_vector(6 downto 0)
    );
end m;

-- moedas: 10c = 001; 25c = 010; 50c = 011; 100c = 100;
-- estado: recebendo = 01; devolvendo = 10; entregando refri = 11;

architecture behaviour of m is
    type tipo is (recebendo, devolvendo, entregando);
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
        variable qtdMoedas: integer := 0;
		  variable centena : integer := 0;
        variable dezena : integer := 0;
        variable unidade : integer := 0;
    begin
        if reset = '1' then
            estado <= recebendo;
            qtdmoedas := 0;
				centena := 0;
            dezena := 0;
            unidade := 0;
				moedasCentena <= display7seg(0);
            moedasDezena <= display7seg(0);
            moedasUnidade <= display7seg(0);
            estadoAtual <= "01";
        
        elsif rising_edge(clk) then
            case estado is
					
					when devolvendo =>
                    qtdMoedas := 0;
                    estado <= recebendo;
                
               when entregando =>
                    qtdMoedas := 0;
                    estado <= recebendo;
				
               when recebendo =>
                    -- recebendo moedas
                    case moedas is
                        when "001" => qtdMoedas := qtdMoedas + 10;
                        when "010" => qtdMoedas := qtdMoedas + 25;
                        when "011" => qtdMoedas := qtdMoedas + 50;
                        when "100" => qtdMoedas := qtdMoedas + 100;
								when others => null;
								
							end case;
						  
							if (qtdMoedas > 100) OR ((qtdMoedas < 100) AND (botao = '1')) then
								estado <= devolvendo;
							elsif (qtdMoedas = 100) AND (botao = '1') then
								estado <= entregando;
							else
								estado <= recebendo;
							end if;
				end case;
            
            -- determinando o digito para aparecer no display
				centena := qtdMoedas /100;
            dezena := (qtdMoedas mod 100)/10;
            unidade := qtdMoedas mod 10;
            
            -- Atualizações síncronas
				moedasCentena <= display7seg(centena);
            moedasDezena <= display7seg(dezena);
            moedasUnidade <= display7seg(unidade);
            
            -- Atualização do estado atual
            case estado is
                when recebendo =>   estadoAtual <= "01";
                when devolvendo =>  estadoAtual <= "10";
                when entregando =>  estadoAtual <= "11";
            end case;
				
        end if;
    end process;
end behaviour;