s = gets
search = s.chomp.split(//).uniq
search_count = search.count
p search_result = (search_count == 2) ? 'Yes' : 'No'
