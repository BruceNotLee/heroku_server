require 'httparty'
job_type = 'web developer'
url = "https://jobs.search.gov/jobs/search.json?query=#{job_type}"
HTTParty.get(url).each { |job| p job['position_title'] }
