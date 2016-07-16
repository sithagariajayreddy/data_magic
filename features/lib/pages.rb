require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
require 'spreadsheet'
require 'roo'
require 'page-object'
require 'faker'
require 'yaml'
require 'data_magic'



include RSpec::Matchers

#require File.dirname(__FILE__) + "/../lib/config/data"
require File.dirname(__FILE__) + "/../pages/config/driver_config"
require File.dirname(__FILE__) + "/../lib/lib/Bergdorf"
require File.dirname(__FILE__) + "/../lib/Saks_pages/Card_submission.rb"
require File.dirname(__FILE__) + "/../lib/Saks_pages/parse_xls"

include Configuration