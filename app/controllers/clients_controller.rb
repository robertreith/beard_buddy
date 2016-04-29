

get '/clients/new' do 

	# @clients = Client.new(params[:clients])

	erb :'clients/new'

end

post '/clients' do 

	@client = Client.new(postal_code: params[:postal_code], limit: params[:limit], term: params[:term])
binding.pry
	if @client.save
		redirect "/clients/#{@client.id}"
	else
		erb :'/clients'
	end
end

get '/clients/:id' do

  @client = Client.find(params[:id])

  erb :'clients/show' 

end
