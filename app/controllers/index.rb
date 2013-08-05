get '/' do
  @grandma = params[:grandma] #what grandma said
  # Look in app/views/index.erb
  erb :index
end

get '/foo' do
  redirect 'http://localhost:9393/?grandma=foobar'
end

# http://localhost:9393/grandma
# logic here
# params: Params: {"user_input"=>"hello"}
post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  

  @input = params[:user_input]
  if @input == @input.upcase
    @grandma = "NO, NOT SINCE 1983!"
  elsif @input != @input.upcase
    @grandma = "HUH?! SPEAK UP, SONNY!"
  end

  erb :index
end
