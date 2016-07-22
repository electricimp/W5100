#Wiznet

Connection API for Wiznet chips.  Currently the only tested chip is the [Wiznet W5100](http://www.wiznet.co.kr/wp-content/uploads/wiznethome/Chip/W5100/Document/W5100_Datasheet_v1.2.6.pdf) all-in-one ethernet controller: Hardware TCP/IP, MAC, PHY.  The W5100 chip is a hardwired TCP/IP embedded Ethernet controller that enables easier Internet connection for embedded systems.  This library supports the SPI integration with the W5100.

**To add this code to your project, copy and paste the entire contents of the ** `Wiznet.class.nut` ** file at the top of your device code.**

## Class Usage

### Constructor: Wiznet(*spi, interruptPin[, csPin][, resetPin]*)

The constructor takes two (required) parameters: a configured SPI object, and the interrupt pin.  If you do not pass in a csPin you must configure the SPI with USE_CS_L constant (Note: this feature is only available on the Imp005).  If you are not using the Imp005 you must pass in the digital output pin to be used as the chip select.  If you wish to do a hardware reset of the W5100, the digital output pin connected to the chip's reset pin can also be passed in.  The pins will all be configured by the constructor, however you must configure the SPI object before calling the constructor.  The W5100 supports SPI modes 0 and 3, MSB first.  The chip can support speeds up to 14000.

#####Example Code:
```squirrel
// setup for an Imp 005
speed <- 4000;
spi <- hardware.spiABCD;
spi.configure(CLOCK_IDLE_LOW | MSB_FIRST | USE_CS_L, speed);

resetPin <- hardware.pinE;
interruptPin <- hardware.pinXA;

wiz <- Wiznet(spi, interruptPin, null, resetPin);
```

```squirrel
// setup for an Imp 001 or 002
speed <- 4000;
spi <- hardware.spi257
spi.configure(CLOCK_IDLE_LOW | MSB_FIRST, speed);

cs <- hardware.pin8;
resetPin <- hardware.pin9;
interruptPin <- hardware.pin1;

wiz <- Wiznet(spi, interruptPin, cs, resetPin);
```

## Class Methods

### configureNetworkSettings(*networkSettings*)
The *configureNetworkSettings()* method takes one required parameter: a *networkSettings* table.  The table below lists the keys that can be configured with this method.

#### Network Settings
| Keys | Value Type | Descrtiption |
| ----- | --------------- | ---------------- |
| *gatewayIP* | array of integers | The IP address for the network's gateway.  For IP address 192.168.1.1 pass in array:  [192, 168, 1, 1] |
| *subnet* | array of integers | The network subnet address. For subnet address 225.225.225.0 pass in array:  [225, 225, 225, 0]  |
| *sourceAddr* | array of integers | The mac address for WizNet adapter.  For mac address 0008dc000001 pass in array [0x00, 0x08, 0xDC, 0x00, 0x00, 0x01] |
| *sourceIP* | array of integers | The IP address for WizNet adapter. For IP address 192.168.1.2 pass in array:  [192, 168, 1, 2] |

#####Example Code:
```squirrel
networkSettings <-  { "gatewayIP"  : [192, 168, 1, 1],
                      "sourceAddr" : [0x00, 0x08, 0xDC, 0x00, 0x00, 0x01],
                      "subnet"     : [255, 255, 255, 0],
                      "sourceIP"   : [192, 168, 1, 2]
                    }

wiz.configureNetworkSettings(networkSettings);
```

### setReceiveCallback(*cb*)
The *setReceiveCallback()* method takes one required parameter: a callback function that will be called whenever data is received.  The callback function takes two required parameters: the socket the data was received from, and the data received.

#####Example Code:
```squirrel
function logIncommingData(socket, data) {
    server.log("Socket " + socket + ": received data: " + data);
}

wiz.setReceiveCallback(logIncommingData);
```

### setDisconnectCallback(*cb*)
The *setDisconnectCallback()* method takes one required parameter: a callback function that will be called whenever the disconnect interrupt is triggered.  The callback function takes one required parameter: the socket that disconnected.

#####Example Code:
```squirrel
wiz.setDisconnectCallback(function(socket) {
    connectionSettings.socket <- socket;
    // try reopening a connection after waiting 5s
    imp.wakeup(5, function() {
        wiz.openConnection(connectionSettings);
    })
});
```

### setSocketInterrupts(*socketInts*)
The *setDisconnectCallback()* method takes one required parameter: the socket interrupt(s) that should be enabled.  To select the socket interrupts or together the constants in the table below.  By default socket 1 and 2 interrupts are enabled.

#### Socket Interrupt Constants
| Constant | Descrtiption |
| ------------ | ---------------- |
| S0_INT_TYPE | Enables Socket 0 interrupt |
| S1_INT_TYPE | Enables Socket 1 interrupt |
| S2_INT_TYPE | Enables Socket 2 interrupt |
| S3_INT_TYPE | Enables Socket 3 interrupt |
| NONE_INT_TYPE | Disables all socket interrupts |

#####Example Code:
```squirrel
// enable all socket interrupts
wiz.setSocketInterrupts(S0_INT_TYPE | S1_INT_TYPE | S2_INT_TYPE | S3_INT_TYPE);
```

### openConnection(*connectionSettings*)
The *openConnection()* method takes one required parameter: a *connectionSettings* table.  See the Connection Settings chart below for the required parameters.

#### Connection Settings
| Key | Value Type | Description |
| ----- | -------- | --------------- |
| socket | integer | Socket (0-3) to open the connection on |
| sourcePort | array of 2 integers | The source port.  For port 4242 pass in array: [0x10, 0x92] |
| destIP | array of 4 integers | The destination IP address. For IP address 192.168.1.42 pass in array:  [192, 168, 1, 42] |
| destPort | array of 2 integers | The destination port.  For port 4242 pass in array: [0x10, 0x92] |

#####Example Code:
```squirrel
connectionSettings <- { "socket"     : 0,
                        "sourcePort" : [0x10, 0x92],
                        "destIP"     : [192, 168, 1, 42],
                        "destPort"   : [0x10, 0x92]
                      };

wiz.openConnection(connectionSettings)
```

### closeConnection(*socket*)
The *openConnection()* method takes one required parameter: the *socket* to close the connection on.  Socket should be an integer 0-3.

#####Example Code:
```squirrel
wiz.closeConnection(0);
```

### transmit(*socket, transmitData[, cb]*)
The *transmit()* method takes two required parameters: the *socket* an integer(0-3) to transmit data on, and *transmitData* an array bytes, and one optional parameter *cb*: a callback function that is executed when transmission is complete.  The callback function takes two required parameters: *error*, a string if a transmision error occured, and *response* a string if data transmission is successful.

#####Example Code:
```squirrel
transmitData <- [0x1A, 0x00, 0x0C, 0x00, 0x48, 0x5D, 0x24, 0x00,
                 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x22,
                 0x8E, 0x53, 0xAF, 0xF0, 0x00, 0x00, 0x00, 0x00,
                 0x00, 0x00];

wiz.transmit(0, transmitData, function(err, res) {
    if (err) server.error(err);
    if (res == "OK") {
        server.log("ok to send next transmission...");
        wiz.transmit(0, [0x66, 0x66, 0x66], function(err, res) {
            if (err) server.error(err);
            if (res == "OK") server.log("second transmision sent...");
        })
    }
});
```

### receive(*socket[, cb]*)
The *receive()* method takes one required parameter: the *socket* an integer(0-3) to check for data on, and one optional parameter *cb*: a callback function that is executed if data is received.  The callback function takes one required parameters: the socket on which the data was received. If a callback is passed into receive it will superceede the callback set by setReceiveCallback.

**Note:** If socket interrupts are enabled there is no need to call receive.  The interrupt and receive callback will handle incoming data.


### reset()
The *reset()* method resets all registers to their defaults.  If a reset pin is passed in a harware reset will be invoked, if no reset pin is passed in a software reset will be called.

#####Example Code:
```squirrel
wiz.reset();
```

### configureSocketMemory(*txMem, rxMem*)
By default the W5100 equally distributes the socket memory.  Each socket is given a 2k buffer for transmit and receive.  To change the memory allotted use the *configureSocketMemory()* method.  This method takes two required parameters: an array with the transmit memory settings and an array with the receive memory settings.  Supported memory settings are 0k, 1k, 2k, 4k, 8k.  The total memory for the four sockets cannot exceede 8k.  Memory is assigned to sockets starting with socket 0.  When the 8k memory allotment is assigned remaining sockets will not have any memory, and should not be used.

####Memory Settings
| Parameter | Data Type | Descrtiption |
| ----- | --------------- | ---------------- |
| *txMem* | array of 4 integers | The transmit memory setting for each socket.  The index of the array corresponds to each socket. |
| *rxMem* | array of 4 integers | The receive memory setting for each socket.  The index of the array corresponds to each socket. |

#####Example Code:
```squirrel
txMem <- [4, 2, 1, 1];
rxMem <- [4, 2, 1, 1];

wiz.configureSocketMemory(txMem, rxMem);
```

### dataWaiting(*socket*)
The *dataWaiting()* method returns a boolean, if data is available.  It takes one required parameter: the *socket* an integer(0-3) on which to check for data.

### connectionEstablished(*socket*)
The *connectionEstablished()* method returns a boolean, if the current state of the connection is *established*.  It takes one required parameter: the *socket* an integer(0-3) on which to check the connection.

### connectionClosed(*socket*)
The *connectionClosed()* method returns a boolean, if the current state of the connection is *closed*.  It takes one required parameter: the *socket* an integer(0-3) on which to check the connection.


## Extended Example
```squirrel
// PASTE Wiznet.nut FILE HERE

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

// not needed??
// microTechMac <- [0x00, 0xA0, 0x03, 0x09, 0x09, 0xA6]; //really the microTech
// microTechMac <- [0x38, 0xC9, 0x86, 0x40, 0x60, 0x18]; // thunderbolt adapter computer

local socket_0 = 0;

networkSettings <-  { "gatewayIP"  : gatewayIP,
                      "sourceAddr" : wnHWAddr,
                      "subnet"     : subnetAddr,
                      "sourceIP"   : wnIP
                    };

connectionSettings <- { "socket"     : socket_0,
                        "sourcePort" : microTechPort,
                        "destIP"     : microTechIP,
                        "destPort"   : microTechPort
                      };

txMem <- [4, 4, 0, 0];
rxMem <- [4, 4, 0, 0];


// RUNTIME VARIABLES / SUPPORTING FUNCTIONS
// ------------------------------------------------

transmitData <- [0x1A, 0x00, 0x0C, 0x00, 0x48, 0x5D, 0x24, 0x00,
                 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x22,
                 0x8E, 0x53, 0xAF, 0xF0, 0x00, 0x00, 0x00, 0x00,
                 0x00, 0x00];

function logData(socket, data) {
    server.log("Socket " + socket + ": received data: " + data);
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

wiz <- Wiznet(spi, interruptPin, cs, resetPin);

wiz.configureNetworkSettings(networkSettings)
wiz.configureSocketMemory(txMem, rxMem);
wiz.setReceiveCallback(logData);

// wiz.setDisconnectCallback(function(socket) {
//     connectionSettings.socket <- socket;
//     // try reopening a connection
//     imp.wakeup(5, function() {
//         wiz.openConnection(connectionSettings);
//     })
// });

wiz.openConnection(connectionSettings)
wiz.transmit(socket_0, transmitData, function(err, res) {
    if (err) server.error(err);
    if (res == "OK") {
        server.log("ok to send next transmission...");
        wiz.transmit(socket_0, [0x66, 0x66, 0x66], function(err, res) {
            if (err) server.error(err);
            if (res == "OK") server.log("second transmision sent...");
        })
    }
});
```

## License
The Wiznet code is licensed under the [MIT License](./LICENSE).