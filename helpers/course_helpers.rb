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

  def type_color(type)
    palette_bright = ['#1abc9c', '#2ecc71', '#3498db', '#9b59b6', '#34495e', '#f1c40f', '#e67e22', '#e74c3c']
    palette_dark   = ['#16a085', '#27ae60', '#2980b9', '#8e44ad', '#2c3e50', '#f39c12', '#d35400', '#c0392b']
    palette = palette_bright

    types = {"theory" => 7, "programming" => 2, "application" => 0}

    palette[types[type]]
  end
end
