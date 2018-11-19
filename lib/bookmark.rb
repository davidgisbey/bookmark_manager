class BookMark

  attr_reader :list
  attr_reader :print

  DEFAULT_LIST = [
            "http://www.makersacademy.com", "http://www.destroyallsoftware.com", "http://www.google.com"]

  def initialize(list = DEFAULT_LIST)
    @list = list
  end

  def print
    @list.join(", ")
  end
end
