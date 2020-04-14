json.results @results do |result|
  json.content result[:topic]

  path_string = ''
  result[:path].each_with_index do |member_id, idx|
   path_string += "#{Member.find(member_id).name}"
   if idx != result[:path].size - 1
	path_string += " --> "
   end
  end

  json.path path_string
end