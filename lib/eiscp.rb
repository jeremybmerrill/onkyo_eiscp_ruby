# Create and send EISCP messages to control Onkyo receivers.

class EISCP
  VERSION = '0.0.2'
end

require_relative 'eiscp/eiscp'
require_relative 'eiscp/eiscp_packet'
require_relative 'eiscp/iscp_message'
require_relative 'eiscp/command'
