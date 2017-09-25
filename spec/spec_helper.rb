require("rspec")
require("pg")
require("sinatra/activerecord")
require("division")
require("employee")
require("project")

RSpec.configure do |config|
  config.after(:each) do
    Division.all().each() do |task|
      task.destroy()
    end
    Employee.all().each() do |task|
      task.destroy()
    end
    Project.all().each() do |task|
      task.destroy()
    end
  end
end
