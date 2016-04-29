get '/search/new' do
  erb :'search/new' 
end

post '/search' do

  @results = YELP_CLIENT.search(params[:postal_code], limit: params[:limit], term: params[:term])

    erb :'search/results'

end
