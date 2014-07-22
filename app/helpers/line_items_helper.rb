module LineItemsHelper
	def get_member_select_options
    members = Member.all
    @member_options = members.map { |m| [m.name, m.id] }
    [['Select...', nil]].concat @member_options
  end
end
