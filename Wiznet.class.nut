// SPI COMMANDS
const READ_COMMAND = 0x0F;
const WRITE_COMMAND = 0xF0;

// COMMON REGISTERS
// MR
const MODE = 0x0000;

//GWR
const GATEWAY_ADDR_0 = 0x0001;
const GATEWAY_ADDR_1 = 0x0002;
const GATEWAY_ADDR_2 = 0x0003;
const GATEWAY_ADDR_3 = 0x0004;

//SUBR
const SUBNET_MASK_ADDR_0 = 0x0005;
const SUBNET_MASK_ADDR_1 = 0x0006;
const SUBNET_MASK_ADDR_2 = 0x0007;
const SUBNET_MASK_ADDR_3 = 0x0008;

//SHAR
const SOURCE_HW_ADDR_0 = 0x0009;
const SOURCE_HW_ADDR_1 = 0x000A;
const SOURCE_HW_ADDR_2 = 0x000B;
const SOURCE_HW_ADDR_3 = 0x000C;
const SOURCE_HW_ADDR_4 = 0x000D;
const SOURCE_HW_ADDR_5 = 0x000E;

//SIPR
const SOURCE_IP_ADDR_0 = 0x000F;
const SOURCE_IP_ADDR_1 = 0x0010;
const SOURCE_IP_ADDR_2 = 0x0011;
const SOURCE_IP_ADDR_3 = 0x0012;

//IR
const INTERRUPT = 0x0015;
// IMR
const INTERRUPT_MASK = 0x0016;

// RTR
const RETRY_TIME_0 = 0x0017;
const RETRY_TIME_1 = 0x0018;
// RCR
const RETRY_COUNT = 0x0019;

// RMSR
const RX_MEM_SIZE = 0x001A;
// TMSR
const TX_MEM_SIZE = 0x001B;

// SOCKET 0 REGISTERS
const S0_MODE = 0x0400;
const S0_COMMAND = 0x0401;
const S0_INTERRUPT = 0x402;
const S0_STATUS = 0x0403;

const S0_SOURCE_PORT_0 = 0x0404;
const S0_SOURCE_PORT_1 = 0x0405;

const S0_DEST_HW_ADDR_0 = 0x0406;
const S0_DEST_HW_ADDR_1 = 0x0407;
const S0_DEST_HW_ADDR_2 = 0x0408;
const S0_DEST_HW_ADDR_3 = 0x0409;
const S0_DEST_HW_ADDR_4 = 0x040A;
const S0_DEST_HW_ADDR_5 = 0x040B;

const S0_DEST_IP_ADDR_0 = 0x040C;
const S0_DEST_IP_ADDR_1 = 0x040D;
const S0_DEST_IP_ADDR_2 = 0x040E;
const S0_DEST_IP_ADDR_3 = 0x040F;

const S0_DEST_PORT_0 = 0x0410;
const S0_DEST_PORT_1 = 0x0411;

// SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
const S0_TX_SIZE_R1 = 0x0420;
const S0_TX_SIZE_R2 = 0x0421;

// SOCKET TX WRITE POINTER
const S0_TX_WP_R1 = 0x0424;
const S0_TX_WP_R2 = 0x0425;

// SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
const S0_RX_SIZE_R1 = 0x0426;
const S0_RX_SIZE_R2 = 0x0427;

// SOCKET RX READ POINTER
const S0_RX_RP_R1 = 0x0428;
const S0_RX_RP_R2 = 0x0429;

// SOCKET 1 REGISTERS
const S1_MODE = 0x0500;
const S1_COMMAND = 0x0501;
const S1_INTERRUPT = 0x0502;
const S1_STATUS = 0x0503;

const S1_SOURCE_PORT_0 = 0x0504;
const S1_SOURCE_PORT_1 = 0x0505;

const S1_DEST_HW_ADDR_0 = 0x0506;
const S1_DEST_HW_ADDR_1 = 0x0507;
const S1_DEST_HW_ADDR_2 = 0x0508;
const S1_DEST_HW_ADDR_3 = 0x0509;
const S1_DEST_HW_ADDR_4 = 0x050A;
const S1_DEST_HW_ADDR_5 = 0x050B;

const S1_DEST_IP_ADDR_0 = 0x050C;
const S1_DEST_IP_ADDR_1 = 0x050D;
const S1_DEST_IP_ADDR_2 = 0x050E;
const S1_DEST_IP_ADDR_3 = 0x050F;

const S1_DEST_PORT_0 = 0x0510;
const S1_DEST_PORT_1 = 0x0511;

// SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
const S1_TX_SIZE_R1 = 0x0520;
const S1_TX_SIZE_R2 = 0x0521;

// SOCKET TX WRITE POINTER
const S1_TX_WP_R1 = 0x0524;
const S1_TX_WP_R2 = 0x0525;

// SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
const S1_RX_SIZE_R1 = 0x0526;
const S1_RX_SIZE_R2 = 0x0527;

// SOCKET RX READ POINTER
const S1_RX_RP_R1 = 0x0528;
const S1_RX_RP_R2 = 0x0529;

// SOCKET 2 REGISTERS
const S2_MODE = 0x0600;
const S2_COMMAND = 0x0601;
const S2_INTERRUPT = 0x0602;
const S2_STATUS = 0x0603;

const S2_SOURCE_PORT_0 = 0x0604;
const S2_SOURCE_PORT_1 = 0x0605;

const S2_DEST_HW_ADDR_0 = 0x0606;
const S2_DEST_HW_ADDR_1 = 0x0607;
const S2_DEST_HW_ADDR_2 = 0x0608;
const S2_DEST_HW_ADDR_3 = 0x0609;
const S2_DEST_HW_ADDR_4 = 0x060A;
const S2_DEST_HW_ADDR_5 = 0x060B;

const S2_DEST_IP_ADDR_0 = 0x060C;
const S2_DEST_IP_ADDR_1 = 0x060D;
const S2_DEST_IP_ADDR_2 = 0x060E;
const S2_DEST_IP_ADDR_3 = 0x060F;

const S2_DEST_PORT_0 = 0x0610;
const S2_DEST_PORT_1 = 0x0611;

// SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
const S2_TX_SIZE_R1 = 0x0620;
const S2_TX_SIZE_R2 = 0x0621;

// SOCKET TX WRITE POINTER
const S2_TX_WP_R1 = 0x0624;
const S2_TX_WP_R2 = 0x0625;

// SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
const S2_RX_SIZE_R1 = 0x0626;
const S2_RX_SIZE_R2 = 0x0627;

// SOCKET RX READ POINTER
const S2_RX_RP_R1 = 0x0628;
const S2_RX_RP_R2 = 0x0629;

// SOCKET 3 REGISTERS
const S3_MODE = 0x0700;
const S3_COMMAND = 0x0701;
const S3_INTERRUPT = 0x0702;
const S3_STATUS = 0x0703;

const S3_SOURCE_PORT_0 = 0x0704;
const S3_SOURCE_PORT_1 = 0x0705;

const S3_DEST_HW_ADDR_0 = 0x0706;
const S3_DEST_HW_ADDR_1 = 0x0707;
const S3_DEST_HW_ADDR_2 = 0x0708;
const S3_DEST_HW_ADDR_3 = 0x0709;
const S3_DEST_HW_ADDR_4 = 0x070A;
const S3_DEST_HW_ADDR_5 = 0x070B;

const S3_DEST_IP_ADDR_0 = 0x070C;
const S3_DEST_IP_ADDR_1 = 0x070D;
const S3_DEST_IP_ADDR_2 = 0x070E;
const S3_DEST_IP_ADDR_3 = 0x070F;

