require('minitest/autorun')
require('minitest/reporters')
require_relative('../book_shop')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBookShop < MiniTest::Test

  def setup()
    @book1 = BookShop.new(4, "Dune", "Frank Herbert", 1965)
  end

  def test_get_copies
    assert_equal(4, @book1.copies)
  end

  def test_get_book_title
    assert_equal("Dune", @book1.title)
  end

  def test_get_author
    assert_equal("Frank Herbert", @book1.author)
  end

  def test_get_publish_date
    assert_equal(1965, @book1.publish_date)
  end

  # def test_add_copies
  #   assert_equal()
  # end


end
