# script to generate a coach markdown page from a google form submission
#
# link to spreadsheet with responses:
# https://docs.google.com/spreadsheets/d/13BUg5TTkFAz6Udca2K2TvaJr_lMCmdsUwDnfxrrRueI/edit#gid=1124374704
# dowload that google sheet into `data_filename`
#
# csv file headers:
# Timestamp,
# Year of joining XSCALE,
# Full name for display on your profile page,
# Please select all tags that apply to you,
# LinkedIn profile url,
# Github profile url,
# Twitter profile url,
# Contact page url,
# Short bio

require('csv')
require('erb')

class CoachPage

  attr_reader :row

  def initialize(template, row)
    @row = row
    @name = row["Full name for display on your profile page"]
    @year = row["Year of joining XSCALE"]
    @template = template
    @output_filename = "./output/#{@year}-#{@name.downcase.gsub(" ", "-")}.html.markdown"
  end

  def build
    b = binding
    renderer = ERB.new(@template)
    output = renderer.result(b)
    File.write(@output_filename, output)
  end
end

template_filename = "./coachpage.html.markdown.erb"
template = File.open(template_filename).read()

data_filename = "../data/XSCALE Profile Page Request (Responses) - Form Responses.csv"
table = CSV.parse(File.read(data_filename), headers: true)

table.each() do |row|
  page = CoachPage.new(template, row)
  page.build
end