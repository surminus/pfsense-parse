def parseXML

  c = $a.zip($b)

  xml = Nokogiri::XML(open($file))
  xml.xpath($rootsearch).each do |item|    
  
    case $output
    when "list"
      c.each do |name, searchterm| 
        if not item.xpath(searchterm).empty?
          print "#{name}:   "          
          print "#{item.xpath(searchterm).text}\n"
        else
          print "#{name}:   "          
          print "*\n"
        end
      end
      
    when "psv"
     
      c.each do |name, searchterm| 
        if not item.xpath(searchterm).empty?
          print "#{item.xpath(searchterm).text}"
        else
          print "*"
        end
      print "|"  
      end
    else 
      abort("Error: unknown output type")
    end
  print "\n"
  end
end
