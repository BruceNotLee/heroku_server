require 'sinatra'
# uses thin gem as well
get '/' do
  File.read(File.join('public', 'index.html'))
  File.read(File.join('pull_job_postings.rb', 'index.html'))
end
