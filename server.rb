require 'sinatra'
# uses thin gem as well
get '/' do
  File.read(File.join('public', 'index.html'))
  # File.read(File.join('pull_job_postings.rb', 'index.html'))
end

  # job_type = 'web developer'
  require 'httparty'
  class JobsApp < Sinatra::Base
    def jobs_search
      job_type = 'web developer'
      url = "https://jobs.search.gov/jobs/search.json?query=#{job_type}"
      HTTParty.get(url).each { |job| p job['position_title'] }
    end
  end
