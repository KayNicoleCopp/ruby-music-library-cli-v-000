module Concerns::Findable

  def find_by_name(item_name)
    all.find{|item| item.name == item_name}
  end

end
