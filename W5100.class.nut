class W5100 {

    static VERSION = [1, 0, 0];

    static READ_COMMAND = 0x0F;
    static WRITE_COMMAND = 0xF0;

    // COMMON REGISTERS
    // MR
    static MODE = 0x0000;

    //GWR
    static GATEWAY_ADDR_0 = 0x0001;
    static GATEWAY_ADDR_1 = 0x0002;
    static GATEWAY_ADDR_2 = 0x0003;
    static GATEWAY_ADDR_3 = 0x0004;

    //SUBR
    static SUBNET_MASK_ADDR_0 = 0x0005;
    static SUBNET_MASK_ADDR_1 = 0x0006;
    static SUBNET_MASK_ADDR_2 = 0x0007;
    static SUBNET_MASK_ADDR_3 = 0x0008;

    //SHAR
    static SOURCE_HW_ADDR_0 = 0x0009;
    static SOURCE_HW_ADDR_1 = 0x000A;
    static SOURCE_HW_ADDR_2 = 0x000B;
    static SOURCE_HW_ADDR_3 = 0x000C;
    static SOURCE_HW_ADDR_4 = 0x000D;
    static SOURCE_HW_ADDR_5 = 0x000E;

    //SIPR
    static SOURCE_IP_ADDR_0 = 0x000F;
    static SOURCE_IP_ADDR_1 = 0x0010;
    static SOURCE_IP_ADDR_2 = 0x0011;
    static SOURCE_IP_ADDR_3 = 0x0012;

    //IR
    static INTERRUPT = 0x0015;
    // IMR
    static INTERRUPT_MASK = 0x0016;

    // RTR
    static RETRY_TIME_0 = 0x0017;
    static RETRY_TIME_1 = 0x0018;
    // RCR
    static RETRY_COUNT = 0x0019;

    // RMSR
    static RX_MEM_SIZE = 0x001A;
    // TMSR
    static TX_MEM_SIZE = 0x001B;

    // SOCKET 0 REGISTERS
    static S0_MODE = 0x0400;
    static S0_COMMAND = 0x0401;
    static S0_INTERRUPT = 0x402;
    static S0_STATUS = 0x0403;

    static S0_SOURCE_PORT_0 = 0x0404;
    static S0_SOURCE_PORT_1 = 0x0405;

    static S0_DEST_HW_ADDR_0 = 0x0406;
    static S0_DEST_HW_ADDR_1 = 0x0407;
    static S0_DEST_HW_ADDR_2 = 0x0408;
    static S0_DEST_HW_ADDR_3 = 0x0409;
    static S0_DEST_HW_ADDR_4 = 0x040A;
    static S0_DEST_HW_ADDR_5 = 0x040B;

    static S0_DEST_IP_ADDR_0 = 0x040C;
    static S0_DEST_IP_ADDR_1 = 0x040D;
    static S0_DEST_IP_ADDR_2 = 0x040E;
    static S0_DEST_IP_ADDR_3 = 0x040F;

    static S0_DEST_PORT_0 = 0x0410;
    static S0_DEST_PORT_1 = 0x0411;

    // SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
    static S0_TX_SIZE_R1 = 0x0420;
    static S0_TX_SIZE_R2 = 0x0421;

    // SOCKET TX WRITE POINTER
    static S0_TX_WP_R1 = 0x0424;
    static S0_TX_WP_R2 = 0x0425;

    // SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
    static S0_RX_SIZE_R1 = 0x0426;
    static S0_RX_SIZE_R2 = 0x0427;

    // SOCKET RX READ POINTER
    static S0_RX_RP_R1 = 0x0428;
    static S0_RX_RP_R2 = 0x0429;

    // SOCKET 1 REGISTERS
    static S1_MODE = 0x0500;
    static S1_COMMAND = 0x0501;
    static S1_INTERRUPT = 0x0502;
    static S1_STATUS = 0x0503;

    static S1_SOURCE_PORT_0 = 0x0504;
    static S1_SOURCE_PORT_1 = 0x0505;

    static S1_DEST_HW_ADDR_0 = 0x0506;
    static S1_DEST_HW_ADDR_1 = 0x0507;
    static S1_DEST_HW_ADDR_2 = 0x0508;
    static S1_DEST_HW_ADDR_3 = 0x0509;
    static S1_DEST_HW_ADDR_4 = 0x050A;
    static S1_DEST_HW_ADDR_5 = 0x050B;

    static S1_DEST_IP_ADDR_0 = 0x050C;
    static S1_DEST_IP_ADDR_1 = 0x050D;
    static S1_DEST_IP_ADDR_2 = 0x050E;
    static S1_DEST_IP_ADDR_3 = 0x050F;

    static S1_DEST_PORT_0 = 0x0510;
    static S1_DEST_PORT_1 = 0x0511;

    // SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
    static S1_TX_SIZE_R1 = 0x0520;
    static S1_TX_SIZE_R2 = 0x0521;

    // SOCKET TX WRITE POINTER
    static S1_TX_WP_R1 = 0x0524;
    static S1_TX_WP_R2 = 0x0525;

    // SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
    static S1_RX_SIZE_R1 = 0x0526;
    static S1_RX_SIZE_R2 = 0x0527;

    // SOCKET RX READ POINTER
    static S1_RX_RP_R1 = 0x0528;
    static S1_RX_RP_R2 = 0x0529;

    // SOCKET 2 REGISTERS
    static S2_MODE = 0x0600;
    static S2_COMMAND = 0x0601;
    static S2_INTERRUPT = 0x0602;
    static S2_STATUS = 0x0603;

    static S2_SOURCE_PORT_0 = 0x0604;
    static S2_SOURCE_PORT_1 = 0x0605;

    static S2_DEST_HW_ADDR_0 = 0x0606;
    static S2_DEST_HW_ADDR_1 = 0x0607;
    static S2_DEST_HW_ADDR_2 = 0x0608;
    static S2_DEST_HW_ADDR_3 = 0x0609;
    static S2_DEST_HW_ADDR_4 = 0x060A;
    static S2_DEST_HW_ADDR_5 = 0x060B;

    static S2_DEST_IP_ADDR_0 = 0x060C;
    static S2_DEST_IP_ADDR_1 = 0x060D;
    static S2_DEST_IP_ADDR_2 = 0x060E;
    static S2_DEST_IP_ADDR_3 = 0x060F;

    static S2_DEST_PORT_0 = 0x0610;
    static S2_DEST_PORT_1 = 0x0611;

    // SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
    static S2_TX_SIZE_R1 = 0x0620;
    static S2_TX_SIZE_R2 = 0x0621;

    // SOCKET TX WRITE POINTER
    static S2_TX_WP_R1 = 0x0624;
    static S2_TX_WP_R2 = 0x0625;

    // SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
    static S2_RX_SIZE_R1 = 0x0626;
    static S2_RX_SIZE_R2 = 0x0627;

    // SOCKET RX READ POINTER
    static S2_RX_RP_R1 = 0x0628;
    static S2_RX_RP_R2 = 0x0629;

    // SOCKET 3 REGISTERS
    static S3_MODE = 0x0700;
    static S3_COMMAND = 0x0701;
    static S3_INTERRUPT = 0x0702;
    static S3_STATUS = 0x0703;

    static S3_SOURCE_PORT_0 = 0x0704;
    static S3_SOURCE_PORT_1 = 0x0705;

    static S3_DEST_HW_ADDR_0 = 0x0706;
    static S3_DEST_HW_ADDR_1 = 0x0707;
    static S3_DEST_HW_ADDR_2 = 0x0708;
    static S3_DEST_HW_ADDR_3 = 0x0709;
    static S3_DEST_HW_ADDR_4 = 0x070A;
    static S3_DEST_HW_ADDR_5 = 0x070B;

    static S3_DEST_IP_ADDR_0 = 0x070C;
    static S3_DEST_IP_ADDR_1 = 0x070D;
    static S3_DEST_IP_ADDR_2 = 0x070E;
    static S3_DEST_IP_ADDR_3 = 0x070F;

    static S3_DEST_PORT_0 = 0x0710;
    static S3_DEST_PORT_1 = 0x0711;

    // SOCKET TX FREE SIZE REGISTER (Sn_TX_FREE_SIZE)
    static S3_TX_SIZE_R1 = 0x0720;
    static S3_TX_SIZE_R2 = 0x0721;

    // SOCKET TX WRITE POINTER
    static S3_TX_WP_R1 = 0x0724;
    static S3_TX_WP_R2 = 0x0725;

    // SOCKET RX RECEIVED SIZE REGISTER (Sn_RX_RSR)
    static S3_RX_SIZE_R1 = 0x0726;
    static S3_RX_SIZE_R2 = 0x0727;

    // SOCKET RX READ POINTER
    static S3_RX_RP_R1 = 0x0728;
    static S3_RX_RP_R2 = 0x0729;

    // MODES
    static SW_RESET = 0x80;
    static PING_BLOCK = 0x10;
    static PPPoE = 0x08;
    static ADDR_AUTO_INCR = 0x02;
    static INDIR_BUS = 0x01;
    static DEFAULT_MODE = 0x00;

    // SOCKET MODES (Sn_MR)
    static SOCKET_MODE_MULTI = 0x80;
    static SOCKET_MODE_MAC_FILTER = 0x40;
    static SOCKET_MODE_DELAY_ACK_MCv1 = 0x20;
    static SOCKET_MODE_CLOSED = 0x00;
    static SOCKET_MODE_TCP = 0x01;
    static SOCKET_MODE_UDP = 0x02;
    static SOCKET_MODE_IPRAW = 0x03;
    static SOCKET_MODE_MACRAW = 0x04;
    static SOCKET_MODE_PPPoE = 0x05;

    // SOCKET COMMANDS (Sn_CR)
    static SOCKET_OPEN = 0x01;
    static SOCKET_LISTEN = 0x02;
    static SOCKET_CONNECT = 0x04;
    static SOCKET_DICONNECT = 0x08;
    static SOCKET_CLOSE = 0x10;
    static SOCKET_SEND = 0x20;
    static SOCKET_SEND_MAC = 0x21;
    static SOCKET_SEND_KEEP = 0x22;
    static SOCKET_RECEIVE = 0x40;

    // SOCKET STATUS (Sn_SR)
    static SOCKET_STATUS_CLOSED = 0x00;
    static SOCKET_STATUS_INIT = 0x13;
    static SOCKET_STATUS_LISTEN = 0x14;
    static SOCKET_STATUS_ESTABLISHED = 0x17;
    static SOCKET_STATUS_CLOSE_WAIT = 0x1C;
    static SOCKET_STATUS_UDP = 0x22;
    static SOCKET_STATUS_IPRAW = 0x32;
    static SOCKET_STATUS_MACRAW = 0x42;
    static SOCKET_STATUS_PPPOE = 0x5F;
    static SOCKET_STATUS_SYNSENT = 0x15;
    static SOCKET_STATUS_SYNRECV = 0x16;
    static SOCKET_STATUS_FIN_WAIT = 0x18;
    static SOCKET_STATUS_CLOSING = 0x1A;
    static SOCKET_STATUS_TIME_WAIT = 0x1B;
    static SOCKET_STATUS_LAST_ACK = 0x1D;
    static SOCKET_STATUS_ARP = 0x01;

    static CONNECTION_RETRY = 8;

    // INTERRUPT TYPES
    static CONFLICT_INT_TYPE = 0x80;
    static UNREACH_INT_TYPE = 0x40;
    static PPPoE_INT_TYPE = 0x20;
    static S3_INT_TYPE = 0x08;
    static S2_INT_TYPE = 0x04;
    static S1_INT_TYPE = 0x02;
    static S0_INT_TYPE = 0x01;
    static NONE_INT_TYPE = 0x00;

    // SOCKET INTERRUPT TYPES
    static SEND_COMPLETE_INT_TYPE = 0x10;
    static TIMEOUT_INT_TYPE = 0x08;
    static DATA_RECEIVED_INT_TYPE = 0x04;
    static DISCONNECTED_INT_TYPE = 0x02;
    static CONNECTED_INT_TYPE = 0x01;

    // MEMORY CONSTANTS
    static CHIP_BASE_ADDR = 0x00;
    static RX_BASE = 0x6000;
    static TX_BASE = 0x4000;
    static CHIP_MAX_ADDR = 0x8000;

    static MASK_1k = 0x03FF;
    static MASK_2k = 0x07FF;
    static MASK_4k = 0x0FFF;
    static MASK_8k = 0x1FFF;

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

    // CLASS VARIABLES
    _spi = null;
    _cs = null;
    _resetPin = null;
    _connectionRetryCounter = null;
    _receiveCallback = null;

    /***************************************************************************
     * Constructor
     * Returns: null
     * Parameters:
     *      spi - configured spi bus, chip supports spi mode 0 or 3
     *      cs - configured chip select pin
     *      reset(optional) - configured reset pin
     **************************************************************************/
    constructor(spi, cs, resetPin = null) {
        _spi = spi;
        _cs = cs;
        _resetPin = resetPin;

        _configurePin(_cs);
        if(resetPin) _configurePin(_resetPin);
        _setMemDefaults();
        _connectionRetryCounter = CONNECTION_RETRY;
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
     * setRXMem
     * Returns: this
     * Parameters:
     *      memory - an array of four integers with the desired receive memory
     *               allotment for each socket (supported values are 1, 2, 4, 8)
     **************************************************************************/
    function setRXMem(memory) {
        local rx_mem = 0x00;
        local mask = 0x00;
        foreach (socket, mem_size in memory) {
            local socket_mem = 0x00;
            if(mem_size >= 8) {
                mem_size = 8;
                mask = MASK_8k;
            } else if (mem_size >= 4) {
                mem_size = 4;
                mask = MASK_4k;
            } else if (mem_size >= 2) {
                mem_size = 2;
                mask = MASK_2k;
            } else {
                mem_size = 1;
                mask = MASK_1k;
            }
            _setMask(socket, mask, "rx");

            socket_mem = _setMemory(socket, mem_size);
            rx_mem = rx_mem | socket_mem;
        }

        _setSocketRxMemBase();
        writeReg(RX_MEM_SIZE, rx_mem);
        return this;
    }

    /***************************************************************************
     * setTXMem
     * Returns: this
     * Parameters:
     *      memory - an array of four integers with the desired transmit memory
     *               allotment for each socket (supported values are 1, 2, 4, 8)
     **************************************************************************/
    function setTXMem(memory) {
        local tx_mem = 0x00;
        local mask = 0x00;
        foreach (socket, mem_size in memory) {
            local socket_mem = 0x00;
            if(mem_size >= 8) {
                mem_size = 8;
                mask = MASK_8k;
            } else if (mem_size >= 4) {
                mem_size = 4;
                mask = MASK_4k;
            } else if (mem_size >= 2) {
                mem_size = 2;
                mask = MASK_2k;
            } else {
                mem_size = 1;
                mask = MASK_1k;
            }
            _setMask(socket, mask, "tx");

            socket_mem = _setMemory(socket, mem_size);
            tx_mem = tx_mem | socket_mem;
        }

        _setSocketTXMemBase();
        writeReg(TX_MEM_SIZE, tx_mem);
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
     * getSocketTXMemBase
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
     * getSocketTXMemBase
     * Returns: maximum TX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function getSocketTXMemMax(socket) {
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

    // SETUP FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * init
     * Returns: this
     * Parameters:
     *      networkSettings - table with keys: gatewayIP, sourceAddr, subnet, sourceIP
     *                        values are arrays of integers
     *      memorySettings (optional) - table with keys: txMem, rxMem
     *                                  values are socket memory arrays
     *      mode - (optional) select mode using MODE constants or-ed together
     **************************************************************************/
    function init(networkSettings, memorySettings = null, mode = null) {
        // check parameters
        if (typeof memorySettings == "integer") {
            mode = memorySettings;
            memorySettings = null;
        }

        // set mode
        if (mode != null) setMode(mode);

        // configure network
        configureNetworkSettings(networkSettings);

        // configure memory
        if (memorySettings != null) {
            if ("txMem" in memorySettings && typeof memorySettings.txMem == "array") setTXMem(memorySettings.txMem);
            if ("rxMem" in memorySettings && typeof memorySettings.rxMem == "array") setRXMem(memorySettings.rxMem);
        }
        return this;
    }

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
            setMode(SW_RESET);
            imp.sleep(0.01);
        }
        return this;
    }

    /***************************************************************************
     * configureNetworkSettings
     * Returns: this
     * Parameters:
     *      networkSettings - table with keys: gatewayIP, sourceAddr, subnet, sourceIP
     *                        values are arrays of integers
     **************************************************************************/
    function configureNetworkSettings(networkSettings) {
        if ("gatewayIP" in networkSettings) setGatewayAddr(networkSettings.gatewayIP);
        if ("sourceAddr" in networkSettings) setSourceHWAddr(networkSettings.sourceAddr);
        if ("subnet" in networkSettings) setSubnet(networkSettings.subnet);
        if ("sourceIP" in networkSettings) setSourceIP(networkSettings.sourceIP);
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
        setTXMem(txMem);
        setRXMem(rxMem);
        return this;
    }


    // CONNECTION FUNCTIONS
    // ---------------------------------------------

    /***************************************************************************
     * openConnection
     * Returns: socket connection status
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      networkSettings - table with keys: sourcePort, destIP, destPort
     *                        values are arrays of integers
     *      socketMode (optional) - set mode using SOCKET_MODES constant,
     *                              default mode is SOCKET_MODE_TCP
     **************************************************************************/
    function openConnection(socket, networkSettings, socketMode = null) {
        if (socketMode == null) socketMode = SOCKET_MODE_TCP;

        if (!("sourcePort" in networkSettings)) throw "Cannot open a connection. Missing Source Port";
        if (!("destIP" in networkSettings)) throw "Cannot open a connection. Missing Destination IP Address";
        if (!("destPort" in networkSettings)) throw "Cannot open a connection. Missing Destination Port";

        setSocketMode(socket, socketMode);
        setSourcePort(socket, networkSettings.sourcePort);
        sendSocketCommand(socket, SOCKET_OPEN);

        setDestIP(socket, networkSettings.destIP);
        setDestPort(socket, networkSettings.destPort);
        sendSocketCommand(socket, SOCKET_CONNECT);

        return getSocketStatus(socket);
    }

    /***************************************************************************
     * closeConnection
     * Returns: socket connection status
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function closeConnection(socket) {
        sendSocketCommand(socket, SOCKET_CLOSE);
        return getSocketStatus(socket);
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
     * transmit
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      transmitData - array of data to transmit
     **************************************************************************/
    function transmit(socket, transmitData) {
        if (connectionEstablished(socket)) {
            if (dataWaiting(socket) && _receiveCallback) {
                _receiveCallback( _readRxData(socket) );
            }
            _sendTxData(socket, transmitData);
        } else {
            checkstate(socket, function() {
                transmit(socket, transmitData);
            });
        }
        return this;
    }

    /***************************************************************************
     * receive
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      pollingData(optional) - number of seconds to wait
     *                              between recieve checks
     *      cb(optional) - callback to pass receive data to
     *                     (note: if callback is passed in it will superceede
     *                     the callback set by setReceiveCallback)
     **************************************************************************/
    function receive(socket, pollingInt = null, cb = null) {
        if (typeof pollingInt == "function") {
            cb = pollingInt;
            pollingInt = null;
        }

        if ( connectionEstablished(socket) ) {
            if ( dataWaiting(socket) ) {
                if(cb) {
                    cb( _readRxData(socket) );
                } else if (_receiveCallback) {
                    _receiveCallback( _readRxData(socket) );
                }
            }
            if (pollingInt != null) {
                imp.wakeup(pollingInt, function() {
                    receive(socket, pollingInt, cb);
                }.bindenv(this));
            }
        } else {
            checkstate(socket, function() {
                receive(socket, pollingInt, cb);
            });
        }
    }

    /***************************************************************************
     * checkstate, if connection established calls callback, otherwise
     *             retrys a handful of known connection states
     * Returns: socket connection status
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      cb(optional) - function to be called if connection is established
     **************************************************************************/
    function checkstate(socket, cb = null) {
        local status = getSocketStatus(socket);

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
                sendSocketCommand(socket, SOCKET_CLOSE);
                break;
            case SOCKET_STATUS_CLOSED:
                server.log("SOCKET_STATUS_CLOSED");
                sendSocketCommand(socket, SOCKET_CLOSE);
                break;
            default :
                sendSocketCommand(socket, SOCKET_CLOSE);
        }
        return status;
    }

    /***************************************************************************
     * dataWaiting
     * Returns: boolean
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function dataWaiting(socket) {
        return (getRxDataSize(socket) == 0x00) ? false : true;
    }

    /***************************************************************************
     * connectionEstablished
     * Returns: boolean
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function connectionEstablished(socket) {
        return (getSocketStatus(socket) == SOCKET_STATUS_ESTABLISHED) ? true : false;
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

        _cs.write(0);

        b.writen(READ_COMMAND, 'b');
        addr.writen(reg, 'w');
        b.writen(addr[1], 'b');
        b.writen(addr[0], 'b');
        b.writen(0x00, 'b');
        res = _spi.writeread(b);

        _cs.write(1);

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

        _cs.write(0);

        b.writen(WRITE_COMMAND, 'b');
        addr.writen(reg, 'w');
        b.writen(addr[1], 'b');
        b.writen(addr[0], 'b');
        b.writen(value, 'b');
        _spi.write(b);

        _cs.write(1);
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
        gS1_RX_BASE = gS0_RX_BASE + (gS0_RX_MASK + 1);
        gS2_RX_BASE = gS1_RX_BASE + (gS1_RX_MASK + 1);
        gS3_RX_BASE = gS2_RX_BASE + (gS2_RX_MASK + 1);

        // defualt memory settings
        gS0_TX_MASK = MASK_2k;
        gS1_TX_MASK = MASK_2k;
        gS2_TX_MASK = MASK_2k;
        gS3_TX_MASK = MASK_2k;

        gS0_TX_BASE = CHIP_BASE_ADDR + TX_BASE;
        gS1_TX_BASE = gS0_TX_BASE + (gS0_TX_MASK + 1);
        gS2_TX_BASE = gS1_TX_BASE + (gS1_TX_MASK + 1);
        gS3_TX_BASE = gS2_TX_BASE + (gS2_TX_MASK + 1);
    }

    /***************************************************************************
     * _setMemory
     * Returns: memory register value
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      memory - human readable memory value
     **************************************************************************/
    function _setMemory(socket, memory) {
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
     * _setSocketTXMemBase, calculates/stores transmit socket base addresses
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _setSocketTXMemBase() {
        gS1_TX_BASE = gS0_TX_BASE + (gS0_TX_MASK + 1);
        gS2_TX_BASE = gS1_TX_BASE + (gS1_TX_MASK + 1);
        gS3_TX_BASE = gS2_TX_BASE + (gS2_TX_MASK + 1);
    }

    /***************************************************************************
     * _setSocketRxMemBase, calculates/stores receive socket base addresses
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _setSocketRxMemBase() {
        gS1_RX_BASE = gS0_RX_BASE + (gS0_RX_MASK + 1);
        gS2_RX_BASE = gS1_RX_BASE + (gS1_RX_MASK + 1);
        gS3_RX_BASE = gS2_RX_BASE + (gS2_RX_MASK + 1);
    }

    // TRANSMITION FUNCTIONS

    /***************************************************************************
     * _readRxData
     * Returns: data from received data register
     * Parameters:
     *      socket - select the socket using an integer 0-3
     **************************************************************************/
    function _readRxData(socket) {
        // get the received data size
        local dataSize = getRxDataSize(socket);
        local mem_base = getSocketRXMemBase(socket);
        local mem_max = getSocketTXMemMax(socket);

        // calculate offset address
        local rx_pointer = getRxReadPointer(socket);
        local rx_offset = rx_pointer & gS0_RX_MASK;
        server.log("pointer: " + rx_pointer);
        server.log("offset: " + rx_offset);

        // calculate start address(physical address)
        local rx_start_addr = rx_offset + gS0_RX_BASE;
        server.log("start: " + rx_start_addr);

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
     * _sendTxData
     * Returns: status of socket connection register
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      transmitData - data to be sent
     **************************************************************************/
    function _sendTxData(socket, transmitData) {
        local tx_length = transmitData.len();
        local tx_base = getSocketTXMemBase(socket);
        local tx_max = getSocketTXMemMax(socket);

        // get the free TX memory size
        // get_free_size = Sn_TX_FSR;
        local tx_free_size = getFreeTxDataSize(socket);
        server.log(format("size: 0x%04X", tx_free_size));

        // calculate offset address
        local tx_pointer = getTxWritePointer(socket);
        local tx_offset = tx_pointer & gS0_TX_MASK;
        server.log(format("pointer1: 0x%04X", tx_pointer));
        server.log(format("offset: 0x%04X", tx_offset));

        // calculate start address(physical address)
        local tx_start_addr = gS0_TX_BASE + tx_offset;
        server.log(format("start: 0x%04X", tx_start_addr));

        // write transmit data
        _writeData(tx_start_addr, transmitData, tx_base, tx_max);

        // increase Sn_TX_WR as length of send_size
        tx_pointer += tx_length;
        setTxWritePointer(socket, tx_pointer)

        // set SEND command
        sendSocketCommand(socket, SOCKET_SEND);

        return getSocketStatus(socket);
    }

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

    /***************************************************************************
     * _configurePin, configures a digital out pin pulled high
     * Returns: null
     * Parameters:
     *      pin - hardware pin to configure
     **************************************************************************/
    function _configurePin(pin) {
        pin.configure(DIGITAL_OUT, 1);
    }

    /***************************************************************************
     * _resetRetryCounter, resets retryCounter to CONNECTION_RETRY value
     * Returns: null
     * Parameters: none
     **************************************************************************/
    function _resetRetryCounter() {
        _connectionRetryCounter = CONNECTION_RETRY;
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
            checkstate(socket, cb);
        } else {
            sendSocketCommand(socket, SOCKET_CLOSE);
            _resetRetryCounter;
        }
    }

}