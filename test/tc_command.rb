require_relative "../lib/eiscp/command.rb"
require "test/unit"

class TestCommand < Test::Unit::TestCase
  include Eiscp
  def test_command_to_name
    assert_equal("system-power", Command.command_to_name("PWR"))
  end

  def test_name_to_command
    assert_equal("PWR", Command.name_to_command("system-power"))
  end

  def test_command_value_to_value_name
    assert_equal("on", Command.command_value_to_value_name("PWR", "01"))
  end

  def test_command_value_name_to_value
    assert_equal("01", Command.command_value_name_to_value("PWR", "on"),)
  end

  def test_description_from_name
    assert_equal("System Power Command", Command.description_from_name("system-power"), )
  end

  def test_description_from_command
    assert_equal("System Power Command", Command.description_from_command("PWR"))
  end

end
