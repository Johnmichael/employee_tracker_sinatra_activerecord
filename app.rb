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

get("/division/:id") do
  @division = Division.find(params.fetch("id").to_i())
  @employee = Employee.all()
  erb(:division_info)
end

get("/employee/:id") do
  @employee = Employee.find(params.fetch("id").to_i())
  @division = Division.all()
  erb(:employee_info)
end

patch("/divisions/:id") do
  division_id = params.fetch("id").to_i()
  @division = Division.find(division_id)
  employee_ids = params.fetch("employee_ids")
  employee_ids.each do |employee_id|
    Employee.find(employee_id).update({:division_id => division_id})
  end
  @employee = Employee.all()
  erb(:division_info)
end
