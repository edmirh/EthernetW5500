<h3>Ethernet W5500</h3>
<p>The W5500 chip is hardwired TCP/IP embedded Ethernet controller that provides easier Internet connection to embedded systems. W5500 enables user to have the Internet connectivity in their applications just by using single chip in which TCP/IP stack, 10/100 ethernet MAC and PHY embedded. This chip supports TCP, UDP, IPv4, ICMP, ARP, IGMP and PPPoe protocols. W5500 embeds the 32Kbyte internal memory buffer for the Ethernet packet processing.</p>

<h3>How to use?</h3>
<p>First connect your microcontroller with Ethernet W5500 device, for this communication I used SPI Master/Slave communication protocol. Follow this wired diagram:</p>

<img width="500" height="255" src="https://i.imgur.com/s1wkc1q.png"></img>

<p>After wiring, connect W5500 and your Notebook or PC with xTP cable, in <i>main.c</i> file you can change IP address of W5500 chip, and destination(notebook) IP, and PORT. Now you can flash <i>.hex</i> file on your microcontroller, and test all configuration using <i>NetCat(command: nc -l 5000)</i> like shown on image:</p>

<img width="100%" height="550" src="https://i.imgur.com/lhSkVTK.png"></img>

<h3>Connecting W5500 with NodeJS, showing data on website</h3>
<p>Before all, you need to install NodeJS with modules:</p>
<pre>npm i express http socket.io net</pre>

<p>I used Socket.IO for realtime reading, and showing data from an socket. Here is NodeJS implementation:
<pre>var express = require('express');
var app = express();
var server = require("http").Server(app);
var io = require("socket.io")(server);
var net = require('net');

var netServer = net.createServer(function(c) {
  console.log('client connected');
  
  c.on('data', function (data) {
	c.setEncoding("utf8");
    io.sockets.emit('livedata', { livedata: data });
    console.log(data.toString());
  });
  
  c.on('end', function() {
    console.log('client disconnected');
  });

});

netServer.listen(5000);

app.get('/', function (req, res) {
  res.sendFile(__dirname+'/index.html');
});

server.listen(8080);
</pre>

<p>HTML code is included in this repository, named <i>index.html</i>.</p>

<h3>Useful links<h3>
<a href="https://www.st.com/resource/en/reference_manual/dm00031020-stm32f405415-stm32f407417-stm32f427437-and-stm32f429439-advanced-armbased-32bit-mcus-stmicroelectronics.pdf">STM32F407 Reference manual</a>
<a href="https://cdn.sparkfun.com/datasheets/Dev/Arduino/Shields/W5500_datasheet_v1.0.2_1.pdf">W5500 datasheet</a>
<a href="https://socket.io/">Socket.IO</a>
	
