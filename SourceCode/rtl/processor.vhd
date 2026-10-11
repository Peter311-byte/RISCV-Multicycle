library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processor is
    port(
        CLK : in std_logic
    );  -- removed trailing comma, added closing paren properly
end entity processor;

architecture structural of processor is  -- fixed "strucutral" typo

    component datapath is
        port(
            Clk      : in std_logic;
            AddnSub  : in std_logic;
            ExtWord  : in std_logic;
            PCwr     : in std_logic;
            InstAddr : in std_logic;
            MemSize  : in std_logic_vector(2 downto 0);
            MemWr    : in std_logic;
            MemRd    : in std_logic;
            IRWr     : in std_logic;
            RegWr    : in std_logic;
            RegInSrc : in std_logic;
            ExuSrcB  : in std_logic_vector(2 downto 0);
            ExuSrcA  : in std_logic;
            FuncClass: in std_logic_vector(1 downto 0);
            ShiftFn  : in std_logic_vector(1 downto 0);
            LogicFn  : in std_logic_vector(1 downto 0);
            PCSrc    : in std_logic_vector(1 downto 0);
            Opcode   : out std_logic_vector(6 downto 0);
            funct7   : out std_logic_vector(6 downto 0);
            funct3   : out std_logic_vector(2 downto 0);
            Zero     : out std_logic;
            AltB     : out std_logic;
            AltBu    : out std_logic
        );
    end component datapath;

    component ControlUnit is
        port(
            Clk      : in std_logic;
            Opcode   : in std_logic_vector(6 downto 0);
            funct7   : in std_logic_vector(6 downto 0);
            funct3   : in std_logic_vector(2 downto 0);
            Zero     : in std_logic;
            AltB     : in std_logic;
            AltBu    : in std_logic;
            AddnSub  : out std_logic;
            ExtWord  : out std_logic;
            PCwr     : out std_logic;
            InstAddr : out std_logic;
            MemSize  : out std_logic_vector(2 downto 0);
            MemWr    : out std_logic;
            MemRd    : out std_logic;
            IRWr     : out std_logic;
            RegWr    : out std_logic;
            RegInSrc : out std_logic;
            ExuSrcB  : out std_logic_vector(2 downto 0);
            ExuSrcA  : out std_logic;
            FuncClass: out std_logic_vector(1 downto 0);
            ShiftFn  : out std_logic_vector(1 downto 0);
            LogicFn  : out std_logic_vector(1 downto 0);
            PCSrc    : out std_logic_vector(1 downto 0)
        );
    end component ControlUnit;

    -- signals
    signal Opcode_p    : std_logic_vector(6 downto 0);
    signal funct7_p    : std_logic_vector(6 downto 0);
    signal funct3_p    : std_logic_vector(2 downto 0);
    signal Zero_p      : std_logic;
    signal AltB_p      : std_logic;
    signal AltBu_p     : std_logic;
    signal AddnSub_p   : std_logic;
    signal ExtWord_p   : std_logic;
    signal PCwr_p      : std_logic;
    signal InstAddr_p  : std_logic;
    signal MemSize_p   : std_logic_vector(2 downto 0);
    signal MemWr_p     : std_logic;
    signal MemRd_p     : std_logic;
    signal IRWr_p      : std_logic;
    signal RegWr_p     : std_logic;  -- fixed "RegWr-p" (hyphen → underscore)
    signal RegInSrc_p  : std_logic;
    signal ExuSrcB_p   : std_logic_vector(2 downto 0);
    signal ExuSrcA_p   : std_logic;
    signal FuncClass_p : std_logic_vector(1 downto 0);
    signal ShiftFn_p   : std_logic_vector(1 downto 0);
    signal LogicFn_p   : std_logic_vector(1 downto 0);
    signal PCSrc_p     : std_logic_vector(1 downto 0);

begin

    d0: datapath port map(
        Clk      => CLK,
        AddnSub  => AddnSub_p,
        ExtWord  => ExtWord_p,
        PCwr     => PCwr_p,
        InstAddr => InstAddr_p,
        MemSize  => MemSize_p,
        MemWr    => MemWr_p,
        MemRd    => MemRd_p,
        IRWr     => IRWr_p,
        RegWr    => RegWr_p,
        RegInSrc => RegInSrc_p,
        ExuSrcB  => ExuSrcB_p,
        ExuSrcA  => ExuSrcA_p,
        FuncClass=> FuncClass_p,
        ShiftFn  => ShiftFn_p,
        LogicFn  => LogicFn_p,
        PCSrc    => PCSrc_p,
        Opcode   => Opcode_p,
        funct7   => funct7_p,
        funct3   => funct3_p,
        Zero     => Zero_p,
        AltB     => AltB_p,
        AltBu    => AltBu_p
    );

    cu0: ControlUnit port map(
        Clk      => CLK,
        Opcode   => Opcode_p,
        funct7   => funct7_p,
        funct3   => funct3_p,
        Zero     => Zero_p,
        AltB     => AltB_p,
        AltBu    => AltBu_p,
        AddnSub  => AddnSub_p,
        ExtWord  => ExtWord_p,
        PCwr     => PCwr_p,
        InstAddr => InstAddr_p,
        MemSize  => MemSize_p,
        MemWr    => MemWr_p,
        MemRd    => MemRd_p,
        IRWr     => IRWr_p,
        RegWr    => RegWr_p,
        RegInSrc => RegInSrc_p,
        ExuSrcB  => ExuSrcB_p,
        ExuSrcA  => ExuSrcA_p,
        FuncClass=> FuncClass_p,
        ShiftFn  => ShiftFn_p,
        LogicFn  => LogicFn_p,
        PCSrc    => PCSrc_p
    );

end architecture structural;