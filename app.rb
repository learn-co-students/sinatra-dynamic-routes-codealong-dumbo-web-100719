require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
   
  get "/goodbye" do
     "Good bye" 
  end

  get "/goodbye/:name" do
     @user_name = params[:name]
     "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @numer1 = params[:num1]
    @numer2 = params[:num2]
    @result = @numer1.to_i * @numer2.to_i
    @result.to_s
  end
  # Code your final two routes here:

end