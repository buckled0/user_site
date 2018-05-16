RSpec.describe User do
  it 'should have first_name and last_name fields' do 
  	is_expected.to have_fields(:first_name, :last_name) 
  end	

  it 'should validate presence of first_name' do 
  	is_expected.to validate_presence_of(:first_name) 
  end	

  it 'should validate presence of last_name' do 
  	is_expected.to validate_presence_of(:last_name) 
  end
end  