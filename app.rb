get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/our_work' do
  @names = Name.all
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

  Name.create!(:name => @name)
  erb :name
end
