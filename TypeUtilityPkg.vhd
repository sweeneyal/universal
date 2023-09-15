library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package TypeUtilityPkg is

    subtype byte is std_logic_vector(7 downto 0);
    
    function ToStdLogicVector(intVal : integer; size : natural) return std_logic_vector;
    function ToInteger(vector : std_logic_vector) return integer;
    function CheckStringEqual(str1 : string; str2 : string) return boolean;
    function ToByte(char : character) return byte;
    function ToCharacter(by : byte) return character;
    
end package TypeUtilityPkg;

package body TypeUtilityPkg is
    
    function ToStdLogicVector(intVal : integer; size : natural) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(intVal, size));
    end function;

    function ToInteger(vector : std_logic_vector) return integer is
    begin
        return to_integer(unsigned(vector));
    end function;

    function CheckStringEqual(str1 : string; str2 : string) return boolean is
    begin
        if str1'length /= str2'length then
            return false;
        else
            return (str1 = str2);
        end if;
    end function;

    function ToByte(char : character) return byte is
    begin
        return byte(to_unsigned(character'pos(char), 8));
    end function;

    function ToCharacter(by : byte) return character is
    begin
        return character'val(to_integer(unsigned(by)));
    end function;
    
end package body TypeUtilityPkg;