set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end

Time.zone = "Europe/Oslo"

with_layout "blog/layout" do
  page "/blog/*"
end

activate :blog do |blog|
  blog.permalink = "blog/:year/:month/:day/:title.html"
  blog.sources = "blog/:year-:month-:day-:title.html"
  blog.taglink = "blog/tags/:tag.html"
  blog.year_link = "blog/:year.html"
  blog.month_link = "blog/:year/:month.html"
  blog.day_link = "blog/:year/:month/:day.html"
  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"
  blog.paginate = true
  blog.per_page = 10
end

# page "/blog/feed.xml", :layout => false

activate :directory_indexes

###
# Page options, layouts, aliases and proxies
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

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end


