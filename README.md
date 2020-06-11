<h3>Ethernet W5500</h3>
<p>The W5500 chip is hardwired TCP/IP embedded Ethernet controller that provides easier Internet connection to embedded systems. W5500 enables user to have the Internet connectivity in their applications just by using single chip in which TCP/IP stack, 10/100 ethernet MAC and PHY embedded. This chip supports TCP, UDP, IPv4, ICMP, ARP, IGMP and PPPoe protocols. W5500 embeds the 32Kbyte internal memory buffer for the Ethernet packet processing.</p>

<h3>How to use?</h3>
<p>First connect your microcontroller with Ethernet W5500 device, for this communication I used SPI Master/Slave communication protocol. Follow this wired diagram:</p>

<img width="500" height="255" src="https://i.imgur.com/QlB0E7p.png" style="text-align: center;"></img>

<p>After wiring, connect W5500 and your Notebook or PC with xTP cable, in <i>main.c</i> file you can change IP address of W5500 chip, and destination(notebook) IP, and PORT. Now you can flash <i>.hex</i> file on your microcontroller, and test all configuration using <i>NetCat(command: nc -l 5000)</i> like shown on image:</p>

<img width="100%" height="550" src="https://i.imgur.com/lhSkVTK.png" style="text-align: center;"></img>

<h3>Connecting W5500 with NodeJS, showing data on website</h3>
<p>Before all, you need to install NodeJS with modules:</p>
<pre>npm i express http socket.io net</pre>

<p>I used Socket.IO for realtime reading, and showing data from an socket. You can find NodeJS and HTML configuration inside <i>server</i> folder.</p>
