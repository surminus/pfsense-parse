require 'nokogiri'
require_relative("process.rb")

$file = ARGV[0]

if ARGV.empty?
    abort("No file selected")
end

