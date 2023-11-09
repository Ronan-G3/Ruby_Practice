def find_films_by_actor(doca, out = [])
  puts "Entering find_films_by_actor witih #{find_name_title(doca)}."
  all_links = doca.search('//a[@href]')
  all_links.each do |link|
    link_info = link['href']
    if link_info.include?("film)") &&
      !(link_info.include?("Category:") || link_info.include?("php"))
      then out << link_info
    end
  end
  out.uniq.collect { |link| strip_out_name(link)}
end

