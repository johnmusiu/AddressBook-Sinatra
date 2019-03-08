require 'sinatra'

class HelloWorldApp < Sinatra::Base
	# get '/' do
	# 	"Hello, Yooni"
	# end
	# get '/:name' do
	# 	"Hello, #{params[:name]}!"
	# end

	# get '/name/?:name?' do
	# 	"Hello, #{params[:name] ? params[:name] : 'world'}!"
	# end

	get '/stream/' do
		Stream.new
		# "helel"
	end
end

class Stream
	def each
		100.times { |i| yield "#{i}\n"}
	end
end
