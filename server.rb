require 'sinatra'
require 'httparty'
# get '/' do
#   File.read(File.join('public', 'index.html'))
#   # File.read(File.join('pull_job_postings.rb', 'index.html'))
# end
post '/reverse' do
  puts params
  erb :reversed
end

get '/' do
  @jobs = []
  def jobs_search
    job_type = params['job']
    url = "https://jobs.search.gov/jobs/search.json?query=#{job_type}"
    HTTParty.get(url).each { |job| @jobs << job['position_title'] }
  end
  jobs_search
  erb :jobslist
end