const S3_DEST_PORT_0 = 0x0710;
const S3_DEST_PORT_1 = 0x0711;

// SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
const S3_TX_SIZE_R1 = 0x0720;
const S3_TX_SIZE_R2 = 0x0721;

// SOCKET TX WRITE POINTER
const S3_TX_WP_R1 = 0x0724;
const S3_TX_WP_R2 = 0x0725;

// SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
const S3_RX_SIZE_R1 = 0x0726;
const S3_RX_SIZE_R2 = 0x0727;

// SOCKET RX READ POINTER
const S3_RX_RP_R1 = 0x0728;
const S3_RX_RP_R2 = 0x0729;

// MODES
const SW_RESET = 0x80;
const PING_BLOCK = 0x10;
const PPPoE = 0x08;
const ADDR_AUTO_INCR = 0x02;
const INDIR_BUS = 0x01;
const DEFAULT_MODE = 0x00;

// SOCKET MODES (Sn_MR)
const SOCKET_MODE_MULTI = 0x80;
const SOCKET_MODE_MAC_FILTER = 0x40;
const SOCKET_MODE_DELAY_ACK_MCv1 = 0x20;
const SOCKET_MODE_CLOSED = 0x00;
const SOCKET_MODE_TCP = 0x01;
const SOCKET_MODE_UDP = 0x02;
const SOCKET_MODE_IPRAW = 0x03;
const SOCKET_MODE_MACRAW = 0x04;
const SOCKET_MODE_PPPoE = 0x05;

// SOCKET COMMANDS (Sn_CR)
const SOCKET_OPEN = 0x01;
const SOCKET_LISTEN = 0x02;
const SOCKET_CONNECT = 0x04;
const SOCKET_DISCONNECT = 0x08;
const SOCKET_CLOSE = 0x10;
const SOCKET_SEND = 0x20;
const SOCKET_SEND_MAC = 0x21;
const SOCKET_SEND_KEEP = 0x22;
const SOCKET_RECEIVE = 0x40;

// SOCKET STATUS (Sn_SR)
const SOCKET_STATUS_CLOSED = 0x00;
const SOCKET_STATUS_INIT = 0x13;
const SOCKET_STATUS_LISTEN = 0x14;
const SOCKET_STATUS_ESTABLISHED = 0x17;
const SOCKET_STATUS_CLOSE_WAIT = 0x1C;
const SOCKET_STATUS_UDP = 0x22;
const SOCKET_STATUS_IPRAW = 0x32;
const SOCKET_STATUS_MACRAW = 0x42;
const SOCKET_STATUS_PPPOE = 0x5F;
const SOCKET_STATUS_SYNSENT = 0x15;
const SOCKET_STATUS_SYNRECV = 0x16;
const SOCKET_STATUS_FIN_WAIT = 0x18;
const SOCKET_STATUS_CLOSING = 0x1A;
const SOCKET_STATUS_TIME_WAIT = 0x1B;
const SOCKET_STATUS_LAST_ACK = 0x1D;
const SOCKET_STATUS_ARP = 0x01;

// INTERRUPT TYPES
const CONFLICT_INT_TYPE = 0x80;
const UNREACH_INT_TYPE = 0x40;
const PPPoE_INT_TYPE = 0x20;
const S3_INT_TYPE = 0x08;
const S2_INT_TYPE = 0x04;
const S1_INT_TYPE = 0x02;
const S0_INT_TYPE = 0x01;
const NONE_INT_TYPE = 0x00;

// SOCKET INTERRUPT TYPES
const SEND_COMPLETE_INT_TYPE = 0x10;
const TIMEOUT_INT_TYPE = 0x08;
const DATA_RECEIVED_INT_TYPE = 0x04;
const DISCONNECTED_INT_TYPE = 0x02;
const CONNECTED_INT_TYPE = 0x01;

// MEMORY CONSTANTS
const CHIP_BASE_ADDR = 0x00;
const RX_BASE = 0x6000;
const TX_BASE = 0x4000;
const CHIP_MAX_ADDR = 0x8000;

const MASK_1k = 0x03FF;
const MASK_2k = 0x07FF;
const MASK_4k = 0x0FFF;
const MASK_8k = 0x1FFF;

class W5100 {

    // MEMORY VARIABLES
    gS0_RX_MASK = null;
    gS1_RX_MASK = null;
    gS2_RX_MASK = null;
    gS3_RX_MASK = null;

    gS0_RX_BASE = null;
    gS1_RX_BASE = null;
    gS2_RX_BASE = null;
    gS3_RX_BASE = null;

    gS0_TX_MASK = null;
    gS1_TX_MASK = null;
    gS2_TX_MASK = null;
    gS3_TX_MASK = null;

    gS0_TX_BASE = null;
    gS1_TX_BASE = null;
    gS2_TX_BASE = null;
    gS3_TX_BASE = null;

    socketMemory = null;

    // CLASS VARIABLES
    _spi = null;
    _cs = null;
    _resetPin = null;

    /***************************************************************************
     * Constructor
     * Returns: null
     * Parameters:
     *      spi - configured spi bus, chip supports spi mode 0 or 3
     *      cs - configured chip select pin
     *      reset(optional) - configured reset pin
     **************************************************************************/
    constructor(spi, cs = null, resetPin = null) {
        _spi = spi;
        _cs = cs;
        _resetPin = resetPin;

        _setMemDefaults();
    }

    // GETTERS AND SETTERS
    // ---------------------------------------------

    /***************************************************************************
     * setMode
     * Returns: this
     * Parameters:
     *      mode - select mode using MODE constants or-ed together
     **************************************************************************/
    function setMode(mode) {
        writeReg(MODE, mode);
        return this;
    }

    /***************************************************************************
     * setSocketMode
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      mode - select mode using SOCKET_MODE constant
     **************************************************************************/
    function setSocketMode(socket, mode) {
        switch(socket) {
            case 0:
                writeReg(S0_MODE, mode);
                break;
            case 1:
                writeReg(S1_MODE, mode);
                break;
            case 2:
                writeReg(S2_MODE, mode);
                break;
            case 3:
                writeReg(S3_MODE, mode);
                break;
        }

        return this;
    }

    /***************************************************************************
     * setMemory
     * Returns: this
     * Parameters:
     *      memory - an array of four integers with the desired transmit memory
     *               allotment for each socket (supported values are 1, 2, 4, 8)
     *      dir - a string containing the transmition direction, accepted values
     *            are "tx" or "rx"
     **************************************************************************/
    function setMemory(memory, dir) {
        local reg = TX_MEM_SIZE;
        if (dir == "rx") reg = RX_MEM_SIZE;

        local bits = 0x00;
        local mask = 0x00;
        local total = 0;

        foreach (socket, mem_size in memory) {
            local socket_mem = 0x00;
            local bytes = 0;

            // adjust memory size if total memory is used up
            if ( total + mem_size > 8) {
                mem_size = 8 - total;
                if (mem_size < 0) mem_size = 0;
            }

            if(mem_size >= 8) {
                mem_size = 8;
                bytes = 8192;
                mask = MASK_8k;
            } else if (mem_size >= 4) {
                mem_size = 4;
                bytes = 4096;
                mask = MASK_4k;
            } else if (mem_size >= 2) {
                mem_size = 2;
                bytes = 2048;
                mask = MASK_2k;
            } else if (mem_size >= 1) {
                mem_size = 1;
                bytes = 1024;
                mask = MASK_1k;
            } else {
                mem_size = 0;
                bytes = 0;
                mask = 0x00;
            }

            total += mem_size;

            _setMask(socket, mask, dir);
            socketMemory[dir][socket] = bytes;

            socket_mem = _setSocketMemory(socket, mem_size);
            bits = bits | socket_mem;
        }

        _setSocketMemBase(dir);
        writeReg(reg, bits);
        return this;
    }

