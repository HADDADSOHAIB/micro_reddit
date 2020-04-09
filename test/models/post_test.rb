require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'Example user', email: 'user@example.com')
    @user.save
    @post = Post.new(title: 'Example user', body: 'this is the generic body',
                     user: @user)
  end

  test 'should be valid' do
    assert @post.valid?
  end

  test 'title should be the right length' do
    @post.title = 'a' * 300
    assert_not @post.valid?
  end

  test 'body should be the right length' do
    @post.body = 'aa'
    assert_not @post.valid?
  end
end
