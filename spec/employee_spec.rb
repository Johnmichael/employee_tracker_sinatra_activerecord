require 'spec_helper'

describe(Employee) do

  describe('#division') do
    it('tells which division the employee belongs to') do
      test_division = Division.create({:title => 'ACME'})
      test_employee1 = Employee.create({:name => 'John', :division_id => test_division.id})
      expect(test_employee1.division()).to(eq(test_division))

    end
  end

  describe('#project') do
    it('tells which project the employee belongs to') do
      test_project = Project.create({:name => 'ACME PROJECT'})
      test_employee1 = Employee.create({:name => 'John', :project_id => test_project.id})
      expect(test_employee1.project()).to(eq(test_project))

    end
  end
end
