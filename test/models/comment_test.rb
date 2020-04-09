require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'Example user', email: 'user@example.com')
    @user.save
    @post = Post.new(title: 'Example user',
                     body: 'this is the generic body',
                     user: @user)
    @post.save

    @comment = Comment.new(title: 'Example comment',
                           body: 'this is the generic comment body',
                           user: @user,
                           post: @post)
  end

  test 'should be valid' do
    assert @comment.valid?
  end

  test 'title should be the right length' do
    @comment.title = 'a' * 300
    assert_not @comment.valid?
  end

  test 'body should be the right length' do
    @comment.body = 'aa'
    assert_not @comment.valid?
  end
end
