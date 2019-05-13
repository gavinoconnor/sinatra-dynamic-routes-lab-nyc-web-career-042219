require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @n = params[:number].to_i
    "#{@n * @n}"
  end

  get '/say/:number/:phrase' do
    @number_phrase = params[:phrase] * params[:number].to_i
    "#{@number_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @five_words = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " +  params[:word5]
    "#{@five_words}."
  end

  get '/:operation/:number1/:number2' do
    @operate = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    if @operate == "add"
      "#{@n1 + @n2}"
    elsif @operate == "subtract"
      "#{@n1 - @n2}"
    elsif @operate == "multiply"
      "#{@n1 * @n2}"
    elsif @operate == "divide"
      "#{@n1 / @n2}"
    end
  end

end
