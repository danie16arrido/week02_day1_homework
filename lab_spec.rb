require('minitest/autorun')
require('minitest/rg')

require_relative('./lab.rb')

class TestLab < MiniTest::Test
  def setup
    @student = Student.new("daniel", 12)
  end
end

