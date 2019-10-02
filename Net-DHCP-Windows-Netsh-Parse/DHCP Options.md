# Options

| Code | Name               | Length                | Note                                                                                                           |
|------|--------------------|-----------------------|----------------------------------------------------------------------------------------------------------------|
| 0    | Pad                | 0 octets              | Can be used to pad other options so that they are aligned to the word boundary; is not followed by length byte |
| 1    | Subnet mask        | 4 octets              | Must be sent before the router option (option 3) if both are included                                          |
| 2    | Time offset        | 4 octets              |                                                                                                                |
| 3    | Router             | Multiples of 4 octets | Available routers, should be listed in order of preference                                                     |
| 4    | Time server        | Multiples of 4 octets | Available time servers to synchronise with, should be listed in order of preference                            |
| 5    | Name server        | Multiples of 4 octets | Available IEN 116 name servers, should be listed in order of preference                                        |
| 6    | Domain name server | Multiples of 4 octets | Available DNS servers, should be listed in order of preference                                                 |
| 7    | Log server         | Multiples of 4 octets | Available log servers, should be listed in order of preference.                                                |
| 8    | Cookie server      | Multiples of 4 octets | Cookie in this case means "fortune cookie"                                                                     |
| 9    | LPR Server         | Multiples of 4 octets |                                                                                                                |
| 10   | Impress server     | Multiples of 4 octets |                                                                                                                |
| 11   | Res loc svr        | Multiples of 4 octets |                                                                                                                |
| 12   | Host name          | Minimum of 1 octet    |                                                                                                                |
| 13   | Boot file   size   | 2 octets              | Length of the boot image in 4KiB blocks                                                                        |
| 14   | Merit dump file    | Minimum of 1 octet    | Path where crash dumps should be stored                                                                        |
| 15   | Domain name        | Minimum of 1 octet    |                                                                                                                |
| 16   | Swap server        | 4 octets              |                                                                                                                |
| 17   | Root path          | Minimum of 1 octet    |                                                                                                                |
| 18   | Extensions path    | Minimum of 1 octet    |                                                                                                                |
| 255  | End                | 0 octets              | Used to mark the end of the vendor option field                                                                |

# IP layer parameters per host

| Code | Name                                    | Length                | Note |
|------|-----------------------------------------|-----------------------|------|
| 19   | IP forwarding enable/disable            | 1 octet               |      |
| 20   | Non-local source routing enable/disable | 1 octet               |      |
| 21   | Policy filter                           | Multiples of 8 octets |      |
| 22   | Maximum datagram reassembly size        | 2 octets              |      |
| 23   | Default IP time-to-live                 | 1 octet               |      |
| 24   | Path MTU aging timeout                  | 4 octets              |      |
| 25   | Path MTU plateau table                  | Multiples of 2 octets |      |

# IP Layer Parameters per Interface

| Code | Name                        | Length                | Note                               |
|------|-----------------------------|-----------------------|------------------------------------|
| 26   | Interface MTU               | 2 octets              |                                    |
| 27   | All subnets are local       | 1 octet               |                                    |
| 28   | Broadcast address           | 4 octets              |                                    |
| 29   | Perform mask discovery      | 1 octet               |                                    |
| 30   | Mask supplier               | 1 octet               |                                    |
| 31   | Perform router discovery    | 1 octet               |                                    |
| 32   | Router solicitation address | 4 octets              |                                    |
| 33   | Static route                | Multiples of 8 octets | A list of destination/router pairs |

# Link layer parameters per interface

| Code | Name                         | Length   | Note |
|------|------------------------------|----------|------|
| 34   | Trailer encapsulation option | 1 octet  |      |
| 35   | ARP cache timeout            | 4 octets |      |
| 36   | Ethernet encapsulation       | 1 octet  |      |

# TCP parameters

| Code | Name                   | Length   | Note |
|------|------------------------|----------|------|
| 37   | TCP default TTL        | 1 octet  |      |
| 38   | TCP keepalive interval | 4 octets |      |
| 39   | TCP keepalive garbage  | 1 octet  |      |