    /***************************************************************************
     * setGatewayAddr
     * Returns: this
     * Parameters:
     *      addr - an array of four integers with the gateway IP address
     **************************************************************************/
    function setGatewayAddr(addr) {
        writeReg(GATEWAY_ADDR_0, addr[0]);
        writeReg(GATEWAY_ADDR_1, addr[1]);
        writeReg(GATEWAY_ADDR_2, addr[2]);
        writeReg(GATEWAY_ADDR_3, addr[3]);
        return this;
    }

     /***************************************************************************
     * setSubnet
     * Returns: this
     * Parameters:
     *      addr - an array of four integers with the subnet address
     **************************************************************************/
    function setSubnet(addr) {
        writeReg(SUBNET_MASK_ADDR_0, addr[0]);
        writeReg(SUBNET_MASK_ADDR_1, addr[1]);
        writeReg(SUBNET_MASK_ADDR_2, addr[2]);
        writeReg(SUBNET_MASK_ADDR_3, addr[3]);
        return this;
    }

    /***************************************************************************
     * setSourceHWAddr
     * Returns: this
     * Parameters:
     *      addr - an array of 6 integers with the mac address for the
     *             source hardware
     **************************************************************************/
    function setSourceHWAddr(addr) {
        writeReg(SOURCE_HW_ADDR_0, addr[0]);
        writeReg(SOURCE_HW_ADDR_1, addr[1]);
        writeReg(SOURCE_HW_ADDR_2, addr[2]);
        writeReg(SOURCE_HW_ADDR_3, addr[3]);
        writeReg(SOURCE_HW_ADDR_4, addr[4]);
        writeReg(SOURCE_HW_ADDR_5, addr[5]);
        return this;
    }

    /***************************************************************************
     * setSourceIP
     * Returns: this
     * Parameters:
     *      addr - an array of 4 integers with the IP address for the
     *             source hardware
     **************************************************************************/
    function setSourceIP(addr) {
        writeReg(SOURCE_IP_ADDR_0, addr[0]);
        writeReg(SOURCE_IP_ADDR_1, addr[1]);
        writeReg(SOURCE_IP_ADDR_2, addr[2]);
        writeReg(SOURCE_IP_ADDR_3, addr[3]);
        return this;
    }

    /***************************************************************************
     * setSourceIP
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 2 integers with the port for the
     *             source hardware
     *             (ex: for port 4242, addr = [0x10, 0x92])
     **************************************************************************/
    function setSourcePort(socket, port) {
        switch(socket) {
            case 0:
                writeReg(S0_SOURCE_PORT_0, port[0]);
                writeReg(S0_SOURCE_PORT_1, port[1]);
                break;
            case 1:
                writeReg(S1_SOURCE_PORT_0, port[0]);
                writeReg(S1_SOURCE_PORT_1, port[1]);
                break;
            case 2:
                writeReg(S2_SOURCE_PORT_0, port[0]);
                writeReg(S2_SOURCE_PORT_1, port[1]);
                break;
            case 3:
                writeReg(S3_SOURCE_PORT_0, port[0]);
                writeReg(S3_SOURCE_PORT_1, port[1]);
                break;
        }
        return this;
    }

    /***************************************************************************
     * setDestHWAddr
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 6 integers with the mac address for the
     *             destination hardware
     **************************************************************************/
    function setDestHWAddr(socket, addr) {
        switch(socket) {
            case 0:
                writeReg(S0_DEST_HW_ADDR_0, addr[0]);
                writeReg(S0_DEST_HW_ADDR_1, addr[1]);
                writeReg(S0_DEST_HW_ADDR_2, addr[2]);
                writeReg(S0_DEST_HW_ADDR_3, addr[3]);
                writeReg(S0_DEST_HW_ADDR_4, addr[4]);
                writeReg(S0_DEST_HW_ADDR_5, addr[5]);
                break;
            case 1:
                writeReg(S1_DEST_HW_ADDR_0, addr[0]);
                writeReg(S1_DEST_HW_ADDR_1, addr[1]);
                writeReg(S1_DEST_HW_ADDR_2, addr[2]);
                writeReg(S1_DEST_HW_ADDR_3, addr[3]);
                writeReg(S1_DEST_HW_ADDR_4, addr[4]);
                writeReg(S1_DEST_HW_ADDR_5, addr[5]);
                break;
            case 2:
                writeReg(S2_DEST_HW_ADDR_0, addr[0]);
                writeReg(S2_DEST_HW_ADDR_1, addr[1]);
                writeReg(S2_DEST_HW_ADDR_2, addr[2]);
                writeReg(S2_DEST_HW_ADDR_3, addr[3]);
                writeReg(S2_DEST_HW_ADDR_4, addr[4]);
                writeReg(S2_DEST_HW_ADDR_5, addr[5]);
                break;
            case 3:
                writeReg(S3_DEST_HW_ADDR_0, addr[0]);
                writeReg(S3_DEST_HW_ADDR_1, addr[1]);
                writeReg(S3_DEST_HW_ADDR_2, addr[2]);
                writeReg(S3_DEST_HW_ADDR_3, addr[3]);
                writeReg(S3_DEST_HW_ADDR_4, addr[4]);
                writeReg(S3_DEST_HW_ADDR_5, addr[5]);
                break;
        }
        return this;
    }

    /***************************************************************************
     * setDestIP
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 4 integers with the IP address for the
     *             destination hardware
     **************************************************************************/
    function setDestIP(socket, addr) {
        switch(socket) {
            case 0:
                writeReg(S0_DEST_IP_ADDR_0, addr[0]);
                writeReg(S0_DEST_IP_ADDR_1, addr[1]);
                writeReg(S0_DEST_IP_ADDR_2, addr[2]);
                writeReg(S0_DEST_IP_ADDR_3, addr[3]);
                break;
            case 1:
                writeReg(S1_DEST_IP_ADDR_0, addr[0]);
                writeReg(S1_DEST_IP_ADDR_1, addr[1]);
                writeReg(S1_DEST_IP_ADDR_2, addr[2]);
                writeReg(S1_DEST_IP_ADDR_3, addr[3]);
                break;
            case 2:
                writeReg(S2_DEST_IP_ADDR_0, addr[0]);
                writeReg(S2_DEST_IP_ADDR_1, addr[1]);
                writeReg(S2_DEST_IP_ADDR_2, addr[2]);
                writeReg(S2_DEST_IP_ADDR_3, addr[3]);
                break;
            case 3:
                writeReg(S3_DEST_IP_ADDR_0, addr[0]);
                writeReg(S3_DEST_IP_ADDR_1, addr[1]);
                writeReg(S3_DEST_IP_ADDR_2, addr[2]);
                writeReg(S3_DEST_IP_ADDR_3, addr[3]);
                break;
        }
        return this;
    }

    /***************************************************************************
     * setDestPort
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 2 integers with the port for the
     *             destination hardware
     *             (ex: for port 4242, addr = [0x10, 0x92])
     **************************************************************************/
    function setDestPort(socket, port) {
        switch(socket) {
            case 0:
                writeReg(S0_DEST_PORT_0, port[0]);
                writeReg(S0_DEST_PORT_1, port[1]);
                break;
            case 1:
                writeReg(S1_DEST_PORT_0, port[0]);
                writeReg(S1_DEST_PORT_1, port[1]);
                break;
            case 2:
                writeReg(S2_DEST_PORT_0, port[0]);
                writeReg(S2_DEST_PORT_1, port[1]);
                break;
            case 3:
                writeReg(S3_DEST_PORT_0, port[0]);
                writeReg(S3_DEST_PORT_1, port[1]);
                break;
        }
        return this;
    }

