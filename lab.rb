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