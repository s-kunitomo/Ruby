require 'sinatra'
require 'sinatra/reloader'

# filter
before do
  @author = "kunitomo"
end

# filter
after do
  logger.info "page displayed successfully"
end

# helper
helpers do
  def strong(s)
    "<strong>#{s}</strong>"
  end
end

get '/' do
  @title = "main index"
  @content = "main content by #{@author}"
  erb :index
end

get '/about' do
  @title = "about this page"
  @content = "this page is...  by " + strong(@author)
  @email = "kunitomo@gmail.com"
  erb :about
end

# get '/:name?' do |n|
#   @name = n
#   @title = "main index"
#   erb :index
# end

=begin
get '/hello/:name' do
  "Hello #{params[:name]}"
end

get '/hello/:name' do |n|
  "Hello #{n}"
end

get '/hello/:fname/?:lname?' do |f, l|
  "hello #{f} #{l}"
end

get '/from/*/to/*' do |f, t|
"from #{f} to #{t}"
end

get %r{/users/([0-9]*)} do |i|
"user id = #{i}"
end
=end