    /***************************************************************************
     * setRxReadPointer
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      value - new RX read pointer value
     **************************************************************************/
    function setRxReadPointer(socket, value) {
        local rx_pointer_r1 = (value & 0xFF00) >> 8;
        local rx_pointer_r2 = value & 0x00FF;

        switch(socket) {
            case 0:
                writeReg(S0_RX_RP_R1, rx_pointer_r1);
                writeReg(S0_RX_RP_R2, rx_pointer_r2);
                break;
            case 1:
                writeReg(S1_RX_RP_R1, rx_pointer_r1);
                writeReg(S1_RX_RP_R2, rx_pointer_r2);
                break;
            case 2:
                writeReg(S2_RX_RP_R1, rx_pointer_r1);
                writeReg(S2_RX_RP_R2, rx_pointer_r2);
                break;
            case 3:
                writeReg(S3_RX_RP_R1, rx_pointer_r1);
                writeReg(S3_RX_RP_R2, rx_pointer_r2);
                break;
        }
        return this;
    }

    /***************************************************************************
     * setTxWritePointer
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      value - new TX write pointer value
     **************************************************************************/
    function setTxWritePointer(socket, value) {
        local tx_pointer_r1 = (value & 0xFF00) >> 8;
        local tx_pointer_r2 = value & 0x00FF;

        switch(socket) {
            case 0:
                writeReg(S0_TX_WP_R1, tx_pointer_r1);
                writeReg(S0_TX_WP_R2, tx_pointer_r2);
                break;
            case 1:
                writeReg(S1_TX_WP_R1, tx_pointer_r1);
                writeReg(S1_TX_WP_R2, tx_pointer_r2);
                break;
            case 2:
                writeReg(S2_TX_WP_R1, tx_pointer_r1);
                writeReg(S2_TX_WP_R2, tx_pointer_r2);
                break;
            case 3:
                writeReg(S3_TX_WP_R1, tx_pointer_r1);
                writeReg(S3_TX_WP_R2, tx_pointer_r2);
                break;
        }
        return this;
    }

    /***************************************************************************
     * getSocketStatus
     * Returns: integer with the connection status for the socket passed in
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketStatus(socket) {
        local status = null;
        switch(socket) {
            case 0:
                status = readReg(S0_STATUS);
                break;
            case 1:
                status = readReg(S1_STATUS);
                break;
            case 2:
                status = readReg(S2_STATUS);
                break;
            case 3:
                status = readReg(S3_STATUS);
                break;
        }
        return status;
    }

    /***************************************************************************
     * getRxReadPointer
     * Returns: value of read pointer
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getRxReadPointer(socket) {
        local rx_pointer_pt1 = 0x00;
        local rx_pointer_pt2 = 0x00;

        switch(socket) {
            case 0:
                rx_pointer_pt1 = readReg(S0_RX_RP_R1) << 8;
                rx_pointer_pt2 = readReg(S0_RX_RP_R2);
                break;
            case 1:
                rx_pointer_pt1 = readReg(S1_RX_RP_R1) << 8;
                rx_pointer_pt2 = readReg(S1_RX_RP_R2);
                break;
            case 2:
                rx_pointer_pt1 = readReg(S2_RX_RP_R1) << 8;
                rx_pointer_pt2 = readReg(S2_RX_RP_R2);
                break;
            case 3:
                rx_pointer_pt1 = readReg(S3_RX_RP_R1) << 8;
                rx_pointer_pt2 = readReg(S3_RX_RP_R2);
                break;
        }

        return rx_pointer_pt1 | rx_pointer_pt2;
    }

    /***************************************************************************
     * getTxWritePointer
     * Returns: value of write pointer
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getTxWritePointer(socket) {
        local tx_pointer_pt1 = 0x00;
        local tx_pointer_pt2 = 0x00;

        switch(socket) {
            case 0:
                tx_pointer_pt1 = readReg(S0_TX_WP_R1) << 8;
                tx_pointer_pt2 = readReg(S0_TX_WP_R2);
                break;
            case 1:
                tx_pointer_pt1 = readReg(S1_TX_WP_R1) << 8;
                tx_pointer_pt2 = readReg(S1_TX_WP_R2);
                break;
            case 2:
                tx_pointer_pt1 = readReg(S2_TX_WP_R1) << 8;
                tx_pointer_pt2 = readReg(S2_TX_WP_R2);
                break;
            case 3:
                tx_pointer_pt1 = readReg(S3_TX_WP_R1) << 8;
                tx_pointer_pt2 = readReg(S3_TX_WP_R2);
                break;
        }

        return tx_pointer_pt1 | tx_pointer_pt2;
    }

    /***************************************************************************
     * getRxDataSize
     * Returns: value of received data size register
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getRxDataSize(socket) {
        local rx_pt1 = 0x00;
        local rx_pt2 = 0x00;

        switch(socket) {
            case 0:
                rx_pt1 = readReg(S0_RX_SIZE_R1) << 8;
                rx_pt2 = readReg(S0_RX_SIZE_R2);
                break;
            case 1:
                rx_pt1 = readReg(S1_RX_SIZE_R1) << 8;
                rx_pt2 = readReg(S1_RX_SIZE_R2);
                break;
            case 2:
                rx_pt1 = readReg(S2_RX_SIZE_R1) << 8;
                rx_pt2 = readReg(S2_RX_SIZE_R2);
                break;
            case 3:
                rx_pt1 = readReg(S3_RX_SIZE_R1) << 8;
                rx_pt2 = readReg(S3_RX_SIZE_R2);
                break;
        }

        return rx_pt1 | rx_pt2;
    }

    /***************************************************************************
     * getFreeTxDataSize
     * Returns: value of TX data free size register
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getFreeTxDataSize(socket) {
        local tx_fd_pt1 = 0x00;
        local tx_fd_pt2 = 0x00;

        switch(socket) {
            case 0:
                tx_fd_pt1 = readReg(S0_TX_SIZE_R1) << 8;
                tx_fd_pt2 = readReg(S0_TX_SIZE_R2);
                break;
            case 1:
                tx_fd_pt1 = readReg(S1_TX_SIZE_R1) << 8;
                tx_fd_pt2 = readReg(S1_TX_SIZE_R2);
                break;
            case 2:
                tx_fd_pt1 = readReg(S2_TX_SIZE_R1) << 8;
                tx_fd_pt2 = readReg(S2_TX_SIZE_R2);
                break;
            case 3:
                tx_fd_pt1 = readReg(S3_TX_SIZE_R1) << 8;
                tx_fd_pt2 = readReg(S3_TX_SIZE_R2);
                break;
        }

        return tx_fd_pt1 | tx_fd_pt2;
    }

    /***************************************************************************
     * getSocketTXMemBase
     * Returns: base TX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketTXMemBase(socket) {
        local memBase = TX_BASE;
        switch(socket) {
            case 0:
                memBase = gS0_TX_BASE;
                break;
            case 1:
                memBase = gS1_TX_BASE;
                break;
            case 2:
                memBase = gS2_TX_BASE;
                break;
            case 3:
                memBase = gS3_TX_BASE;
                break;
        }
        return memBase;
    }

    /***************************************************************************
     * getSocketTXMemMax
     * Returns: maximum TX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketTXMemMax(socket) {
        local max = RX_BASE;
        switch(socket) {
            case 0:
                max = gS1_TX_BASE;
                break;
            case 1:
                max = gS2_TX_BASE;
                break;
            case 2:
                max = gS3_TX_BASE;
                break;
            default:
                break;
        }
        return max;
    }

    /***************************************************************************
     * getSocketRXMemBase
     * Returns: base RX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketRXMemBase(socket) {
        local memBase = RX_BASE;
        switch(socket) {
            case 0:
                memBase = gS0_RX_BASE;
                break;
            case 1:
                memBase = gS1_RX_BASE;
                break;
            case 2:
                memBase = gS2_RX_BASE;
                break;
            case 3:
                memBase = gS3_RX_BASE;
                break;
        }
        return memBase;
    }

    /***************************************************************************
     * getSocketRXMemMax
     * Returns: maximum TX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketRXMemMax(socket) {
        local max = CHIP_MAX_ADDR;
        switch(socket) {
            case 0:
                max = gS1_RX_BASE;
                break;
            case 1:
                max = gS2_RX_BASE;
                break;
            case 2:
                max = gS3_RX_BASE;
                break;
            default:
                break;
        }
        return max;
    }

    /***************************************************************************
     * getSocketIntAddr
     * Returns: interrupt register address of the socket passed in
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketIntAddr(socket) {
        local addr = null;
        switch (socket) {
            case 0:
                addr = S0_INTERRUPT;
                break;
            case 1:
                addr = S1_INTERRUPT;
                break;
            case 2:
                addr = S2_INTERRUPT;
                break;
            case 3:
                addr = S3_INTERRUPT;
                break;
        }
        return addr;
    }

    // TRANSMISSION FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * sendSocketCommand
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      command - select command using SOCKET_COMMANDS constant
     **************************************************************************/
    function sendSocketCommand(socket, command) {
        switch(socket) {
            case 0:
                writeReg(S0_COMMAND, command);
                break;
            case 1:
                writeReg(S1_COMMAND, command);
                break;
            case 2:
                writeReg(S2_COMMAND, command);
                break;
            case 3:
                writeReg(S3_COMMAND, command);
                break;
        }

        return this;
    }

