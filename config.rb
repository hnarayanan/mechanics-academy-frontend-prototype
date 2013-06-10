set :css_dir, 'assets/css'
set :js_dir, 'asset/js'
set :images_dir, 'assets/img'

configure :build do
  activate :minify_css
  activate :minify_javascript
end

Time.zone = "Europe/Oslo"

page "dashboard.html", :layout => "logged_in_layout"

page "blog.html", :proxy => "blog/index.html", :layout => "blog_layout"
page "blog/2013.html", :layout => "blog_layout"
page "blog/2012.html", :layout => "blog_layout"
page "blog/topic*", :layout => "blog_layout"

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

###
# page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end
