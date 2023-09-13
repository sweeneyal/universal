library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package TypeUtilityPkg is
    
    function ToStdLogicVector(intVal : integer; size : natural) return std_logic_vector;
    function ToInteger(vector : std_logic_vector) return integer;
    
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
    
end package body TypeUtilityPkg;