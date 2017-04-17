require('minitest/autorun')
require('minitest/rg')

require_relative('./lab.rb')

class TestStudent < MiniTest::Test
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

  def test_get_to_talk
    assert_equal("I can talk!", @student.get_to_talk)
  end 

  def test_say_favourite_language
    assert_equal( "I love Ruby", @student.say_favourite_language("Ruby"))
  end

end

class TestTeam < MiniTest::Test
  def setup
    @team = Team.new("Spain", ["Iniesta", "Arbeloa", "Ramos"], "el_profe")
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

  def test_create_points
    @team.init_points
    actual = @team.points
    expected = 0
    assert_equal(expected, actual)
  end

  def test_check_win
    @team.init_points 
    @team.update_win_lost("win")
    actual = @team.points
    expected = 3
    assert_equal(expected, actual)
  end
end

class TestLibrary < MiniTest::Test
  def setup
    @book_1 = { 
        title: "lord_of_the_rings",
        rental_details: { 
         student_name: "Jeff", 
         date: "01/12/16"
        }
      }
    @book_2 = { 
        title: "freakonomics",
        rental_details: { 
         student_name: "Daniel", 
         date: "02/12/16"
        }
      }  

    @books12 =[@book_1, @book_2]  
    @books1 = [@book_1]  
    #@library = Library.new(@books)
  end

  def test_list_books_and_details
    @library = Library.new(@books1)
    actual = @library.list_books 
    expected = [["lord_of_the_rings", "Jeff", "01/12/16"]] 
    assert_equal(expected, actual)
  end

  def test_return_book_info
    @library = Library.new(@books1)
    actual = @library.get_book_info("lord_of_the_rings") 
    expected = ["Jeff", "01/12/16"]
    assert_equal(expected, actual)
  end

  def test_add_book_title
    @library = Library.new(@books12)
    @library.add_book_title("log")
    actual = @library.get_book_info("log")
    expected = ["", ""]
    assert_equal(expected, actual)
  end

  def test_change_renting_details
    @library = Library.new(@books1)
    @library.change_renting_data("lord_of_the_rings", "Peter", "03/12/16")
    actual = @library.get_book_info("lord_of_the_rings")
    expected = ["Peter", "03/12/16"]
    assert_equal(expected, actual)
  end

end
