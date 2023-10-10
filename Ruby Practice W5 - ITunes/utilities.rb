module Util
  def self.fetch(string_item, out = [])
    all = $songs + $actors + $albums
    found = all.select{|obj| string_item == obj.name}
    if found.size == 0
      then MyErr.new("not_found_error", string_item, "fetch").do_it
    elsif found.size > 1
      then MyErr.new("multiple_answer_error", string_item, "fetch").do_it
    elsif found.size == 1
      then found.first
    end
  end
end

class Array
  def clean_up()
    self.join(" ").split(" ").uniq    # Removes duplicates - this could be more elegant
  end
end
