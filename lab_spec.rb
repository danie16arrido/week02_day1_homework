require('minitest/autorun')
require('minitest/rg')

require_relative('./lab.rb')

class TestLab < MiniTest::Test
  def setup
    @student = Student.new("daniel", 12)
    @team = Team.new("Spain", ["Iniesta", "Arbeloa", "Ramos"], "el_profe")
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

  def test_get_to_talk
    assert_equal("I can talk!", @student.get_to_talk)
  end 

  def test_say_favourite_language
    assert_equal( "I love Ruby", @student.say_favourite_language("Ruby"))
  end

  def test_add_player
    @team.players = []
    actual = @team.add_player("Casillas")
    expected = ["Casillas"]
    assert_equal(expected, actual)
  end

  def test_check_if_player_is_in_team
    actual = @team.check_player("Iniesta")
    expected = true
    assert_equal(expected, actual)
  end




















end

