require ('spec_helper')


describe('Division') do
  describe('#employees') do
    it('it tells which employees belong to the division') do
      test_division = Division.create({:title => "ACME" :employee_id => test_employee1.id})
      test_employee1 = Employee.create({:name => 'John'})
    expect(test_division
    end
  end
end
