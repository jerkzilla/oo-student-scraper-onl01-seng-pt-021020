require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    #https://learn-co-curriculum.github.io/student-scraper-test-page/index.html
    page = Nokogiri::HTML(open(index_url))
    students = []
    page.css("div.student-card").each do |student|
      name = student.css(".student-name").text
      location = student.css(".student-location").text
      profile_url = student.css("a").attribute("href").value
      student_info = {:name => name,
                      :location => location,
                      :profile_url => profile_url }
  end

  def self.scrape_profile_page(profile_url)

  end

end
