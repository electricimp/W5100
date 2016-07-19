#W5100

Driver class for the [Wiznet W5100](http://www.wiznet.co.kr/wp-content/uploads/wiznethome/Chip/W5100/Document/W5100_Datasheet_v1.2.6.pdf) all-in-one ethernet controller: Hardware TCP/IP, MAC, PHY.

The W5100 chip is a hardwired TCP/IP embedded Ethernet controller that enables easier Internet connection for embedded systems.  This class supports SPI integration with the W5100.

**To add this library to your project, add** `#require "W5100.class.nut:1.0.0"` **to the top of your device code.**

## Class Usage

### Constructor: W5100(*spi, cs[, resetPin]*)

The constructor takes two (required) parameters: a configured SPI object, and the digital output pin to be used as the chip select.  Optionally the digital output pin connected to the W5100's reset pin can also be passed in.  The cs and reset pins will be configured by the constructor as digital output, pulled high.

The W5100 supports SPI modes 0 and 3, MSB first.  The chip can support speeds up to 14000.

```squirrel
speed <- 4000;
spi <- hardware.spi257
spi.configure(CLOCK_IDLE_LOW | MSB_FIRST, speed);

cs <- hardware.pin8;
resetPin <- hardware.pin9;

wiz <- W5100(spi, cs, resetPin);
```

## Class Methods

### init(*networkSettings[, memorySettings][, mode]*)
The *init()* method takes one required parameter: a *networkSettings* table, and two optional parameters: a *memorySettings* table and *mode*.  For details on the *networkSettings* table see [Network Settings](#network-settings) under configureNetworkSettings(). If *memorySettings* is not passed in the current memory settings will be used.  For details on *memorySettings* table see below. The mode can be selected by or-ing together one or more mode constants.  For details on *mode* see [Modes](#modes) under setMode().

####Memory Settings
Supported memory settings are 0k, 1k, 2k, 4k, 8k.  The total memory for the four sockets cannot exceede 8k.  Memory is assigned to sockets starting with socket 0.  When the 8k memory allotment is assigned remaining sockets will not have any memory, and should not be used.  Default memory settings when the chip is reset are 2k for each socket.

| Key | Value Type | Descrtiption |
| ----- | --------------- | ---------------- |
| *txMem* | array of 4 integers | The transmit memory setting for each socket.  The index of the array corresponds to each socket. |
| *rxMem* | array of 4 integers | The receive memory setting for each socket.  The index of the array corresponds to each socket. |

```squirrel
networkSettings <-  { "gatewayIP"  : [192, 168, 1, 1],
                      "sourceAddr" : [0x00, 0x08, 0xDC, 0x00, 0x00, 0x01],
                      "subnet"     : [255, 255, 255, 0],
                      "sourceIP"   : [192, 168, 1, 2]
                    }
memorySettings <- { "txMem": [4, 2, 1, 1], "rxMem": [4, 2, 1, 1] };

wiz.init(networkSettings, memorySettings);
```

### configureNetworkSettings(*networkSettings*)
The *configureNetworkSettings()* method takes one required parameter: a *networkSettings* table.  The required keys listed in the table below are the basic network settings need before a connection can be opened.

#### Network Settings
| Required Keys | Value Type | Descrtiption |
| ----- | --------------- | ---------------- |
| *gatewayIP* | array of integers | The IP address for the network's gateway.  For IP address 192.168.1.1 pass in array:  [192, 168, 1, 1] |
| *subnet* | array of integers | The network subnet address. For subnet address 225.225.225.0 pass in array:  [225, 225, 225, 0]  |
| *sourceAddr* | array of integers | The mac address for WizNet adapter.  For mac address 0008dc000001 pass in array [0x00, 0x08, 0xDC, 0x00, 0x00, 0x01] |
| *sourceIP* | array of integers | The IP address for WizNet adapter. For IP address 192.168.1.2 pass in array:  [192, 168, 1, 2] |

```squirrel
networkSettings <-  { "gatewayIP"  : [192, 168, 1, 1],
                      "sourceAddr" : [0x00, 0x08, 0xDC, 0x00, 0x00, 0x01],
                      "subnet"     : [255, 255, 255, 0],
                      "sourceIP"   : [192, 168, 1, 2]
                    }

wiz.configureNetworkSettings(networkSettings);
```

### setMode(*mode*)
The *configureNetworkSettings()* method takes one required parameter *mode*.  The mode can be selected by or-ing together one or more mode constants.  See the table below for possible mode constants.

#### Modes
| Mode Constant | Description |
| ------------------- | ---------------- |
| SW_RESET | Resets all registers to default settings, this register is automatically cleared after reset |
| PING_BLOCK | Enables Ping Block mode |
| PPPoE | Enables PPPoE mode, use to connect ADSL server without router |
| ADDR_AUTO_INCR | Enables Address Auto-Increment in Indirect Bus I/F |
| INDIR_BUS | Enables Indirect Bus I/F mode |
| DEFAULT_MODE | Clears all modes listed above |

```squirrel
// enable Address Auto-Incrementing and Indirect Bus I/F modes
wiz.setMode(wiz.ADDR_AUTO_INCR | wiz.INDIR_BUS);
```

### openConnection(*socket, networkSettings[, socketMode]*)
     * Returns: socket connection status
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      networkSettings - table with keys: sourcePort, destIP, destPort
     *                        values are arrays of integers
     *      socketMode (optional) - set mode using SOCKET_MODES constant,
     *                              default mode is SOCKET_MODE_TCP

### closeConnection(*socket*)
     * Returns: socket connection status
     * Parameters:
     *      socket - select the socket using an integer 0-3

### sendSocketCommand(*socket, command*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      command - select command using SOCKET_COMMANDS constant

### transmit(*socket, transmitData*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      transmitData - array of data to transmit

### receive(*socket[, pollingInt][, cb]*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      pollingData(optional) - number of seconds to wait
     *                              between recieve checks
     *      cb(optional) - callback to pass receive data to
     *                     (note: if callback is passed in it will superceede
     *                     the callback set by setReceiveCallback)

### configureSocketMemory(*txMem, rxMem*)
     * Returns: this
     * Parameters:
     *      txMem - an array of four integers with the desired transmit memory
     *              allotment for each socket (supported values are 1, 2, 4, 8)
     *      rxMem - an array of four integers with the desired receive memory
     *              allotment for each socket (supported values are 1, 2, 4, 8)

### checkstate(*socket[, cb]*)
     * if connection established calls callback, otherwise
     *             retrys a handful of known connection states
     * Returns: socket connection status
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      cb(optional) - function to be called if connection is established

### dataWaiting(*socket*)
     * Returns: boolean
     * Parameters:
     *      socket - select the socket using an integer 0-3

### connectionEstablished(*socket*)
     * Returns: boolean
     * Parameters:
     *      socket - select the socket using an integer 0-3

### setInterrupt(*type*)
     * Returns: this
     * Parameters:
     *      type - select interrupt type using interrupt type
     *             constants or-ed together

### clearInterrupt(*[type]*)
     * Returns: this
     * Parameters:
     *      type(optional) - clear specified interrupt type
     *                       if nothing passed in clears all interrupts

### clearSocketInterrupt(*socket[, type]*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      type(optional) - clear specified interrupt type
     *                       if nothing passed in clears all interrupts

### getInterruptStatus()
     * Returns: interrupt status table
     * Parameters: none

### getSocketInterruptStatus(*socket*)
     * Returns: socket interrupt status table
     * Parameters:
     *      socket - select the socket using an integer 0-3

### setSocketMode(*socket, mode*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      mode - select mode using SOCKET_MODE constant

### setRXMem(*memory*)
     * Returns: this
     * Parameters:
     *      memory - an array of four integers with the desired receive memory
     *               allotment for each socket (supported values are 1, 2, 4, 8)

### setTXMem(*memory*)
     * Returns: this
     * Parameters:
     *      memory - an array of four integers with the desired transmit memory
     *               allotment for each socket (supported values are 1, 2, 4, 8)

### setGatewayAddr(*addr*)
     * Returns: this
     * Parameters:
     *      addr - an array of four integers with the gateway IP address

### setSubnet(*addr*)
     * Returns: this
     * Parameters:
     *      addr - an array of four integers with the subnet address

### setSourceHWAddr(*addr*)
     * Returns: this
     * Parameters:
     *      addr - an array of 6 integers with the mac address for the
     *             source hardware

### setSourceIP(*addr*)
     * Returns: this
     * Parameters:
     *      addr - an array of 4 integers with the IP address for the
     *             source hardware

### setSourcePort(*socket, port*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 2 integers with the port for the
     *             source hardware
     *             (ex: for port 4242, addr = [0x10, 0x92])

### setDestHWAddr(*socket, addr*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 6 integers with the mac address for the
     *             destination hardware

### setDestIP(*socket, addr*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 4 integers with the IP address for the
     *             destination hardware

### setDestPort(*socket, port*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      addr - an array of 2 integers with the port for the
     *             destination hardware
     *             (ex: for port 4242, addr = [0x10, 0x92])

### setReceiveCallback(*cb*)
     * Returns: this
     * Parameters:
     *      cb - function to be called when data is received

### setRxReadPointer(*socket, value*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      value - new RX read pointer value

### setTxWritePointer(*socket, value*)
     * Returns: this
     * Parameters:
     *      socket - select the socket using an integer 0-3
     *      value - new TX write pointer value

### getSocketStatus(*socket*)
     * Returns: integer with the connection status for the socket passed in
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getRxReadPointer(*socket*)
     * Returns: value of read pointer
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getTxWritePointer(*socket*)
     * Returns: value of write pointer
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getRxDataSize(*socket*)
     * Returns: value of received data size register
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getFreeTxDataSize(*socket*)
     * Returns: value of TX data free size register
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getSocketTXMemBase(*socket*)
     * Returns: base TX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getSocketTXMemMax(*socket*)
     * Returns: maximum TX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getSocketRXMemBase(*socket*)
     * Returns: base RX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getSocketTXMemMax(*socket*)
     * Returns: maximum TX memory address for specified socket
     * Parameters:
     *      socket - select the socket using an integer 0-3

### getSocketIntAddr(*socket*)
     * Returns: interrupt register address of the socket passed in
     * Parameters:
     *      socket - select the socket using an integer 0-3

### readReg(*reg*)
     * Returns: data stored at the specified register
     * Parameters:
     *      reg - register to read

### writeReg(*reg, value*)
     * Returns: null
     * Parameters:
     *      reg - register to write to
     *      value - data to write to register

### reset()
     * note this is blocking for 0.01s
     * Returns: this
     * Parameters: none


## Extended Example
```squirrel
#require "W5100.class.nut:1.0.0"

// HARDWARE SETUP
// ---------------------------------------------
// CHIP SPI INFO
    // supports spi mode 0 and 3
    //  MSB first
    // chip should support up to 14000

speed <- 4000;
spi <- hardware.spi257
spi.configure(CLOCK_IDLE_LOW | MSB_FIRST, speed);

cs <- hardware.pin8;
resetPin <- hardware.pin9;

interruptPin <- hardware.pin1;

// NETWORK & MEMORY SETTINGS
// ---------------------------------------------

gatewayIP <- [192, 168, 1, 1];
subnetAddr <- [255, 255, 255, 0];

wnIP <- [192, 168, 1, 2];
wnHWAddr <- [0x00, 0x08, 0xDC, 0x00, 0x00, 0x01];

microTechIP <- [192, 168, 1, 42];
microTechPort <- [0x10, 0x92]; //4242
microTechMac <- [0x00, 0xA0, 0x03, 0x09, 0x09, 0xA6]; //really the microTech
// microTechMac <- [0x38, 0xC9, 0x86, 0x40, 0x60, 0x18]; // thunderbolt adapter computer

networkSettings <-  { "gatewayIP"  : gatewayIP,
                      "sourceAddr" : wnHWAddr,
                      "subnet"     : subnetAddr,
                      "sourceIP"   : wnIP,
                      "sourcePort" : microTechPort,
                      "destIP"     : microTechIP,
                      "destPort"   : microTechPort
                    }

memorySettings <- { "txMem": [8, 0, 0, 0], "rxMem": [8, 0, 0, 0] };


// RUNTIME VARIABLES / SUPPORTING FUNCTIONS
// ------------------------------------------------

local socket_0 = 0;
local pollingInt = 5;

transmitData <- [0x1A, 0x00, 0x0C, 0x00, 0x48, 0x5D, 0x24, 0x00,
                 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x22,
                 0x8E, 0x53, 0xAF, 0xF0, 0x00, 0x00, 0x00, 0x00,
                 0x00, 0x00];

function logData(data) {
    server.log(data);
}

function logreg(reg) {
    server.log(format("0x%X", reg));
}

function logtable(table) {
    foreach (k, v in table) {
        server.log(k + ": " + v);
    }
}


// RUNTIME CODE
// ------------------------------------------------

wiz <- W5100(spi, cs, resetPin);

// blocks writing to registers, so only use when really need to reset
// wiz.reset();

wiz.init(networkSettings, memorySettings, null);
wiz.setReceiveCallback(logData);

wiz.setInterrupt(wiz.S0_INT_TYPE);
wiz.clearSocketInterrupt(socket_0);
interruptPin.configure(DIGITAL_IN_WAKEUP, function() {
    local intTable = wiz.getSocketInterruptStatus(socket_0);
    if (intTable.DATA_RECEIVED) wiz.receive(socket_0);
    wiz.clearSocketInterrupt(socket_0);
});

wiz.openConnection(socket_0, networkSettings);
server.log( wiz.connectionEstablished(socket_0) );

wiz.transmit(socket_0, transmitData);


// imp.wakeup(60, function() {
//     wiz.closeConnection(socket);
// })
```

## License
The W5100 library is licensed under the [MIT License](./LICENSE).