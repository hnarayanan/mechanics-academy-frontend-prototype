set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end

Time.zone = "Europe/Oslo"

page "dashboard.html", :layout => "logged_in_layout"

with_layout :blog_layout do
   page "/blog/*"
end

activate :blog do |blog|
  blog.permalink = "blog/:year/:month/:day/:title.html"
  blog.sources = "blog/articles/:year-:month-:day-:title.html"
  blog.taglink = "blog/topic/:tag.html"
  blog.year_link = "blog/:year.html"
  blog.month_link = "blog/:year/:month.html"
  blog.day_link = "blog/:year/:month/:day.html"
  blog.layout = "post_layout"
  blog.tag_template = "blog/topic.html"
  blog.calendar_template = "blog/calendar.html"
  blog.paginate = true
  blog.per_page = 10
end

# page "/blog/feed.xml", :layout => false

activate :directory_indexes