# Application and service parameters

| Code | Name                                             | Length                | Note |
|------|--------------------------------------------------|-----------------------|------|
| 40   | Network information service domain               | Minimum of 1 octet    |      |
| 41   | Network information servers                      | Multiples of 4 octets |      |
| 42   | Network Time Protocol (NTP) servers              | Multiples of 4 octets |      |
| 43   | Vendor-specific information                      | Minimum of 1 octets   |      |
| 44   | NetBIOS over TCP/IP name server                  | Multiples of 4 octets |      |
| 45   | NetBIOS over TCP/IP datagram Distribution Server | Multiples of 4 octets |      |
| 46   | NetBIOS over TCP/IP node type                    | 1 octet               |      |
| 47   | NetBIOS over TCP/IP scope                        | Minimum of 1 octet    |      |
| 48   | X Window System font server                      | Multiples of 4 octets |      |
| 49   | X Window System display manager                  | Multiples of 4 octets |      |
| 64   | Network Information Service+ domain              | Minimum of 1 octet    |      |
| 65   | Network Information Service+ servers             | Multiples of 4 octets |      |
| 68   | Mobile IP home agent                             | Multiples of 4 octets |      |
| 69   | Simple Mail Transfer Protocol (SMTP) server      | Multiples of 4 octets |      |
| 70   | Post Office Protocol (POP3) server               | Multiples of 4 octets |      |
| 71   | Network News Transfer Protocol (NNTP) server     | Multiples of 4 octets |      |
| 72   | Default World Wide Web (WWW) server              | Multiples of 4 octets |      |
| 73   | Default Finger protocol server                   | Multiples of 4 octets |      |
| 74   | Default Internet Relay Chat (IRC) server         | Multiples of 4 octets |      |
| 75   | StreetTalk server                                | Multiples of 4 octets |      |
| 76   | StreetTalk Directory Assistance (STDA) server    | Multiples of 4 octets |      |

# DHCP extensions

| Code | Name                      | Length              | Note |
|------|---------------------------|---------------------|------|
| 50   | Requested IP address      | 4 octets            |      |
| 51   | IP address                | lease time 4 octets |      |
| 52   | Option overload           | 1 octet             |      |
| 53   | DHCP message type         | 1 octet             |      |
| 54   | Server identifier         | 4 octets            |      |
| 55   | Parameter request list    | Minimum of 1 octet  |      |
| 56   | Message                   | Minimum of 1 octet  |      |
| 57   | Maximum DHCP message size | 2 octets            |      |
| 58   | Renewal (T1) time value   | 4 octets            |      |
| 59   | Rebinding (T2) time value | 4 octets            |      |
| 60   | Vendor class identifier   | Minimum of 1 octet  |      |
| 61   | Client-identifier         | Minimum of 2 octets |      |
| 66   | TFTP server name          | Minimum of 1 octet  |      |
| 67   | Bootfile name             | Minimum of 1 octet  |      |

# Misc Other

| Code | Name                                   | Length                                    | Note               |
|------|----------------------------------------|-------------------------------------------|--------------------|
| 82   | Relay agent information                | Minimum of 2 octets                       | RFC 3046           |
| 85   | Novell Directory Service (NDS) servers | Minimum of 4 octets, multiple of 4 octets | RFC 2241:Section 2 |
| 86   | NDS tree name                          | Variable                                  | RFC 2241:Section 3 |
| 87   | NDS context                            | Variable                                  | RFC 2241:Section 4 |
| 100  | Time zone, POSIX style                 | Variable                                  | RFC 4833           |
| 101  | Time zone, tz database style           | Variable                                  | RFC 4833           |
| 119  | Domain search                          | Variable                                  | RFC 3397           |
| 121  | Classless static route                 | Variable                                  | RFC 3442           |

# Windows Default Supported

* 1-49
* 51
* 58-60
* 64-76
