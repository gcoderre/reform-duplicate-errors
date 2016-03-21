class TestForm < Reform::Form
  model :user

  property :name

  validates :name, presence: true
end
