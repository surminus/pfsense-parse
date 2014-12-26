#!/usr/bin/ruby

require 'nokogiri'
require_relative("process")

$option = ARGV[0]
$file = ARGV[1]

if ARGV.empty?
  abort("Error: Check README")
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