    /***************************************************************************
     * readRxData
     * Returns: data from received data register
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function readRxData(socket) {
        // get the received data size
        local dataSize = getRxDataSize(socket);
        local mem_base = getSocketRXMemBase(socket);
        local mem_max = getSocketRXMemMax(socket);

        // calculate offset address
        local rx_pointer = getRxReadPointer(socket);
        local rx_offset = rx_pointer & gS0_RX_MASK;

        // calculate start address(physical address)
        local rx_start_addr = rx_offset + gS0_RX_BASE;

        // read transmitted data here
        local data = _readData(rx_start_addr, dataSize, mem_base, mem_max);

        // increase Sn_RX_RD as length of get_size
        rx_pointer += dataSize;
        setRxReadPointer(socket, rx_pointer);

        // set RECV command
        sendSocketCommand(socket, SOCKET_RECEIVE);

        return data;
    }

    /***************************************************************************
     * sendTxData
     * Returns: status of socket connection register
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      transmitData - data to be sent
     **************************************************************************/
    function sendTxData(socket, transmitData) {
        local tx_length = transmitData.len();
        local tx_base = getSocketTXMemBase(socket);
        local tx_max = getSocketTXMemMax(socket);

        // server.log(socketMemory.tx[0])

        // check transmission data size
        if (tx_length > socketMemory.tx[socket]) {
            server.error("Transmit data larger than socket transmit buffer.");
            return getSocketStatus(socket);
        }

        // calculate offset address
        local tx_pointer = getTxWritePointer(socket);
        local tx_offset = tx_pointer & gS0_TX_MASK;

        // calculate start address(physical address)
        local tx_start_addr = gS0_TX_BASE + tx_offset;

        // write transmit data
        _writeData(tx_start_addr, transmitData, tx_base, tx_max);

        // increase Sn_TX_WR as length of send_size
        tx_pointer += tx_length;
        setTxWritePointer(socket, tx_pointer)

        // set SEND command
        sendSocketCommand(socket, SOCKET_SEND);

        return getSocketStatus(socket);
    }


    // INTERRUPT FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * setInterrupt
     * Returns: this
     * Parameters:
     *      type - select interrupt type using interrupt type
     *             constants or-ed together
     **************************************************************************/
    function setInterrupt(type) {
        writeReg(INTERRUPT_MASK, type);
        return this;
    }

    /***************************************************************************
     * clearInterrupt
     * Returns: this
     * Parameters:
     *      type(optional) - clear specified interrupt type
     *                       if nothing passed in clears all interrupts
     **************************************************************************/
    function clearInterrupt(type = 0xEF) {
        writeReg(INTERRUPT, type);
        return this;
    }

    /***************************************************************************
     * clearSocketInterrupt
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      type(optional) - clear specified interrupt type
     *                       if nothing passed in clears all interrupts
     **************************************************************************/
    function clearSocketInterrupt(socket, type = 0x1F) {
        local reg = getSocketIntAddr(socket);
        writeReg(reg, type);
        return this;
    }

    /***************************************************************************
     * getInterruptStatus
     * Returns: interrupt status table
     * Parameters: none
     **************************************************************************/
    function getInterruptStatus() {
        local status = readReg(INTERRUPT);
        local intStatus = {
            "CONFLICT" : status & CONFLICT_INT_TYPE ? true : false,
            "UNREACH" : status & UNREACH_INT_TYPE ? true : false,
            "PPPoE" : status & PPPoE_INT_TYPE ? true : false,
            "SOCKET_3" : status & S3_INT_TYPE ? true : false,
            "SOCKET_2" : status & S2_INT_TYPE ? true : false,
            "SOCKET_1" : status & S1_INT_TYPE ? true : false,
            "SOCKET_0" : status & S0_INT_TYPE ? true : false
        };
        return intStatus;
    }

    /***************************************************************************
     * getSocketInterruptStatus
     * Returns: socket interrupt status table
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketInterruptStatus(socket) {
        local status = readReg( getSocketIntAddr(socket) );
        local intStatus = {
            "SEND_COMPLETE" : status & SEND_COMPLETE_INT_TYPE ? true : false,
            "TIMEOUT" : status & TIMEOUT_INT_TYPE ? true : false,
            "DATA_RECEIVED" : status & DATA_RECEIVED_INT_TYPE ? true : false,
            "DISCONNECTED" : status & DISCONNECTED_INT_TYPE ? true : false,
            "CONNECTED" : status & CONNECTED_INT_TYPE ? true : false
        };
        return intStatus;
    }


    // SPI FUNCTIONS
    // ---------------------------------------------

     /***************************************************************************
     * readReg
     * Returns: data stored at the specified register
     * Parameters:
     *      reg - register to read
     **************************************************************************/
    function readReg(reg) {
        local b = blob();
        local addr = blob();
        local res = blob();

        if(_cs) {
            _cs.write(0);
        } else {
            _spi.chipselect(1);
        }

        b.writen(READ_COMMAND, 'b');
        addr.writen(reg, 'w');
        b.writen(addr[1], 'b');
        b.writen(addr[0], 'b');
        b.writen(0x00, 'b');
        res = _spi.writeread(b);

        if(_cs) {
            _cs.write(1);
        } else {
            _spi.chipselect(0);
        }

        return res[3];
    }

