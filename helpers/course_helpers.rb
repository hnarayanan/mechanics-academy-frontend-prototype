module CourseHelpers
  def course_name
    length = Random.rand(0..1) + 2
    lorem.words(length).slice(0, 18).split.map {|word| word.capitalize }.join(" ")
  end
  def course_description
    length = Random.rand(0..4) + 8
    lorem.words(length).slice(0, 60).capitalize + '.'
  end
end
