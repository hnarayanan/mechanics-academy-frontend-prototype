module CourseHelpers

  def random_between(first, last)
      Random.rand(0..last-first) + first
  end

  def course_name
    length = random_between(2, 3)
    lorem.words(length).slice(0, 18).split.map {|word| word.capitalize }.join(" ")
  end

  def course_description
    length = random_between(8, 12)
    lorem.words(length).slice(0, 60).capitalize + '.'
  end

  def course_long_description
    length = random_between(18, 24)
    lorem.words(length).capitalize + '.'
  end

end
