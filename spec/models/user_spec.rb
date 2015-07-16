require 'rails_helper'

describe User do
	it 'should have' do
		user = User.create
		expect(user).to respond_to :username
	end

	describe 'username' do
		it 'cannot be blank' do
			user = User.create(username:"")
		end
	end

end
