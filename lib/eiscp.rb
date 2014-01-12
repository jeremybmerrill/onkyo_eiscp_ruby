# Create and send EISCP messages to control Onkyo receivers.
module Hifi
  class EISCP
    VERSION = '0.0.2'
  end
end

require_relative 'eiscp/eiscp'
require_relative 'eiscp/eiscp_packet'
require_relative 'eiscp/iscp_message'
require_relative 'eiscp/command'
require_relative 'eiscp/receiver'