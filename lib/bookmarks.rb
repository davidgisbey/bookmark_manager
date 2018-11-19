class Bookmarks

  attr_reader :list

  DEFAULT_LIST = []

  def initialize(list = DEFAULT_LIST)
    @list = list
  end

end
