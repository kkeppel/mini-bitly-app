class UrlsController < ApplicationController

	def index
		@shortened_url ||= @shortened_url
	end

	def try_url
		redirect_to :id
	end

	def create
		full_url = params[:url][:full_url]
		@shortened_url = Url.generate_short_url(full_url)
		render "index"
	end

end
