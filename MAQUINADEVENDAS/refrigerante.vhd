LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY refrigerante IS
	PORT (ck, clk, reset, reset_db, botao, c_10, c_25, c_50, c_100 :IN STD_LOGIC;
				q: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END refrigerante;

ARCHITECTURE arch OF refrigerante IS
	COMPONENT debouncer
	PORT (
		clk_fpga, rst_debouncer, input_key: IN STD_LOGIC;
		out_key: OUT STD_LOGIC);
	END COMPONENT;
	
	TYPE st IS (caso_a, caso_r);
	SIGNAL estado : st;
	SIGNAL out_clk: STD_LOGIC;
	
BEGIN	
	
	D1: debouncer PORT MAP(clk_fpga => ck, rst_debouncer => reset_db, input_key => clk, out_key => out_clk);
		
	PROCESS(out_clk, reset, botao)
		VARIABLE d: INTEGER;
		VARIABLE aux: INTEGER;
		VARIABLE saida: STD_LOGIC_VECTOR(1 DOWNTO 0);
	BEGIN 
		IF reset = '1' THEN 
			d:=0;
			saida:="00";
			estado <= caso_r;
		ELSIF botao = '0' THEN
			IF aux = 100 THEN
				saida:="10";
			ELSIF aux = 0 THEN 
				saida:="00";
			ELSE 
				saida:="01";
			END IF;
			d:=0;
			estado<=caso_r;
		ELSIF rising_edge(out_clk) THEN
			d := (10*to_integer(unsigned'("" & c_10)))+(25*to_integer(unsigned'("" & c_25)))+(50*to_integer(unsigned'("" & c_50)))+(100*to_integer(unsigned'("" & c_100)))+d;
			aux := d;
			CASE estado IS
				WHEN caso_r =>
					saida:="00";
					IF (d/=0) THEN 
						estado<=caso_a; 
					END IF;
				WHEN caso_a =>
					IF (d>100) THEN 
						saida:="01";
						d:=0;
						estado<=caso_r;
					ELSE 
						saida:="00";
					END IF;
			END CASE;
		END IF;
		q<=saida;
		
	END PROCESS;
END arch;