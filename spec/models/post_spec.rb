require 'rails_helper'

describe 'Post' do
	subject(:post){ Post.create(content:"I like cookies")}

	it {is_expected.to belong_to :user}

	# subject(:post){ 
	# 	@a = Post.create(content:"I like cookies")
	# 	@u = User.create(username:"Kermit the Frog", email:"ktf@henson.com")

	# 	@u.posts << @a
	# 	@u.destroy
	# 	@a = Post.all
	# }

	# it {is_expected.to be_empty}
end
