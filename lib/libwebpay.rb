require 'signer'
require 'savon'
require_relative 'verifier'
require_relative 'webpay'

class Configuration

@environment
@commerce_code
@private_key
@public_cert
@webpay_cert
@store_codes


  #getter y setter de los elementos
  attr_accessor :environment,:commerce_code,:private_key,:public_cert,:webpay_cert,:store_codes

end

class Libwebpay


  @configuration
  @webpay


	def getWebpay(config)
      if @webpay == nil
        @webpay = Webpay.new(config)
      end
      return @webpay
    end

	def getConfiguration
      if @configuration == nil
        @configuration = Configuration.new
      end
      return @configuration
    end

end
