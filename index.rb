require 'pry'
require 'sinatra'

# Create the root route GET ‘/’ as your home page for an about me web page

get '/' do
	erb :aboutme
end

# Create a GET ‘/contact’ route for a contact me page

get '/contact' do
	erb :contactme
end

# Create a GET ‘/resume’ route for a resume page

get '/resume' do
	erb :resume
end

post '/contact' do
	# binding.pry
	"Thank you #{params[:fisrtname]}!"
end

not_found do
	 status 404
	 'not found'
end