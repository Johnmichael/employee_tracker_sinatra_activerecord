require ('spec_helper')


describe('Division') do
  describe('#employees') do
    it('it tells which employees belong to the division') do
      test_division = Division.create({:title => "ACME"})
      test_employee1 = Employee.create({:name => 'John', :division_id => test_division.id})
      test_employee2 = Employee.create({:name => 'Keegan', :division_id => test_division.id})
    expect(test_division.employees()).to(eq([test_employee1, test_employee2]))
    end
  end
end
