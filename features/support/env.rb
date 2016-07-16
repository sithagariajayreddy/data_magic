require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
require 'spreadsheet'
require 'page-object'
require 'yaml'
require 'data_magic'


ENV['no_proxy'] = "127.0.0.1"
include Selenium
include RSpec::Matchers

require File.dirname(__FILE__) + "/../pages/pages"
#DataMagic.yml_directory = File.expand_path('..') + '/pages/config/data'
#
include Configuration


World(PageObject::PageFactory)
World(DataMagic)