    /***************************************************************************
     * writeReg
     * Returns: null
     * Parameters:
     *      reg - register to write to
     *      value - data to write to register
     **************************************************************************/
    function writeReg(reg, value) {
        local b = blob();
        local addr = blob();

        if(_cs) {
            _cs.write(0);
        } else {
            _spi.chipselect(1);
        }

        b.writen(WRITE_COMMAND, 'b');
        addr.writen(reg, 'w');
        b.writen(addr[1], 'b');
        b.writen(addr[0], 'b');
        b.writen(value, 'b');
        _spi.write(b);

        if(_cs) {
            _cs.write(1);
        } else {
            _spi.chipselect(0);
        }
    }


    // RESET FUNCTION
    // ---------------------------------------------

    /***************************************************************************
     * reset, note this is blocking for 0.01s
     * Returns: this
     * Parameters: none
     **************************************************************************/
    function reset() {
        if(_resetPin) {
            _resetPin.write(0);
            imp.sleep(0.01);
            _resetPin.write(1);
        } else {
            _setMode(SW_RESET);
            imp.sleep(0.01);
        }
        _setMemDefaults();
        return this;
    }


    // PRIVATE FUNCTIONS
    // ---------------------------------------------

    // MEMORY FUNCTIONS

    /***************************************************************************
     * _setMemDefaults, sets default socket memory base and mask values
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _setMemDefaults() {
        // defualt memory settings
        gS0_RX_MASK = MASK_2k;
        gS1_RX_MASK = MASK_2k;
        gS2_RX_MASK = MASK_2k;
        gS3_RX_MASK = MASK_2k;

        gS0_RX_BASE = CHIP_BASE_ADDR + RX_BASE;
        _setSocketMemBase("rx")

        // defualt memory settings
        gS0_TX_MASK = MASK_2k;
        gS1_TX_MASK = MASK_2k;
        gS2_TX_MASK = MASK_2k;
        gS3_TX_MASK = MASK_2k;

        gS0_TX_BASE = CHIP_BASE_ADDR + TX_BASE;
        _setSocketMemBase("tx");

        socketMemory = { "rx" : [2048, 2048, 2048, 2048],
                         "tx" : [2048, 2048, 2048, 2048]
                       }
    }

    /***************************************************************************
     * _setSocketMemory
     * Returns: memory register value
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      memory - human readable memory value
     **************************************************************************/
    function _setSocketMemory(socket, memory) {
        local value = 0x00;
        switch (socket) {
            case 0:
                if (memory == 8) value = 0x03;
                if (memory == 4) value = 0x02;
                if (memory == 2) value = 0x01;
                break;
            case 1:
                if (memory == 8) value = 0x0C;
                if (memory == 4) value = 0x08;
                if (memory == 2) value = 0x04;
                break;
            case 2:
                if (memory == 8) value = 0x30;
                if (memory == 4) value = 0x20;
                if (memory == 2) value = 0x10;
                break;
            case 3:
                if (memory == 8) value = 0xC0;
                if (memory == 4) value = 0x80;
                if (memory == 2) value = 0x40;
                break;
        }
        return value;
    }

    /***************************************************************************
     * _setMask, stores socket memory mask value
     * Returns: null
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      mask - mask value
     *      dir - direction string, 'tx' or 'rx'
     **************************************************************************/
    function _setMask(socket, mask, dir) {
        switch (socket) {
            case 0:
                if (dir = "tx") gS0_TX_MASK = mask;
                if (dir = "rx") gS0_RX_MASK = mask;
                break;
            case 1:
                if (dir = "tx") gS1_TX_MASK = mask;
                if (dir = "rx") gS1_RX_MASK = mask;
                break;
            case 2:
                if (dir = "tx") gS2_TX_MASK = mask;
                if (dir = "rx") gS2_RX_MASK = mask;
                break;
            case 3:
                if (dir = "tx") gS3_TX_MASK = mask;
                if (dir = "rx") gS3_RX_MASK = mask;
                break;
        }
    }

    /***************************************************************************
     * _setSocketRxMemBase, calculates/stores receive socket base addresses
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _setSocketMemBase(dir) {
        if (dir == "rx") {
            gS1_RX_BASE = gS0_RX_BASE + (gS0_RX_MASK + 1);
            gS2_RX_BASE = gS1_RX_BASE + (gS1_RX_MASK + 1);
            gS3_RX_BASE = gS2_RX_BASE + (gS2_RX_MASK + 1);
        } else {
            gS1_TX_BASE = gS0_TX_BASE + (gS0_TX_MASK + 1);
            gS2_TX_BASE = gS1_TX_BASE + (gS1_TX_MASK + 1);
            gS3_TX_BASE = gS2_TX_BASE + (gS2_TX_MASK + 1);
        }
    }

    // TRANSMITION FUNCTIONS

    /***************************************************************************
     * _writeData, writes data to transmit memory buffer
     * Returns: size of data written
     * Parameters:
     *      addr - register address to start the write data
     *      data - data to be written
     *      base_addr(optional) - start address of the socket tx mem buffer
     *      max_addr(optional) - ending address of the socket tx mem buffer
     **************************************************************************/
    function _writeData(addr, data, base_addr = null, max_addr = null) {
        if (base_addr == null) base_addr = TX_BASE;
        if (max_addr == null) max_addr = RX_BASE;

        foreach (item in data) {
            if (addr >= max_addr) addr = base_addr;
            writeReg(addr, item);
            // server.log(format("data: 0x%02X written to addr: 0x%04X", item, addr));
            addr++;
        }

        return data.len();
    }

    /***************************************************************************
     * _readData
     * Returns: blob containing data from memory buffer
     * Parameters:
     *      addr - register address to start the read
     *      data - data to be written
     *      base_addr(optional) - start address of the socket rx mem buffer
     *      max_addr(optional) - ending address of the socket rx mem buffer
     **************************************************************************/
    function _readData(addr, size, base_addr = null, max_addr = null) {
        if (base_addr == null) base_addr = RX_BASE;
        if (max_addr == null) max_addr = CHIP_MAX_ADDR;
        local b = blob();

        while (size != 0) {
            if (addr >= max_addr) addr = base_addr;
            b.writen(readReg(addr), 'b');
            addr++;
            size--;
        }

        // server.log(b)
        return b
    }

    // MISC HELPERS

    // /***************************************************************************
    //  * _logSockMemVars, logs socket memory variables
    //  * Returns: null
    //  * Parameters: none
    //  **************************************************************************/
    // function _logSockMemVars() {
    //     server.log("----------------------------------")
    //     server.log( format("socket 0 rx mask 0x%04X", gS0_RX_MASK) );
    //     server.log( format("socket 1 rx mask 0x%04X", gS1_RX_MASK) );
    //     server.log( format("socket 2 rx mask 0x%04X", gS2_RX_MASK) );
    //     server.log( format("socket 3 rx mask 0x%04X", gS3_RX_MASK) );
    //     server.log( format("socket 0 rx base 0x%04X", gS0_RX_BASE) );
    //     server.log( format("socket 1 rx base 0x%04X", gS1_RX_BASE) );
    //     server.log( format("socket 2 rx base 0x%04X", gS2_RX_BASE) );
    //     server.log( format("socket 3 rx base 0x%04X", gS3_RX_BASE) );
    //     server.log( format("socket 0 tx mask 0x%04X", gS0_TX_MASK) );
    //     server.log( format("socket 1 tx mask 0x%04X", gS1_TX_MASK) );
    //     server.log( format("socket 2 tx mask 0x%04X", gS2_TX_MASK) );
    //     server.log( format("socket 3 tx mask 0x%04X", gS3_TX_MASK) );
    //     server.log( format("socket 0 tx base 0x%04X", gS0_TX_BASE) );
    //     server.log( format("socket 1 tx base 0x%04X", gS1_TX_BASE) );
    //     server.log( format("socket 2 tx base 0x%04X", gS2_TX_BASE) );
    //     server.log( format("socket 3 tx base 0x%04X", gS3_TX_BASE) );
    //     server.log("----------------------------------")
    // }

