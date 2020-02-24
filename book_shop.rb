class BookShop

attr_accessor :copies, :title, :author, :publish_date

  def initialize(copies, title, author, publish_date)
    @copies = copies
    @title = title
    @author = author
    @publish_date = publish_date
  end

  def add_copy(amount)
    @copies += amount
  end

  def set_copies(new_amount)
    @copies = new_amount
  end

end
