class Student

  def initialize(a_name, cohort)
    @name = a_name
    @cohort = cohort
  end
 def get_name
     return @name
 end

 def get_cohort
   return @cohort
 end

 def set_name(new_name)
   @name = new_name
 end

 def set_cohort(new_value)
   @cohort = new_value
 end 

 def get_to_talk
   return "I can talk!"
 end

 def say_favourite_language(fav_language)
   return "I love #{fav_language}"
 end

end

class Team
 # attr_accessor :name, :players, :coach, :points
  attr_reader :name, :players,:points
  attr_accessor :coach
  def initialize(a_name, players, coach)
    @name = a_name
    @players = players
    @coach = coach
  end

  def test_get_team_players
    actual = @team.players
    expected = ["Iniesta", "Arbeloa", "Ramos"]
    assert_equal(expected, actual)
  end

  def test_get_team_coach
    assert_equal("el_profe", @team.coach)
  end

 def add_player(new_player)
   @players.push(new_player)
 end
 
 def check_player(player_name)
  return @players.include? (player_name)
 end

 def init_points
   @points = 0
 end

 def update_win_lost(result)
   @points += 3 if result == "win"
 end

end

class Library
  attr_accessor :books
  def initialize(books)
    @books = books
  end

  def list_books
    list_books =[]
    @books.each do |book|
      list = []
      list << book[:title]
      list << book[:rental_details][:student_name]
      list << book[:rental_details][:date]
      list_books << list
    end
    return list_books
  end

  def get_book_info(book_to_search)
    @books.each do |book|
     if book[:title] == book_to_search
      found_book_details = book[:rental_details]
      return Array[
        found_book_details[:student_name], 
        found_book_details[:date]
      ] 
    end
   end
  end

  def add_book_title(book_title_to_add)
    new_book = {
      title: book_title_to_add,
      rental_details: { 
        student_name: "", 
        date: ""
      }  
    }
    @books << new_book
  end

  def change_renting_data(book_name, student_renting, date_due)
    @books.each do |book|
      if book_name == book[:title]
        book[:rental_details][:student_name] = student_renting
        book[:rental_details][:date] = date_due
      end
    end
  end

end