    // function _logGatewayIP() {
    //     server.log("----------------------------------")
    //     server.log( format("Gateway IP: %i.%i.%i.%i", readReg(GATEWAY_ADDR_0), readReg(GATEWAY_ADDR_1), readReg(GATEWAY_ADDR_2), readReg(GATEWAY_ADDR_3)) )
    //     server.log("----------------------------------")
    // }

    // function _logSourceAddr() {
    //     server.log("----------------------------------")
    //     server.log( format("Source Mac Addr: %02X %02X %02X %02X %02X %02X", readReg(SOURCE_HW_ADDR_0), readReg(SOURCE_HW_ADDR_1), readReg(SOURCE_HW_ADDR_2), readReg(SOURCE_HW_ADDR_3), readReg(SOURCE_HW_ADDR_4), readReg(SOURCE_HW_ADDR_5)) )
    //     server.log("----------------------------------")
    // }

    // function _logSubnet() {
    //     server.log("----------------------------------")
    //     server.log( format("Subnet Addr: %i.%i.%i.%i", readReg(SUBNET_MASK_ADDR_0), readReg(SUBNET_MASK_ADDR_1), readReg(SUBNET_MASK_ADDR_2), readReg(SUBNET_MASK_ADDR_3)) )
    //     server.log("----------------------------------")
    // }

    // function _logSourceIP() {
    //     server.log("----------------------------------")
    //     server.log( format("Source IP: %i.%i.%i.%i", readReg(SOURCE_IP_ADDR_0), readReg(SOURCE_IP_ADDR_1), readReg(SOURCE_IP_ADDR_2), readReg(SOURCE_IP_ADDR_3)) )
    //     server.log("----------------------------------")
    // }

    // function _logS0SourcePort() {
    //     local p1 = readReg(S0_SOURCE_PORT_0);
    //     local p2 = readReg(S0_SOURCE_PORT_1);
    //     local port = (p1 * 256) + p2;
    //     server.log("----------------------------------")
    //     server.log( format("Source Port: %i", port) )
    //     server.log("----------------------------------")
    // }

    // function _logS0DestPort() {
    //     local p1 = readReg(S0_DEST_PORT_0);
    //     local p2 = readReg(S0_DEST_PORT_1);
    //     local port = (p1 * 256) + p2;
    //     server.log("----------------------------------")
    //     server.log( format("Source Port: %i", port) )
    //     server.log("----------------------------------")
    // }

    // function _logS0DestIP() {
    //     server.log("----------------------------------")
    //     server.log( format("Destination IP: %i.%i.%i.%i", readReg(S0_DEST_IP_ADDR_0), readReg(S0_DEST_IP_ADDR_1), readReg(S0_DEST_IP_ADDR_2), readReg(S0_DEST_IP_ADDR_3)) )
    //     server.log("----------------------------------")
    // }

}

class Wiznet {

    static VERSION = [1, 0, 0];

    static CONNECTION_RETRY = 8;

    _wiz = null;
    _interruptPin = null;
    _connectionRetryCounter = null;

    _transmitting = false;
    _transmitCallback = null;
    _receiveCallback = null;
    _disconnectCallback = null;

    /***************************************************************************
     * Constructor
     * Returns: null
     * Parameters:
     *      spi - configured spi bus, chip supports spi mode 0 or 3
     *      interruptPin - inerrupt pin
     *      cs(optional) -  chip select pin, pass in if not using imp005
     *      reset(optional) - reset pin
     **************************************************************************/
    constructor(spi, interruptPin, csPin = null, resetPin = null) {
        local imp005 = ("spi0" in hardware);

        _connectionRetryCounter = CONNECTION_RETRY;

        if (csPin == null) {
            // check that we are using an 005
            if (!imp005) {
                throw "Error: You must pass in a Chip Select Pin."
                return;
            }
        } else {
            csPin.configure(DIGITAL_OUT, 1);
        }

        if(resetPin) resetPin.configure(DIGITAL_OUT, 1);

        _wiz = W5100(spi, csPin, resetPin);

        setSocketInterrupts(S0_INT_TYPE | S1_INT_TYPE);
        _clearAllInterrupts();

        if (imp005) {
            _interruptPin = interruptPin.configure(DIGITAL_IN_PULLDOWN, _interruptHandler.bindenv(this));
        } else {
            _interruptPin = interruptPin.configure(DIGITAL_IN_WAKEUP, _interruptHandler.bindenv(this));
        }
    }

    // SETUP FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * configureNetworkSettings
     * Returns: this
     * Parameters:
     *      networkSettings - table with keys: gatewayIP, sourceAddr, subnet, sourceIP
     *                        values are arrays of integers
     **************************************************************************/
    function configureNetworkSettings(networkSettings) {
        if ("gatewayIP" in networkSettings) _wiz.setGatewayAddr(networkSettings.gatewayIP);
        if ("sourceAddr" in networkSettings) _wiz.setSourceHWAddr(networkSettings.sourceAddr);
        if ("subnet" in networkSettings) _wiz.setSubnet(networkSettings.subnet);
        if ("sourceIP" in networkSettings) _wiz.setSourceIP(networkSettings.sourceIP);
        return this;
    }

    /***************************************************************************
     * configureSocketMemory
     * Returns: this
     * Parameters:
     *      txMem - an array of four integers with the desired transmit memory
     *              allotment for each socket (supported values are 1, 2, 4, 8)
     *      rxMem - an array of four integers with the desired receive memory
     *              allotment for each socket (supported values are 1, 2, 4, 8)
     **************************************************************************/
    function configureSocketMemory(txMem, rxMem) {
        _wiz.setMemory(txMem, "tx");
        _wiz.setMemory(rxMem, "rx");
        return this;
    }

    /***************************************************************************
     * setReceiveCallback
     * Returns: this
     * Parameters:
     *      cb - function to be called when data is received
     **************************************************************************/
    function setReceiveCallback(cb) {
        _receiveCallback = cb;
        return this;
    }

    /***************************************************************************
     * setDisconnectCallback
     * Returns: this
     * Parameters:
     *      cb - function to be called when disconnect interrupt happens
     **************************************************************************/
    function setDisconnectCallback(cb) {
        _disconnectCallback = cb;
        return this;
    }


    // CONNECTION FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * openConnection
     * Returns: boolean if connection established
     * Parameters:
     *      connectionSettings - table with keys: socket, sourcePort, destIP, destPort, mode(optional)
     **************************************************************************/
    function openConnection(connectionSettings) {
        // check for required parameters
        if (!("socket" in connectionSettings)) throw "Cannot open a Connection.  Missing Socket";
        if (!("sourcePort" in connectionSettings)) throw "Cannot open a connection. Missing Source Port";
        if (!("destIP" in connectionSettings)) throw "Cannot open a connection. Missing Destination IP Address";
        if (!("destPort" in connectionSettings)) throw "Cannot open a connection. Missing Destination Port";

        local socket = connectionSettings.socket;

        if ("socketMode" in connectionSettings) {
            _wiz.setSocketMode(socket, connectionSettings.socketMode);
        }  else {
            _wiz.setSocketMode(socket, SOCKET_MODE_TCP);
        }

        _wiz.setSourcePort(socket, connectionSettings.sourcePort);
        _wiz.sendSocketCommand(socket, SOCKET_OPEN);

        _wiz.setDestIP(socket, connectionSettings.destIP);
        _wiz.setDestPort(socket, connectionSettings.destPort);
        _wiz.sendSocketCommand(socket, SOCKET_CONNECT);

        return connectionEstablished(socket);
    }

