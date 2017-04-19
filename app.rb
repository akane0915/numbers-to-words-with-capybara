require('sinatra')
require('sinatra/reloader')
require('./lib/wordify')
also_reload('lib/**/*.rb')

get('/') do

  erb(:index)
end

get('/display') do
  @number = params.fetch('number')
  @textoutput = @number.to_i().numbers_to_words()
  erb(:display)
end
