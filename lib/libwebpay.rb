require 'signer'
require 'savon'
require_relative 'verifier'
require_relative 'webpay'
require_relative 'config'

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
        @configuration = Config.new
      end
      return @configuration
    end

end
