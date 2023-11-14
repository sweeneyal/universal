library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package CommonTypesPkg is
    
    subtype u8_t is unsigned(7 downto 0);
    subtype u16_t is unsigned(15 downto 0);
    subtype u32_t is unsigned(32 downto 0);
    subtype u64_t is unsigned(64 downto 0);

    subtype s8_t is signed(7 downto 0);
    subtype s16_t is signed(15 downto 0);
    subtype s32_t is signed(32 downto 0);
    subtype s64_t is signed(64 downto 0);

    type u8_array_t is array (natural range <>) of u8_t;
    type u16_array_t is array (natural range <>) of u16_t;
    type u32_array_t is array (natural range <>) of u32_t;
    type u64_array_t is array (natural range <>) of u64_t;

    type s8_array_t is array (natural range <>) of s8_t;
    type s16_array_t is array (natural range <>) of s16_t;
    type s32_array_t is array (natural range <>) of s32_t;
    type s64_array_t is array (natural range <>) of s64_t;
    
end package CommonTypesPkg;