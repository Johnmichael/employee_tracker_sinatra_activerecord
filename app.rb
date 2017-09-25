require 'sinatra/activerecord'
require 'sinatra'
require 'pry'
require 'sinatra/reloader'
also_reload'.lib/**/*.rb'
require './lib/division'
require './lib/employee'
require './lib/project'
require 'pg'


get('/') do
  erb(:index)
end

get('/hr') do
  @employee = Employee.all()
  @division = Division.all()
  erb(:hr)
end

post('/division') do
  title = params.fetch('title')
  division = Division.new({:title => title})
  division.save()
  @division = Division.all()
  @employee = Employee.all()
  erb(:hr)
end

post('/employee') do
  name = params.fetch('name')
  employee = Employee.new({:name => name})
  employee.save()
  @division = Division.all()
  @employee = Employee.all()
  erb(:hr)
end

get('/division/:id') do
  title = params.fetch('title')
  @employee = Employee.all()

  erb(:division_info)
end
