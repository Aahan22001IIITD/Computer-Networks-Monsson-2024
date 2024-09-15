<TeXmacs|2.1.4>

<style|generic>

<\body>
  <space|8em>Computer Networks Chapter 1 Monsoon 2024

  <space|10em>By Aahan Piplani CSAM (2022001)

  <section|What is Internet>

  All the end Systems are connected together by a network of communication
  links and packet switches , and each type of connection has its own
  transmission rate which is measured in bits/second.

  When there is a need to send any data , the sender send the data segment by
  segment and adds header bytes to each segment. The resulting packages of
  information is called packets.They are then used at the receiver end to
  reassemble it into the original data.

  Now to make packet travel we have packet swicthers , which take the
  incoming data, and send it towards one of its outgoing communication links.

  The most common are Routers and Link-layer Switches. Both work for the same
  reason but the difference is that linklayer switches are used in access
  networks while routers are used in network core.

  The end systems are connected through ISP's , Internet is where everything
  is connected , and hence all the ISP's must be interconnected as well (
  which they are )

  Now there can be multiple types of ISP's , one can be , including
  residential ISPs such as local cable or telephone companies; corporate
  ISPs; university ISPs; ISPs that provide WiFi access in airports etc.

  <with|font-series|light|Each ISP is in itself a network of packet switches
  and communication links. >The ISPs that provide access to end systems must
  also be interconnected. These lower-tier ISPs are interconnected through
  national and international upper-tier ISPs such as Level 3 Communications.

  <subsection|What is a Protocol ?>

  All activity in the Internet that involves two or more communicating remote
  entities is governed by a protocol.

  <with|font-series|bold|A protocol defines the format and the order of
  messages exchanged between two or more communicating entities, as well as
  the actions taken on the transmission and/or receipt of a message or other
  event.>

  <section|Addressing in Internet>

  Consider a case , You live in your house with your family members and you
  all have a router which everyone uses to access the internet , all phones ,
  printers laptops are connected to a router.

  In the sense of above scenario here are the things to note:

  <subsection|IP addresses:>

  An IP (Internet Protocol) address is a unique numerical label assigned to
  devices connected to a network that uses the Internet Protocol for
  communication. It serves two main functions: identifying the host or
  network interface and providing the location of the host in the network.

  <subsubsection|Private IP address:>

  In your local network, each device (phone, laptop, printer, etc.) gets a
  private IP address. These addresses are used <strong|within your home
  network only> and are not visible to the public internet. They allow the
  devices in your home to communicate with each other and with the router.

  <strong|How it works>

  <\itemize>
    <item>Your router is acting as the central hub of your local network
    (called a <strong|LAN> or Local Area Network).

    <item>The router assigns <strong|private IP addresses> to each device
    connected to it, usually through a service called <strong|DHCP> (Dynamic
    Host Configuration Protocol), which automatically assigns IP addresses.

    \;
  </itemize>

  <subsubsection|Public IP address:>

  This is the IP address that your router uses to communicate with the
  <strong|global internet>. It is assigned by your <strong|Internet Service
  Provider (ISP)> (like Airtel, Jio, BSNL) , and it is unique across the
  entire internet. All your devices share this public IP address when
  accessing the internet, thanks to a process called <strong|Network Address
  Translation (NAT)>, where your router translates private IPs into the
  public IP when your devices communicate with external servers.

  <subsubsection|Dynamic IP addresses:>

  Dynamic IPs are assigned by the network dynamically when a device connects.
  These addresses can change over time.

  Your router will be assigned a <strong|public IP address> by your ISP,
  which allows your home network to be connected to the wider internet.

  This is the IP address that websites and external services see when you
  visit them from your home. However, each device inside your local network
  will have its own private IP, and only the router's public IP will be
  visible to the internet.

  <subsubsection|<strong|Dynamic IP vs. Static IP>:>

  Most home users are assigned a <strong|dynamic public IP address> by their
  ISP. This means the public IP address assigned to your router can change
  periodically, for example, every time you reboot the router or after a
  certain time period set by your ISP.

  A <strong|static public IP> is an IP address that does not change and is
  permanently assigned to your router. Businesses or individuals who need
  consistent access (e.g., hosting a server, using remote access tools) often
  request static IPs from their ISP.

  <subsection|Physical / Mac addresses.>

  A <strong|MAC (Media Access Control) address> is a unique hardware
  identifier assigned to each network interface on your devices. This is a
  permanent, physical address and is different for each network interface
  (e.g., your phone's Wi-Fi adapter and your laptop's Wi-Fi adapter will each
  have their own MAC address).

  <strong|How it works :>

  <\itemize>
    <item>Every device connected to your router has a MAC address. For
    instance:

    <\itemize>
      \;
    </itemize>

    <item>MAC addresses are used for <strong|local network communication>.
    When your laptop sends data to your phone over Wi-Fi, it uses the MAC
    addresses of both devices to ensure the data reaches the correct
    hardware.

    <item>The router also uses MAC addresses internally to keep track of
    which device is assigned which private IP address. For example:

    <\itemize>
      <item>Laptop MAC <code*|00:1A:2B:3C:4D:5F> \<leftrightarrow\> Private
      IP <code*|192.168.1.10>

      <item>Phone MAC <code*|00:1A:2B:3C:4D:5E> \<leftrightarrow\> Private IP
      <code*|192.168.1.11>
    </itemize>
  </itemize>

  The MAC address stays within the <strong|local network>. It is not used
  when communicating over the internet (global network). On the internet,
  only your public IP is used to identify your router.

  <subsection*|Putting It All Together (Example Scenario):>

  <\enumerate>
    <item><strong|At Home (Local Network)>:

    <\itemize>
      <item>Each device (laptop, phone, printer) in your home has:

      <\itemize>
        <item>A <strong|private IP> (e.g., laptop: <code*|192.168.1.10>,
        phone: <code*|192.168.1.11>, printer: <code*|192.168.1.12>).

        <item>A <strong|MAC address> (e.g., laptop:
        <code*|00:1A:2B:3C:4D:5F>, phone: <code*|00:1A:2B:3C:4D:5E>), used
        for communication inside the home network.
      </itemize>

      <item>The router manages the local network and assigns private IPs to
      each device, mapping them to their respective MAC addresses.
    </itemize>

    <item><strong|Accessing the Internet (Global Network)>:

    <\itemize>
      <item>When your phone or laptop accesses a website, the router uses
      <strong|NAT> to translate the private IP of the device (e.g.,
      <code*|192.168.1.11>) into the router's <strong|public IP> (e.g.,
      <code*|103.48.112.150>).

      <item><with|font-series|bold|The website you visit only sees your
      <strong|public IP> (e.g., <code*|103.48.112.150>), not your device's
      private IP or MAC address.>

      <item>If your ISP has assigned a <strong|dynamic IP>, this public IP
      might change from time to time. If it's a <strong|static IP>, it
      remains the same.
    </itemize>
  </enumerate>

  <subsection|Ports and Sockets>

  <subsubsection|Ports>

  A <strong|port address> is a 16-bit number that uniquely identifies a
  specific process or service running on a machine within a network.\ 

  Ports allow a device (with a specific IP address) to differentiate between
  multiple services and applications.

  In other words, a port tells the network where to send data within a
  particular device.

  \;

  \;

  \;

  \;

  <subsection*|How Port Addresses Work:>

  <\itemize>
    <\enumerate-alpha>
      \;

      <item>You open a web browser and enter a URL like
      <code*|www.example.com>.

      <item>Your web browser (the <strong|client>) needs to connect to the
      web server hosting that website (the <strong|server>).

      <item>The browser sends a request to the server's <strong|IP address>,
      targeting <strong|port 80> (for HTTP traffic) or <strong|port 443> (for
      HTTPS traffic).

      <item>The operating system on your device assigns a <strong|dynamic
      port> (ephemeral port) to your browser for this session (e.g., port
      52000).

      <item>The server receives the request on its <strong|public IP> and
      port (e.g., IP <code*|203.0.113.5>, port <code*|80>), processes the
      request, and sends back the response to your browser at
      <with|font-series|bold|<strong|your IP address>> and <strong|ephemeral
      port> (e.g., <code*|192.168.1.10:52000>).
    </enumerate-alpha>
  </itemize>

  <subsubsection|Sockets>

  In network communication, both <strong|IP addresses> and <strong|port
  numbers> are required to ensure data is sent to the correct destination ,
  This combination of an IP address and a port number is called a
  <strong|socket>.

  <subsubsection*|<strong|Socket Address example>:>

  <itemize|<code*|203.0.113.5:80> (where <code*|203.0.113.5> is the IP
  address and <code*|80> is the port number).>

  <subsubsection*|<strong|How Port and IP Address are Used in Packets>:>

  When data is transmitted over the internet, it is broken into
  <strong|packets>. Each packet has several layers of information. Two of the
  most important layers in the context of port and IP addresses are:

  <\enumerate>
    <item><strong|IP Layer> (Network Layer): Contains the <strong|source and
    destination IP addresses>, which are used to route the packet between
    devices (across networks).

    <\itemize>
      <item><strong|Source IP Address>: The IP address of the sending device.

      <item><strong|Destination IP Address>: The IP address of the receiving
      device.
    </itemize>

    <item><strong|Transport Layer>: This layer adds the <strong|source and
    destination port numbers> to the packet. These port numbers are used to
    direct the data to the correct process on the sending and receiving
    devices.

    <\itemize>
      <item><strong|Source Port>: The port number used by the sending process
      (e.g., a web browser with ephemeral port <code*|52000>).

      <item><strong|Destination Port>: The port number used by the receiving
      process (e.g., a web server listening on port <code*|80> or
      <code*|443>).
    </itemize>
  </enumerate>

  When a packet is sent over the internet:

  <\itemize>
    <item><strong|Source IP> and <strong|Source Port>: Identify the sender
    (e.g., your device <code*|192.168.1.10:52000>).

    <item><strong|Destination IP> and <strong|Destination Port>: Identify the
    recipient (e.g., a web server <code*|203.0.113.5:80>).
  </itemize>

  <subsubsection*|Packet Example:>

  Suppose your browser sends a request to visit <code*|www.example.com>:

  <\itemize>
    <item><strong|Source IP>: <code*|192.168.1.10> (your device's private IP
    on your local network).

    <item><strong|Source Port>: <code*|52000> (ephemeral port assigned by
    your operating system).

    <item><strong|Destination IP>: <code*|203.0.113.5> (the public IP of the
    web server hosting <code*|www.example.com>).

    <item><strong|Destination Port>: <code*|80> (the well-known port for HTTP
    traffic).
  </itemize>

  The packet will look something like this:

  <\itemize>
    <item><strong|IP Header>: Contains <code*|192.168.1.10> (source IP) and
    <code*|203.0.113.5> (destination IP).

    <item><strong|Transport Layer (TCP/UDP)>: Contains <code*|52000> (source
    port) and <code*|80> (destination port).
  </itemize>

  When the server responds, the roles are reversed:

  <\itemize>
    <item><strong|Source IP>: <code*|203.0.113.5> (the web server).

    <item><strong|Source Port>: <code*|80>.

    <item><strong|Destination IP>: <code*|192.168.1.10> (your device).

    <item><strong|Destination Port>: <code*|52000> (your browser's ephemeral
    port).
  </itemize>

  <subsection*|Why are Port Addresses Necessary?>

  Without ports, a device could only run <with|font-series|bold|one service
  at a time> on the same IP address. Ports allow a device to run multiple
  services (web, email, file sharing, etc.) simultaneously and direct traffic
  to the correct application.

  <section|Network design>

  <subsection|Packet Switching>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|<rigid|\<circ\>>>|3>>
    <associate|auto-11|<tuple|2.3|3>>
    <associate|auto-12|<tuple|2.3.1|3>>
    <associate|auto-13|<tuple|2.3.1|4>>
    <associate|auto-14|<tuple|1|4>>
    <associate|auto-15|<tuple|1|4>>
    <associate|auto-16|<tuple|1|4>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|\<bullet\>>|5>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|\<bullet\>>|5>>
    <associate|auto-19|<tuple|3|5>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|3.1|5>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|2.1|1>>
    <associate|auto-5|<tuple|2.1.1|2>>
    <associate|auto-6|<tuple|2.1.2|2>>
    <associate|auto-7|<tuple|2.1.3|2>>
    <associate|auto-8|<tuple|2.1.4|2>>
    <associate|auto-9|<tuple|2.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>What
      is Internet> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>What is a Protocol ?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Addressing
      in Internet> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>IP addresses:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|2.1.1<space|2spc>Private IP address:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|2.1.2<space|2spc>Public IP address:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|2.1.3<space|2spc>Dynamic IP addresses:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|2.1.4<space|2spc><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Dynamic
      IP vs. Static IP>: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Physical / Mac addresses.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|Putting It All Together (Example Scenario):
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Ports and Sockets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Ports
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|How Port Addresses Work:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|1<space|2spc>Sockets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|<with|font-series|<quote|bold>|math-font-series|<quote|bold>|Socket
      Address example>: <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|<with|font-series|<quote|bold>|math-font-series|<quote|bold>|How
      Port and IP Address are Used in Packets>:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|Packet Example:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|Why are Port Addresses Necessary?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Network
      design> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Packet Switching
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>
    </associate>
  </collection>
</auxiliary>