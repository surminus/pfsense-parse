require 'rexml/document'
include REXML

xmlfile = File.new("pfsense.xml")
$xmldoc = Document.new(xmlfile)