    /***************************************************************************
     * closeConnection
     * Returns: boolean if connection closed
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function closeConnection(socket) {
        _resetTXStatus();
        _wiz.sendSocketCommand(socket, SOCKET_DISCONNECT);
        _wiz.sendSocketCommand(socket, SOCKET_CLOSE);
        return connectionClosed(socket);
    }


    // TRANSMISSION FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * transmit
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      transmitData - array of data to transmit
     *      cb(optional) - callback function to be called when data
     *                     successfully sent or timeout has occurred
     **************************************************************************/
    function transmit(socket, transmitData, cb = null) {
        _transmitting = true;
        _transmitCallback = cb;

        if (connectionEstablished(socket)) {
            if (dataWaiting(socket) && _receiveCallback) {
                _receiveCallback( socket, _wiz.readRxData(socket) );
            }
            _wiz.sendTxData(socket, transmitData);
        } else {
            _checkstate(socket, function() {
                transmit(socket, transmitData, cb);
            });
        }
        return this;
    }

    /***************************************************************************
     * receive
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      cb(optional) - callback to pass receive data to
     *                     (note: if callback is passed in it will superceede
     *                     the callback set by setReceiveCallback)
     **************************************************************************/
    function receive(socket, cb = null) {
        if ( connectionEstablished(socket) ) {
            if ( dataWaiting(socket) ) {
                if(cb) {
                    imp.wakeup(0, function() {
                        cb( socket, _wiz.readRxData(socket) );
                    }.bindenv(this));
                } else if (_receiveCallback) {
                    imp.wakeup(0, function() {
                        _receiveCallback( socket, _wiz.readRxData(socket) );
                    }.bindenv(this));
                }
            }
        } else {
            _checkstate(socket, function() {
                receive(socket, cb);
            });
        }
    }


    // HELPER FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * reset, note this is blocking for 0.01s
     * Returns: this
     * Parameters: none
     **************************************************************************/
    function reset() {
        _wiz.reset();
    }

    /***************************************************************************
     * dataWaiting
     * Returns: boolean
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function dataWaiting(socket) {
        return (_wiz.getRxDataSize(socket) == 0x00) ? false : true;
    }

    /***************************************************************************
     * connectionEstablished
     * Returns: boolean
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function connectionEstablished(socket) {
        return (_wiz.getSocketStatus(socket) == SOCKET_STATUS_ESTABLISHED) ? true : false;
    }

    /***************************************************************************
     * connectionClosed
     * Returns: boolean
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function connectionClosed(socket) {
        return (_wiz.getSocketStatus(socket) == SOCKET_STATUS_CLOSED) ? true : false;
    }


    // INTERRUPT FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * setSocketInterrupts
     * Returns: null
     * Parameters:
     *      socketInts - select socket interrupts to enable by or-ing together
     *                   socket interrupt constants
     **************************************************************************/
     function setSocketInterrupts(socketInts) {
        local interrupts = CONFLICT_INT_TYPE | socketInts;
        _wiz.setInterrupt(interrupts)
    }


    // PRIVATE FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * _checkstate, if connection established calls callback, otherwise
     *             retrys a handful of known connection states
     * Returns: socket connection status
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      cb(optional) - function to be called if connection is established
     **************************************************************************/
    function _checkstate(socket, cb = null) {
        local status = _wiz.getSocketStatus(socket);

        switch(status) {
            case SOCKET_STATUS_ESTABLISHED:
                server.log("SOCKET_STATUS_ESTABLISHED");
                if (cb) cb();
                break;
            case SOCKET_STATUS_SYNSENT:
                server.log("SOCKET_STATUS_SYNSENT");
                _retryCheck(socket, cb);
                break;
            case SOCKET_STATUS_SYNRECV:
                server.log("SOCKET_STATUS_SYNRECV");
                _retryCheck(socket, cb);
                break;
            case SOCKET_STATUS_ARP:
                server.log("SOCKET_STATUS_ARP");
                closeConnection(socket);
                break;
            case SOCKET_STATUS_CLOSED:
                server.log("SOCKET_STATUS_CLOSED");
                closeConnection(socket);
                break;
            default :
                closeConnection(socket);
        }
        return status;
    }

    /***************************************************************************
     * _retryCheck, either checks connection state or closes connection
     *              based on number of retries
     * Returns: null
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      cb - cb function to be passed back to checkstate function
     **************************************************************************/
    function _retryCheck(socket, cb) {
        _connectionRetryCounter --;
        if (_connectionRetryCounter > 0) {
            _checkstate(socket, cb);
        } else {
            closeConnection(socket);
            _connectionRetryCounter = CONNECTION_RETRY;
        }
    }

    /***************************************************************************
     * _resetTXStatus, resets transmitting flag and transmit callback
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _resetTXStatus() {
        _transmitting = false;
        _transmitCallback = null;
    }


    // PRIVATE INTERRUPT FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * _interruptHandler, checks interrupt register and calls appropriate
     *                    handlers, then clears the interrupt regiser
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _interruptHandler() {
        local status = _wiz.getInterruptStatus();
        if (status.CONFLICT) _handleConflictInt();
        if (status.SOCKET_0) _handleSocketInt(0);
        if (status.SOCKET_1) _handleSocketInt(1);
        if (status.SOCKET_2) _handleSocketInt(2);
        if (status.SOCKET_3) _handleSocketInt(3);
        _wiz.clearInterrupt();
    }

    /***************************************************************************
     * _handleConflictInt, logs conflict error message
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _handleConflictInt() {
        server.error("Conflict Interrupt Occured.  Please check IP Source and Destination addressess.");
    }

    /***************************************************************************
     * _handleSocketInt, handles/clears the specified socket interrupt
     * Returns: null
     * Parameters: socket the interrupt occurred on
     **************************************************************************/
    function _handleSocketInt(socket) {
        local status = _wiz.getSocketInterruptStatus(socket);
        if (status.CONNECTED) server.log("Connection established on socket " + socket);
        if (status.DISCONNECTED) {
            server.log("Connection disconnected on socket " + socket);
            closeConnection(socket);
            if(_disconnectCallback) imp.wakeup(0, function() {
                _disconnectCallback(socket);
            }.bindenv(this));
        }
        if (status.SEND_COMPLETE) {
            server.log("Send complete on socket " + socket);
            if (_transmitting && _transmitCallback) {
                local cb = _transmitCallback;
                _resetTXStatus();

                imp.wakeup(0, function() {
                    cb(null, "OK");
                }.bindenv(this))
            }
        }
        if (status.TIMEOUT) {
            server.log("Timeout occurred on socket " + socket);
            if (_transmitting && _transmitCallback) {
                local cb = _transmitCallback;
                _resetTXStatus();

                imp.wakeup(0, function() {
                    cb("Error: timeout", null);
                }.bindenv(this))
            }
        }
        if (status.DATA_RECEIVED) {
            server.log("Data received on socket " + socket);
            receive(socket);
        }
        _wiz.clearSocketInterrupt(socket);
    }

    /***************************************************************************
     * _clearAllInterrupts, clears all interrupt registers
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _clearAllInterrupts() {
        _wiz.clearInterrupt();
        for (local i = 0; i < 4 ; i++) {
            _wiz.clearSocketInterrupt(i);
        }
    }
}