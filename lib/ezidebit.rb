require 'nokogiri'
require 'typhoeus'
require 'logger'

# Version
require 'ezidebit/version'

# Resources
require 'ezidebit/ezidebit_object'
require 'ezidebit/util'
require 'ezidebit/soap_error'
require 'ezidebit/customer'
require 'ezidebit/payment'

module Ezidebit
  @api_base = 'https://api.ezidebit.com.au/'
  @api_version = 'v3-3'

  @logger = Logger.new(STDOUT)
  @logger.level = Logger::WARN


  class << self
    attr_accessor  :logger, :api_digital_key, :api_base, :api_version
  end

  def self.api_url(url='')
    @api_base + @api_version + "/" + url
  end


end