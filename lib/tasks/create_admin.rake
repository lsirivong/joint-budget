task :create_admin => :environment do
	# admin = Member.new(:name => 'Admin', :email => Rails.application.secrets.admin_email, :password => Rails.application.secrets.admin_password)

	admin = Member.new(:name => 'Admin', :email => 'admin@example.com', :password => 'password', :admin => true)
	admin.save!
end
