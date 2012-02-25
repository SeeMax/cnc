get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/our_work' do
  erb :our_work
end

post '/' do  
  @name = params['name']
  @name = @name.titleize.strip.squeeze(" ")

  @name.gsub!(" the "," ")
  @name.gsub!("The "," ")
  @name.gsub!(" a "," ")
  @name.gsub!("A "," ")
  @name.gsub!(" company "," ")
  @name.gsub!(" Company "," ")
  @name.gsub!("We "," ")
  @name.gsub!(" we "," ")

  @name = @name + " Company"
  erb :name
end
