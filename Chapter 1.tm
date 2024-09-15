<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns:m="http://www.w3.org/1998/Math/MathML" xmlns="http://www.w3.org/1999/xhtml" xmlns:x="https://www.texmacs.org/2002/extensions">
  <head>
    <title>Chapter 1</title>
    <meta content="TeXmacs 2.1.4" name="generator" charset="utf-8"></meta>
    <style type="text/css">
      body { text-align: justify } h5 { display: inline; padding-right: 1em }
      h6 { display: inline; padding-right: 1em } table { border-collapse:
      collapse } td { padding: 0.2em; vertical-align: baseline } dt { float:
      left; min-width: 1.75em; text-align: right; padding-right: 0.75em;
      font-weight: bold; } dd { margin-left: 2.75em; padding-bottom: 0.25em; }
      dd p { padding-top: 0em; } .subsup { display: inline; vertical-align:
      -0.2em } .subsup td { padding: 0px; text-align: left} .fraction {
      display: inline; vertical-align: -0.8em } .fraction td { padding: 0px;
      text-align: center } .wide { position: relative; margin-left: -0.4em }
      .accent { position: relative; margin-left: -0.4em; top: -0.1em }
      .title-block { width: 100%; text-align: center } .title-block p {
      margin: 0px } .compact-block p { margin-top: 0px; margin-bottom: 0px }
      .left-tab { text-align: left } .center-tab { text-align: center }
      .balloon-anchor { border-bottom: 1px dotted #000000; outline: none;
      cursor: help; position: relative; } .balloon-anchor [hidden] {
      margin-left: -999em; position: absolute; display: none; }
      .balloon-anchor: hover [hidden] { position: absolute; left: 1em; top:
      2em; z-index: 99; margin-left: 0; width: 500px; display: inline-block; }
      .balloon-body { } .ornament { border-width: 1px; border-style: solid;
      border-color: black; display: inline-block; padding: 0.2em; } .right-tab
      { float: right; position: relative; top: -1em; } .no-breaks {
      white-space: nowrap; } .underline { text-decoration: underline; }
      .overline { text-decoration: overline; } .strike-through {
      text-decoration: line-through; } del { text-decoration: line-through
      wavy red; } .fill-out { text-decoration: underline dotted; } 
    </style>
    <link href="https://www.texmacs.org/css/web-article-dark-colored.css" type="text/css" rel="stylesheet"></link>
  </head>
  <body>
    <p>
      <span style="margin-left: 8em"></span>Computer Networks Chapter 1 Monsoon 2024
    </p>
    <p>
      <span style="margin-left: 10em"></span>By Aahan Piplani CSAM (2022001)
    </p>
    <h2 id="auto-1">1<span style="margin-left: 1em"></span>What is Internet<span style="margin-left: 1em"></span></h2>
    <p>
      All the end Systems are connected together by a network of communication
      links and packet switches , and each type of connection has its own
      transmission rate which is measured in bits/second.
    </p>
    <p>
      When there is a need to send any data , the sender send the data segment
      by segment and adds header bytes to each segment. The resulting packages
      of information is called packets.They are then used at the receiver end
      to reassemble it into the original data.
    </p>
    <p>
      Now to make packet travel we have packet swicthers , which take the
      incoming data, and send it towards one of its outgoing communication
      links.
    </p>
    <p>
      The most common are Routers and Link-layer Switches. Both work for the
      same reason but the difference is that linklayer switches are used in
      access networks while routers are used in network core.
    </p>
    <p>
      The end systems are connected through ISP's , Internet is where
      everything is connected , and hence all the ISP's must be interconnected
      as well ( which they are )
    </p>
    <p>
      Now there can be multiple types of ISP's , one can be , including
      residential ISPs such as local cable or telephone companies; corporate
      ISPs; university ISPs; ISPs that provide WiFi access in airports etc.
    </p>
    <p>
      Each ISP is in itself a network of packet switches and communication
      links. The ISPs that provide access to end systems must also be
      interconnected. These lower-tier ISPs are interconnected through
      national and international upper-tier ISPs such as Level 3
      Communications.
    </p>
    <h3 id="auto-2">1.1<span style="margin-left: 1em"></span>What is a Protocol ?<span style="margin-left: 1em"></span></h3>
    <p>
      All activity in the Internet that involves two or more communicating
      remote entities is governed by a protocol.
    </p>
    <p>
      <b>A protocol defines the format and the order of messages exchanged
      between two or more communicating entities, as well as the actions taken
      on the transmission and/or receipt of a message or other event.</b>
    </p>
    <h2 id="auto-3">2<span style="margin-left: 1em"></span>Addressing in Internet<span style="margin-left: 1em"></span></h2>
    <p>
      Consider a case , You live in your house with your family members and
      you all have a router which everyone uses to access the internet , all
      phones , printers laptops are connected to a router.
    </p>
    <p>
      In the sense of above scenario here are the things to note:
    </p>
    <h3 id="auto-4">2.1<span style="margin-left: 1em"></span>IP addresses:<span style="margin-left: 1em"></span></h3>
    <p>
      An IP (Internet Protocol) address is a unique numerical label assigned
      to devices connected to a network that uses the Internet Protocol for
      communication. It serves two main functions: identifying the host or
      network interface and providing the location of the host in the network.
    </p>
    <h4 id="auto-5">2.1.1<span style="margin-left: 1em"></span>Private IP address:<span style="margin-left: 1em"></span></h4>
    <p>
      In your local network, each device (phone, laptop, printer, etc.) gets a
      private IP address. These addresses are used <strong>within your home
      network only</strong> and are not visible to the public internet. They
      allow the devices in your home to communicate with each other and with
      the router.
    </p>
    <p>
      <strong>How it works</strong>
    </p>
    <ul>
      <li>
        <p>
          Your router is acting as the central hub of your local network
          (called a <strong>LAN</strong> or Local Area Network).
        </p>
      </li>
      <li>
        <p>
          The router assigns <strong>private IP addresses</strong> to each
          device connected to it, usually through a service called
          <strong>DHCP</strong> (Dynamic Host Configuration Protocol), which
          automatically assigns IP addresses.
        </p>
        <p>
          
        </p>
      </li>
    </ul>
    <h4 id="auto-6">2.1.2<span style="margin-left: 1em"></span>Public IP address:<span style="margin-left: 1em"></span></h4>
    <p>
      This is the IP address that your router uses to communicate with the
      <strong>global internet</strong>. It is assigned by your
      <strong>Internet Service Provider (ISP)</strong> (like Airtel, Jio,
      BSNL) , and it is unique across the entire internet. All your devices
      share this public IP address when accessing the internet, thanks to a
      process called <strong>Network Address Translation (NAT)</strong>, where
      your router translates private IPs into the public IP when your devices
      communicate with external servers.
    </p>
    <h4 id="auto-7">2.1.3<span style="margin-left: 1em"></span>Dynamic IP addresses:<span style="margin-left: 1em"></span></h4>
    <p>
      Dynamic IPs are assigned by the network dynamically when a device
      connects. These addresses can change over time.
    </p>
    <p>
      Your router will be assigned a <strong>public IP address</strong> by
      your ISP, which allows your home network to be connected to the wider
      internet.
    </p>
    <p>
      This is the IP address that websites and external services see when you
      visit them from your home. However, each device inside your local
      network will have its own private IP, and only the router's public IP
      will be visible to the internet.
    </p>
    <h4 id="auto-8">2.1.4<span style="margin-left: 1em"></span><strong>Dynamic IP vs. Static
    IP</strong>:<span style="margin-left: 1em"></span></h4>
    <p>
      Most home users are assigned a <strong>dynamic public IP
      address</strong> by their ISP. This means the public IP address assigned
      to your router can change periodically, for example, every time you
      reboot the router or after a certain time period set by your ISP.
    </p>
    <p>
      A <strong>static public IP</strong> is an IP address that does not
      change and is permanently assigned to your router. Businesses or
      individuals who need consistent access (e.g., hosting a server, using
      remote access tools) often request static IPs from their ISP.
    </p>
    <h3 id="auto-9">2.2<span style="margin-left: 1em"></span>Physical / Mac addresses.<span style="margin-left: 1em"></span></h3>
    <p>
      A <strong>MAC (Media Access Control) address</strong> is a unique
      hardware identifier assigned to each network interface on your devices.
      This is a permanent, physical address and is different for each network
      interface (e.g., your phone's Wi-Fi adapter and your laptop's Wi-Fi
      adapter will each have their own MAC address).
    </p>
    <p>
      <strong>How it works :</strong>
    </p>
    <ul>
      <li>
        <p>
          Every device connected to your router has a MAC address. For
          instance:
        </p>
        <ul>
          <p>
            
          </p>
        </ul>
      </li>
      <li>
        <p>
          MAC addresses are used for <strong>local network
          communication</strong>. When your laptop sends data to your phone
          over Wi-Fi, it uses the MAC addresses of both devices to ensure the
          data reaches the correct hardware.
        </p>
      </li>
      <li>
        <p>
          The router also uses MAC addresses internally to keep track of which
          device is assigned which private IP address. For example:
        </p>
        <ul>
          <li>
            <p>
              Laptop MAC <code>00:1A:2B:3C:4D:5F</code> &harr; Private IP
              <code>192.168.1.10</code>
            </p>
          </li>
          <li>
            <p>
              Phone MAC <code>00:1A:2B:3C:4D:5E</code> &harr; Private IP
              <code>192.168.1.11</code>
            </p>
          </li>
        </ul>
      </li>
    </ul>
    <p>
      The MAC address stays within the <strong>local network</strong>. It is
      not used when communicating over the internet (global network). On the
      internet, only your public IP is used to identify your router.
    </p>
    <h3 id="auto-10">Putting It All Together (Example Scenario):<span style="margin-left: 1em"></span></h3>
    <ol>
      <li>
        <p>
          <strong>At Home (Local Network)</strong>:
        </p>
        <ul>
          <li>
            <p>
              Each device (laptop, phone, printer) in your home has:
            </p>
            <ul>
              <li>
                <p>
                  A <strong>private IP</strong> (e.g., laptop:
                  <code>192.168.1.10</code>, phone: <code>192.168.1.11</code>,
                  printer: <code>192.168.1.12</code>).
                </p>
              </li>
              <li>
                <p>
                  A <strong>MAC address</strong> (e.g., laptop:
                  <code>00:1A:2B:3C:4D:5F</code>, phone:
                  <code>00:1A:2B:3C:4D:5E</code>), used for communication
                  inside the home network.
                </p>
              </li>
            </ul>
          </li>
          <li>
            <p>
              The router manages the local network and assigns private IPs to
              each device, mapping them to their respective MAC addresses.
            </p>
          </li>
        </ul>
      </li>
      <li>
        <p>
          <strong>Accessing the Internet (Global Network)</strong>:
        </p>
        <ul>
          <li>
            <p>
              When your phone or laptop accesses a website, the router uses
              <strong>NAT</strong> to translate the private IP of the device
              (e.g., <code>192.168.1.11</code>) into the router's
              <strong>public IP</strong> (e.g., <code>103.48.112.150</code>).
            </p>
          </li>
          <li>
            <p>
              <b>The website you visit only sees your <strong>public
              IP</strong> (e.g., <code>103.48.112.150</code>), not your
              device's private IP or MAC address.</b>
            </p>
          </li>
          <li>
            <p>
              If your ISP has assigned a <strong>dynamic IP</strong>, this
              public IP might change from time to time. If it's a
              <strong>static IP</strong>, it remains the same.
            </p>
          </li>
        </ul>
      </li>
    </ol>
    <h3 id="auto-11">2.3<span style="margin-left: 1em"></span>Ports and Sockets<span style="margin-left: 1em"></span></h3>
    <h4 id="auto-12">2.3.1<span style="margin-left: 1em"></span>Ports<span style="margin-left: 1em"></span></h4>
    <p>
      A <strong>port address</strong> is a 16-bit number that uniquely
      identifies a specific process or service running on a machine within a
      network. 
    </p>
    <p>
      Ports allow a device (with a specific IP address) to differentiate
      between multiple services and applications.
    </p>
    <p>
      In other words, a port tells the network where to send data within a
      particular device.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <h3 id="auto-13">How Port Addresses Work:<span style="margin-left: 1em"></span></h3>
    <ul>
      <ol>
        <p>
          
        </p>
        <li>
          <p>
            You open a web browser and enter a URL like
            <code>www.example.com</code>.
          </p>
        </li>
        <li>
          <p>
            Your web browser (the <strong>client</strong>) needs to connect to
            the web server hosting that website (the <strong>server</strong>).
          </p>
        </li>
        <li>
          <p>
            The browser sends a request to the server's <strong>IP
            address</strong>, targeting <strong>port 80</strong> (for HTTP
            traffic) or <strong>port 443</strong> (for HTTPS traffic).
          </p>
        </li>
        <li>
          <p>
            The operating system on your device assigns a <strong>dynamic
            port</strong> (ephemeral port) to your browser for this session
            (e.g., port 52000).
          </p>
        </li>
        <li>
          <p>
            The server receives the request on its <strong>public IP</strong>
            and port (e.g., IP <code>203.0.113.5</code>, port
            <code>80</code>), processes the request, and sends back the
            response to your browser at <b><strong>your IP
            address</strong></b> and <strong>ephemeral port</strong> (e.g.,
            <code>192.168.1.10:52000</code>).
          </p>
        </li>
      </ol>
    </ul>
    <h4 id="auto-14">1<span style="margin-left: 1em"></span>Sockets<span style="margin-left: 1em"></span></h4>
    <p>
      In network communication, both <strong>IP addresses</strong> and
      <strong>port numbers</strong> are required to ensure data is sent to the
      correct destination , This combination of an IP address and a port
      number is called a <strong>socket</strong>.
    </p>
    <h4 id="auto-15"><strong>Socket Address example</strong>:<span style="margin-left: 1em"></span></h4>
    <ul>
      <code>203.0.113.5:80</code>
      (where
      <code>203.0.113.5</code>
      is the IP address and
      <code>80</code>
      is the port number).
    </ul>
    <h4 id="auto-16"><strong>How Port and IP Address are Used in Packets</strong>:<span
    style="margin-left: 1em"></span></h4>
    <p>
      When data is transmitted over the internet, it is broken into
      <strong>packets</strong>. Each packet has several layers of information.
      Two of the most important layers in the context of port and IP addresses
      are:
    </p>
    <ol>
      <li>
        <p>
          <strong>IP Layer</strong> (Network Layer): Contains the
          <strong>source and destination IP addresses</strong>, which are used
          to route the packet between devices (across networks).
        </p>
        <ul>
          <li>
            <p>
              <strong>Source IP Address</strong>: The IP address of the
              sending device.
            </p>
          </li>
          <li>
            <p>
              <strong>Destination IP Address</strong>: The IP address of the
              receiving device.
            </p>
          </li>
        </ul>
      </li>
      <li>
        <p>
          <strong>Transport Layer</strong>: This layer adds the <strong>source
          and destination port numbers</strong> to the packet. These port
          numbers are used to direct the data to the correct process on the
          sending and receiving devices.
        </p>
        <ul>
          <li>
            <p>
              <strong>Source Port</strong>: The port number used by the
              sending process (e.g., a web browser with ephemeral port
              <code>52000</code>).
            </p>
          </li>
          <li>
            <p>
              <strong>Destination Port</strong>: The port number used by the
              receiving process (e.g., a web server listening on port
              <code>80</code> or <code>443</code>).
            </p>
          </li>
        </ul>
      </li>
    </ol>
    <p>
      When a packet is sent over the internet:
    </p>
    <ul>
      <li>
        <p>
          <strong>Source IP</strong> and <strong>Source Port</strong>:
          Identify the sender (e.g., your device
          <code>192.168.1.10:52000</code>).
        </p>
      </li>
      <li>
        <p>
          <strong>Destination IP</strong> and <strong>Destination
          Port</strong>: Identify the recipient (e.g., a web server
          <code>203.0.113.5:80</code>).
        </p>
      </li>
    </ul>
    <h4 id="auto-17">Packet Example:<span style="margin-left: 1em"></span></h4>
    <p>
      Suppose your browser sends a request to visit
      <code>www.example.com</code>:
    </p>
    <ul>
      <li>
        <p>
          <strong>Source IP</strong>: <code>192.168.1.10</code> (your device's
          private IP on your local network).
        </p>
      </li>
      <li>
        <p>
          <strong>Source Port</strong>: <code>52000</code> (ephemeral port
          assigned by your operating system).
        </p>
      </li>
      <li>
        <p>
          <strong>Destination IP</strong>: <code>203.0.113.5</code> (the
          public IP of the web server hosting <code>www.example.com</code>).
        </p>
      </li>
      <li>
        <p>
          <strong>Destination Port</strong>: <code>80</code> (the well-known
          port for HTTP traffic).
        </p>
      </li>
    </ul>
    <p>
      The packet will look something like this:
    </p>
    <ul>
      <li>
        <p>
          <strong>IP Header</strong>: Contains <code>192.168.1.10</code>
          (source IP) and <code>203.0.113.5</code> (destination IP).
        </p>
      </li>
      <li>
        <p>
          <strong>Transport Layer (TCP/UDP)</strong>: Contains
          <code>52000</code> (source port) and <code>80</code> (destination
          port).
        </p>
      </li>
    </ul>
    <p>
      When the server responds, the roles are reversed:
    </p>
    <ul>
      <li>
        <p>
          <strong>Source IP</strong>: <code>203.0.113.5</code> (the web
          server).
        </p>
      </li>
      <li>
        <p>
          <strong>Source Port</strong>: <code>80</code>.
        </p>
      </li>
      <li>
        <p>
          <strong>Destination IP</strong>: <code>192.168.1.10</code> (your
          device).
        </p>
      </li>
      <li>
        <p>
          <strong>Destination Port</strong>: <code>52000</code> (your
          browser's ephemeral port).
        </p>
      </li>
    </ul>
    <h3 id="auto-18">Why are Port Addresses Necessary?<span style="margin-left: 1em"></span></h3>
    <p>
      Without ports, a device could only run <b>one service at a time</b> on
      the same IP address. Ports allow a device to run multiple services (web,
      email, file sharing, etc.) simultaneously and direct traffic to the
      correct application.
    </p>
    <h2 id="auto-19">3<span style="margin-left: 1em"></span>Network design<span style="margin-left: 1em"></span></h2>
    <h3 id="auto-20">3.1<span style="margin-left: 1em"></span>Packet Switching<span style="margin-left: 1em"></span></h3>
    <p>
      
    </p>
  </body>
</html>
