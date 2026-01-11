require 'openssl'
require 'net/http'

# Monkey patch to disable SSL verification for remote theme download
module Net
  class HTTP
    alias_method :original_use_ssl=, :use_ssl=

    def use_ssl=(flag)
      self.original_use_ssl = flag
      self.verify_mode = OpenSSL::SSL::VERIFY_NONE if flag
    end
  end
end

# Also patch SSL context defaults
OpenSSL::SSL::SSLContext::DEFAULT_PARAMS[:verify_mode] = OpenSSL::SSL::VERIFY_NONE
