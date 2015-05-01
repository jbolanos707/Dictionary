require('./lib/definition')
require('./lib/dictionary1')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')


get('/') do
  @words = Dictionary.all()
  erb(:index)
end

post('/word') do
  @word = params.fetch('word').word()
  dictionary = Dictionary.new(word)
  dictionary.save()
  erb(:index)
end

post('/definition') do
  @definition = params.fetch('definition')
  @new_definition = Definition.new(definition)
  @new_definition.save()
  erb(:nd)
end
