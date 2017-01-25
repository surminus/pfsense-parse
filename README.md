#
# pfsense-parse
#

Some code to help dissect and view in plain language pfsense config.xml files

Gem requirements
----------------

* nokogiri 

Usage
-----
ruby core.rb option output file

| Option      | Function
| ---------   | ---------
| acl         | Access Control Lists
| interface   | Assigned network interfaces
| alias       | IP and port aliases
| nat         | Network Address Translations
| portforward | Inbound Port Forwarding rules
| users       | Local system users

| Output    | Function
| --------- | ---------
| list      | Long human-readable list
| psv       | Pipe Separated Values

Notes
-----

For Ruby versions <1.9 "require_relative" isn't present. Update the code with: 

```bash 
sed -i 's/require_relative/require/g' *
```

Then add to the beginning of core.rb:

```Ruby
$LOAD_PATH.unshift(File.dirname(__FILE__))
```
