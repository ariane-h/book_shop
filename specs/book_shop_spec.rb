require('minitest/autorun')
require('minitest/reporters')
require_relative('../book_shop')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBookShop < MiniTest::Test

  def setup()
    @book1 = BookShop.new(4, "Dune", "Frank Herbert", 1965)
    @book2 = BookShop.new(10, "Great Expectations", "Charles Dickens", 1861)
    @book3 = BookShop.new(3, "The Bell Jar", "Sylvia Plath", 1963)
    @book4 = BookShop.new(6, "Rebecca", "Daphne Du Maurier", 1938)
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
    assert_equal(1938, @book4.publish_date)
  end

  def test_set_copies
    @book1.copies = 11
    assert_equal(11, @book1.copies)
  end

  def test_add_copy()
    @book4.add_copy(3)
    assert_equal(9, @book4.copies)
  end


end
