module MembersHelper
	def line_item_list_items(member)
		h = ""
		member.line_items.each { |l| h += "<li>#{l.description}: #{l.amount}</li>" }
		return h
	end
end
