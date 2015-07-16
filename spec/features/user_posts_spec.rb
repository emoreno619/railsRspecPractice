require 'rails_helper'

feature 'User Posts' do
	let(:user){User.create(username:"Hungrybara",email:"hungry@example.com")}

	scenario 'when a valid post is entered' do
		visit user_new_post_path(:user)
	end
end