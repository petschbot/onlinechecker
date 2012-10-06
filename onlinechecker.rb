#!/usr/bin/ruby -w

# Fast URL response checker
# Author: PS
# Date: 2010/10/05

require 'rubygems'
require 'rest-client'
require 'fastercsv'

# CSV File as first command line argument
# Must be look like this:
# id;url
# 01;http://www.example.com

csv_file = ARGV[0]

      
linenumber = 0
ok_counter = 0
error_counter = 0

FasterCSV.foreach(csv_file, :quote_char => '"', :col_sep =>';', :row_sep =>:auto) do |row|
  unless linenumber == 0 then
    begin
      response = RestClient.get row[1] 
      puts "OK;#{row[0]};#{row[1]}"
      ok_counter = ok_counter + 1
    rescue => error
        puts "Error;#{row[0]};#{row[1]}"
        error_counter = error_counter + 1
    end
  else
    puts "status;#{row[0]};#{row[1]}"
  end
  linenumber = linenumber + 1
end

puts "------"
puts "Report"
puts "OK: #{ok_counter}"
puts "Error: #{error_counter}"