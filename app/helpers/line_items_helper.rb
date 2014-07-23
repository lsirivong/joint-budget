module LineItemsHelper
	def get_member_select_options
		members = Member.all
		@member_options = members.map { |m| [m.name, m.id] }
		[['Select...', nil]].concat @member_options
	end

	def get_purchaser_name(line_item)
		unless line_item.member.nil?
			return line_item.member.name
		else
			return ''
		end
	end
end
