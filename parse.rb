def parseXML

  c = $a.zip($b)

  xml = Nokogiri::XML(open($file))
  xml.xpath($rootsearch).each do |item|    
      
    c.each do |name, searchterm| 
      if not item.xpath(searchterm).empty?
      print "#{name}:   "          
      print "#{item.xpath(searchterm).text}\n"
        else
      print "#{name}:   "          
        print "*\n"
      end
    
    end
    print "\n"
  end
end
