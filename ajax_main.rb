require 'sinatra'
require 'sinatra/reloader'
require 'json'
require './names'

get "/" do
  erb :index
end

get "/name" do
  if params['name'] then
    content_type :JSON
    response = []

    nameInfo = NameChart.first(:name => params['name'].to_s.capitalize!)
    response.push(nameInfo.name)
    response.push(nameInfo.year1900)
    response.push(nameInfo.year1910)
    response.push(nameInfo.year1920)
    response.push(nameInfo.year1930)
    response.push(nameInfo.year1940)
    response.push(nameInfo.year1950)
    response.push(nameInfo.year1960)
    response.push(nameInfo.year1970)
    response.push(nameInfo.year1980)
    response.push(nameInfo.year1990)
    response.push(nameInfo.year2000)

    {:result => response}.to_json
  else
    halt(404)
  end
end