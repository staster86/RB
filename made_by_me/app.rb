require 'yaml/store'
require 'sinatra'
require 'work_list'
require 'work_list_store'

store = WorkListStore.new('list.yml')

get('/') do
  erb :index
end

get('/new') do
  erb :new
end

post('/create') do
  @work_list = WorkList.new
  @work_list.content = params['content']
  store.save(@work_list)
  redirect '/new'
end

get( '/view') do
  @works = store.all
  erb :view
end

get('/delete/:state') do
  erb :delete
end
