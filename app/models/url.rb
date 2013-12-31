require 'securerandom'

class Url < ActiveRecord::Base

	attr_accessible :short_url, :full_url
  
  def self.generate_short_url(full_url)
  	short_url = SecureRandom.hex(3)
  	new_url = Url.create(short_url: short_url, full_url: full_url)
  	new_url
  end

end