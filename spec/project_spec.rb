require ('spec_helper')

describe('Project') do
  describe('#employees') do
    it('it tells which employees belong to the project') do
      test_project = Project.create({:name => "Flow"})
      test_employee1 = Employee.create({:name => 'John', :project_id => test_project.id})
      test_employee2 = Employee.create({:name => 'Keegan', :project_id => test_project.id})
    expect(test_project.employees()).to(eq([test_employee1, test_employee2]))
    end
  end

  describe('.not_done') do
    it('purple space monkey') do
      not_done_project = Project.create({:name => "Test", :done => false})
      done_project = Project.create({:name => "Done", :done => true})
      not_done_projects = [not_done_project]
      expect(Project.not_done()).to(eq(not_done_projects))
    end
  end
end
