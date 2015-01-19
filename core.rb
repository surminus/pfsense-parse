#!/usr/bin/ruby

require 'nokogiri'
require_relative("process")

$option = ARGV[0]
$output = ARGV[1]
$file = ARGV[2]

if ARGV.empty?
  abort("Usage:\nruby core.rb <option> <output> <file>\n\nOutputs:\n  list\n  psv\n\nOptions:\n  acl\n  nat\n  interface\n  alias")
end

case $option
when "acl"
  require_relative("acl")
when "nat"
  require_relative("nat")
when "interface"
  require_relative("interface")
when "alias"
  require_relative("alias")
else
  abort("Unrecognised option")
end
