require 'rails_helper'

describe User do
	# Refactoring in comments



	# subject(:user) {User.create(username:"")}

	# it { is_expected.to respond_to :username}
	

	it 'should have' do
		user = User.create
		expect(user).to respond_to :username
	end

	describe 'username' do
		
		# subject(:invalid_user) {User.create(username:"", email:"blah@example.com")}
		# it { is_expected.to_not be_valid }

		it 'cannot be blank' do
			invalid_user = User.create(username:"")

			expect(invalid_user).to_not be_valid
		end
	end

	describe 'email' do
		it 'must be present' do
			invalid_user = User.create(username:"Matthew", email:"")
			valid_user = User.create(username:"Kermit the Frog", email:"ktf@henson.com")
			expect(invalid_user).to_not be_valid
			expect(valid_user).to be_valid
		end
	end
end
