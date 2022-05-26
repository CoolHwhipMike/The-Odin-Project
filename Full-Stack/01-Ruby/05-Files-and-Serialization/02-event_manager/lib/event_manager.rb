# frozen_string_literal: true

require 'csv'
require 'google/apis/civicinfo_v2'
require 'erb'
require 'time'

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, '0')[0..4]
end

def clean_homephone(phone_number)
  phone_number.gsub(/[^0-9]/, '')

  if phone_number.length == 11 && phone_number[0] == '1'
    phone_number[1..-1]
  elsif phone_number.length == 10
    phone_number
  else
    '0000000000'
  end
end

def target_time(contents)
  times = []

  contents.each do |row|
    times.push(Time.strptime(row[:regdate], '%m/%d/%y %k:%M').hour)
  end

  total = times.reduce({}) do |hash, num|
    hash[num] ||= 0
    hash[num] += 1
    hash
  end
  total
end

def target_day(contents)
  times = []

  contents.each do |row|
    times.push(Date.strptime(row[:regdate], '%m/%d/%y %k:%M').wday)
  end

  total = times.reduce({}) do |hash, num|
    hash[num] ||= 0
    hash[num] += 1
    hash
  end
end

def legislators_by_zipcode(zip)
  civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
  civic_info.key = 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'

  begin
    civic_info.representative_info_by_address(
      address: zip,
      levels: 'country',
      roles: %w[legislatorUpperBody legislatorLowerBody]
    ).officials
  rescue
    'You can find your representatives by visiting www.commoncause.org/take-action/find-elected-officials'
  end
end

def save_thank_you_letter(id, form_letter)
  Dir.mkdir('output') unless Dir.exist?('output')

  filename = "output/thanks_#{id}.html"

  File.open(filename, 'w') do |file|
    file.puts form_letter
  end
end

puts 'EventManager initialized.'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

# template_letter = File.read('form_letter.erb')
# erb_template = ERB.new template_letter

# contents.each do |row|
#   id = row[0]
#   name = row[:first_name]
#   zipcode = clean_zipcode(row[:zipcode])
#   legislators = legislators_by_zipcode(zipcode)

  # form_letter = erb_template.result(binding)
# 
  # save_thank_you_letter(id, form_letter)
# end
# puts target_day(contents)
puts target_time(contents)
