onkyo_eiscp_ruby
================

A Ruby implementation of eISCP for controlling Onkyo receivers.

**This code is still under heavy development and using it might make you sick.**
* Create ISCP messages and eISCP packets
* Automatically discover receiver's in the broadcast domain
* Send/Recieve eISCP messages
* Open a TCP socket to send commands and receive solicited and non-solicited status updates.
* Mock reciever (currently only responds to discovery)

**Inspired by https://github.com/miracle2k/onkyo-eiscp

Usage
________________

	# require the library

	require 'eiscp'

	
	# Discover local receivers
	EISCP.discover
	
	
	# Open a TCP connection to monitor solicited updates
	eiscp = EISCP.new('10.0.0.1')
	eiscp.connect

	# You can also pass a block and operate on received packet strings:
	eiscp.connect do |data|
	  puts EISCPPacket.parse(data).iscp_message
	end

	# Turn on the receiver
	eiscp_packet = EISCPPacket.new("PWR", "01")
	eiscp.send_packet(eiscp_packet.to_s)
	

