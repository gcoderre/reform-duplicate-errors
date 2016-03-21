require "test_helper"

class TestFormTest < ActiveSupport::TestCase

  def test_it_does_not_print_duplicated_error
    form = TestForm.new(User.new)
    form.validate(name: nil)

    assert_equal 1, form.errors.count
  end
end
