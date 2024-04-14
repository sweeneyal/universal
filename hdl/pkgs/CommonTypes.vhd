library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package CommonTypes is
    
    subtype u8_t is unsigned(7 downto 0);
    subtype u16_t is unsigned(15 downto 0);
    subtype u24_t is unsigned(23 downto 0);
    subtype u32_t is unsigned(31 downto 0);
    subtype u64_t is unsigned(63 downto 0);

    subtype s8_t is signed(7 downto 0);
    subtype s16_t is signed(15 downto 0);
    subtype s24_t is signed(23 downto 0);
    subtype s32_t is signed(31 downto 0);
    subtype s64_t is signed(63 downto 0);

    function to_u8(val : natural) return u8_t;
    function to_u16(val : natural) return u16_t;
    function to_u24(val : natural) return u24_t;
    function to_u32(val : natural) return u32_t;
    function to_u64(val : natural) return u64_t;

    function to_s8(val : integer) return s8_t;
    function to_s16(val : integer) return s16_t;
    function to_s24(val : integer) return s24_t;
    function to_s32(val : integer) return s32_t;
    function to_s64(val : integer) return s64_t;

    function to_u8(val : std_logic_vector) return u8_t;
    function to_u16(val : std_logic_vector) return u16_t;
    function to_u24(val : std_logic_vector) return u24_t;
    function to_u32(val : std_logic_vector) return u32_t;
    function to_u64(val : std_logic_vector) return u64_t;

    function to_s8(val : std_logic_vector) return s8_t;
    function to_s16(val : std_logic_vector) return s16_t;
    function to_s24(val : std_logic_vector) return s24_t;
    function to_s32(val : std_logic_vector) return s32_t;
    function to_s64(val : std_logic_vector) return s64_t;

    type u8_array_t is array (natural range <>) of u8_t;
    type u16_array_t is array (natural range <>) of u16_t;
    type u24_array_t is array (natural range <>) of u24_t;
    type u32_array_t is array (natural range <>) of u32_t;
    type u64_array_t is array (natural range <>) of u64_t;

    type s8_array_t is array (natural range <>) of s8_t;
    type s16_array_t is array (natural range <>) of s16_t;
    type s24_array_t is array (natural range <>) of s24_t;
    type s32_array_t is array (natural range <>) of s32_t;
    type s64_array_t is array (natural range <>) of s64_t;

    type std_logic_matrix_t is array (natural range <>) of std_logic_vector;
    
end package CommonTypes;

package body CommonTypes is
    
    function to_u8(val : natural) return u8_t is
    begin
        return to_unsigned(val, 8);
    end function;

    function to_u16(val : natural) return u16_t is
    begin
        return to_unsigned(val, 16);
    end function;

    function to_u24(val : natural) return u24_t is
    begin
        return to_unsigned(val, 24);
    end function;

    function to_u32(val : natural) return u32_t is
    begin
        return to_unsigned(val, 32);
    end function;

    function to_u64(val : natural) return u64_t is
    begin
        return to_unsigned(val, 64);
    end function;

    function to_s8(val : integer) return s8_t is
    begin
        return to_signed(val, 8);
    end function;

    function to_s16(val : integer) return s16_t is
    begin
        return to_signed(val, 16);
    end function;

    function to_s24(val : integer) return s24_t is
    begin
        return to_signed(val, 24);
    end function;

    function to_s32(val : integer) return s32_t is
    begin
        return to_signed(val, 32);
    end function;

    function to_s64(val : integer) return s64_t is
    begin
        return to_signed(val, 64);
    end function;

    function to_u8(val : std_logic_vector) return u8_t is
    begin
        return resize(unsigned(val), 8);
    end function;

    function to_u16(val : std_logic_vector) return u16_t is
    begin
        return resize(unsigned(val), 16);
    end function;

    function to_u24(val : std_logic_vector) return u24_t is
    begin
        return resize(unsigned(val), 24);
    end function;

    function to_u32(val : std_logic_vector) return u32_t is
    begin
        return resize(unsigned(val), 32);
    end function;

    function to_u64(val : std_logic_vector) return u64_t is
    begin
        return resize(unsigned(val), 64);
    end function;

    function to_s8(val : std_logic_vector) return s8_t is
    begin
        return resize(signed(val), 8);
    end function;
    function to_s16(val : std_logic_vector) return s16_t is
    begin
        return resize(signed(val), 16);
    end function;
    function to_s24(val : std_logic_vector) return s24_t is
    begin
        return resize(signed(val), 24);
    end function;
    function to_s32(val : std_logic_vector) return s32_t is
    begin
        return resize(signed(val), 32);
    end function;
    function to_s64(val : std_logic_vector) return s64_t is
    begin
        return resize(signed(val), 64);
    end function;
    
end package body CommonTypes;