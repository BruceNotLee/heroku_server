require 'sinatra'
# uses thin gem as well
get '/' do
  File.read(File.join('public', 'index.html'))
end
