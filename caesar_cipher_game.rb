require 'sinatra'
require 'sinatra/reloader'


def caesar(string, shift)
  if string == nil
  
  else  
    string_split = string.split("").map do |letter|
      new_letter = letter.ord + shift
      new_letter.chr
    end
    string_split.join
  end
end



get '/' do
  string = params['string']
  erb :index, :locals => {:string => string}
end

post '/' do 
  string = caesar(params['string'],params['shift'].to_i)
  erb :index, :locals =>{:string => string}
end


