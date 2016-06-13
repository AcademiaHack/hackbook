class Post < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  
  enum type_of: [:link, :code]

  def as_json(options={})
    {
      title: self.title,
      content: self.content,
      user: {
        name: self.user.name,
        email: self.user.email
      }
    }
  end
end
