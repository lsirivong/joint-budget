# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

default_password = ENV['DEFAULT_PASSWORD'] || "password"
lenny = Member.create! name: "Lenny", email: "lenny@lenny-s.com", password: "#{default_password}"
dana = Member.create! name: "Dana", email: "edanap@gmail.com", password: "#{default_password}"

split_budget = Budget.create! name: 'Split'
joint_budget = Budget.create! name: 'Joint'

# personal budgets

Member.all.each do |member|
	b = Budget.create! name: "#{member.name}'s Budget"
	Membership.create! budget: b, member: member, allocation: 1
	other_members = Member.where.not id: member.id
	other_members.each do |other_member|
		Membership.create! budget: b, member: other_member, allocation: 0
	end
end

Member.all.each do |member|
	Membership.create! budget: split_budget, member: member, allocation: 0.5
	Membership.create! budget: joint_budget, member: member, allocation: 0.5
end
