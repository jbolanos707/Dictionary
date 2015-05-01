require('./lib/definition')
require('./lib/dictionary1')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')


get('/') do
  @words = Dictionary.all()
  word = params.fetch('word')
  new_word = Dictionary.new(word)
  new_word.save()
  erb(:index)
end

get('nw') do
  erb(:nw)
end

post('/definition') do
  definition = params.fetch('definition')
  new_definition = Definition.new(definition)
  new_definition.save()
  erb(:definiton)
end

get('nd') do
  erb(:nd)
end
