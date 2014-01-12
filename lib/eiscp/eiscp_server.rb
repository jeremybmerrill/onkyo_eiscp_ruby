require 'socket'
require_relative 'eiscp_packet'
require_relative 'eiscp'

# Mock server that only responds to ECNQSTN.

class EISCPServer

  ONKYO_DISCOVERY_RESPONSE =  EISCPPacket.new("ECN", "TX-NR609/60128/DX/001122334455")

  # Create/start the server object.

  def initialize
    Socket.udp_server_loop("255.255.255.255", EISCP::ONKYO_PORT) do |msg, msg_src|
      msg_src.reply ONKYO_DISCOVERY_RESPONSE.to_s
      puts msg
    end
  end

end

