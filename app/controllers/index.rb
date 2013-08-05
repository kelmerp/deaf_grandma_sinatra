get '/' do
  @grandma = params[:grandma] #what grandma said
  # Look in app/views/index.erb
  erb :index
end

# http://localhost:9393/grandma
# logic here
# params: Params: {"user_input"=>"hello"}
post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  @input = params[:user_input]
  erb :index
end
