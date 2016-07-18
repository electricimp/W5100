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
     * Returns: this
     * Parameters:
     *      networkSettings - table with keys: gatewayIP, sourceAddr, subnet, sourceIP
     *                        values are arrays of integers
     *      memorySettings (optional) - table with keys: txMem, rxMem
     *                                  values are socket memory arrays
     *      mode - (optional) select mode using MODE constants or-ed together

### configureNetworkSettings(*networkSettings*)
     * Returns: this
     * Parameters:
     *      networkSettings - table with keys: gatewayIP, sourceAddr, subnet, sourceIP
     *                        values are arrays of integers

### configureSocketMemory(*txMem, rxMem*)
     * Returns: this
     * Parameters:
     *      txMem - an array of four integers with the desired transmit memory
     *              allotment for each socket (supported values are 1, 2, 4, 8)
     *      rxMem - an array of four integers with the desired receive memory
     *              allotment for each socket (supported values are 1, 2, 4, 8)

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

### setMode(*mode*)
     * Returns: this
     * Parameters:
     *      mode - select mode using MODE constants or-ed together

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
### writeReg(*reg, value*)
### reset()
     * note this is blocking for 0.01s
     * Returns: this
     * Parameters: none

## License
The W5100 library is licensed under the [MIT License](./LICENSE).