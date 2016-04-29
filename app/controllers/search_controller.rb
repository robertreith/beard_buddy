get '/search/new' do
  erb :'search/new' 
end

post '/search' do
  @search = YELP_CLIENT(params[:postal_code], limit: params[:limit], term: params[:term])
    binding.pry
    erb :'results'
end
