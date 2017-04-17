require('minitest/autorun')
require('minitest/rg')

require_relative('./lab.rb')

class TestLab < MiniTest::Test
  def setup
    @student = Student.new("daniel", 12)
  end
  
  def test_get_name
    assert_equal("daniel", @student.get_name) 
  end 

  def test_get_cohort
    assert_equal(12, @student.get_cohort)
  end

  def test_set_name
    @student.set_name("Peter")
    assert_equal("Peter", @student.get_name)
  end

  def test_set_cohort
    @student.set_cohort(13)
    assert_equal(13, @student.get_cohort)
  end

end

