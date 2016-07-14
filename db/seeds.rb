Client.destroy_all
c1 = Client.create(:business_name => "Badgers Chickens", :address => "12 smith road", :suburb => "Bowral", :contact_name => "Chris Badger")

c2 = Client.create(:business_name => "Badgers Chickens", :address => "12 smith road", :suburb => "Bowral", :contact_name => "Chris Badger")

--------------------------------------------------------------------------------

JobAd.destroy_all
j1 = JobAd.create(:title => "Chicken labourers needed", :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

j2 = JobAd.create(:title => "Conreters needed", :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

--------------------------------------------------------------------------------

Application.destroy_all
a1 = Application.create(:accepted => "yes", :short_list => "yes", :description => "this bloke goes alright")

a2 = Application.(:accepted => "no", :short_list => "yes", :description => "this bloke goes alright, but could be better")

a3 = Application.create(:accepted => "no", :short_list => "no", :description => "This bloke is terrible")

--------------------------------------------------------------------------------

Candidate.destroy_all
ca1 = Candidate.create(:first_name => "John", :last_name => "Smith", :email => "johnsmith@gmail.com.au")

ca2 = Candidate.create(:first_name => "chris", :last_name => "ellsmore", :email => "chrisellsmore@gmail.com.au")

ca3 = Candidate.create(:first_name => "Jordan", :last_name => "Berta", :email => "jordanberta@gmail.com.au")
