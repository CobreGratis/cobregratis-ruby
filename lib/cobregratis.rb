require 'active_resource'
require "cobregratis/version"

module Cobregratis
  require 'cobregratis/base'
  require 'cobregratis/bank_billet_account'
  require 'cobregratis/bank_billet'
  require 'cobregratis/service'
end

def gem_path
  Gem::Specification.find_by_name('jumpup-heroku').full_gem_path
end