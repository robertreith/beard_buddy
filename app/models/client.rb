class Client < ActiveRecord::Base
  validates :postal_code, presence: true 

	def yelp 
		 Yelp::Client.new({ consumer_key: ENV['CONSUMER_KEY'],
	                      consumer_secret: ENV['CONSUMER_SECRET'],
	                      token: ENV['TOKEN'],
	                      token_secret: ENV['TOKEN_SECRET']
		                  })
		end


	# def target

	# 	(params[:postal_code], limit: params[:limit], term: params[:term])

	# end

end