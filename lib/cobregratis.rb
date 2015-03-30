require 'active_resource'
require "cobregratis/version"

module Cobregratis
  require 'cobregratis/base'
  require 'cobregratis/bank_billet_account'
  require 'cobregratis/bank_billet'
  require 'cobregratis/bank_billet_subscription'
  require 'cobregratis/customer'
  require 'cobregratis/cnab'
  require 'cobregratis/service'
  require 'cobregratis/web_hook'
end

def gem_path
  Gem::Specification.find_by_name('cobregratis').full_gem_path
end