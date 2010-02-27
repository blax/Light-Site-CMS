ExtensionType.create([
  {:name => "Quotation", :controller_name => "quotas"},
  {:name => "Menu", :controller_name => "menus"},
  {:name => "Text", :controller_name => "plain_texts"},
  {:name => "Attachment", :controller_name => "attachments"},
  {:name => "Event", :controller_name => "events"},
  {:name => "Map", :controller_name => "locations"},
  {:name => "Gallery", :controller_name => "galleries"},
  {:name => "Training", :controller_name => "trainings"},
  {:name => "Newsletter", :controller_name => "newsletters"}
])


Role.create( :name => 'admin')
user = User.create( :name => 'admin', :login => 'admin', :password => 'administrator', :password_confirmation => 'administrator', :email => 'admin@admin.pl', :activated_at => Date.today)
user.roles << Role.find_by_name('admin')
user.activate!
user.save!

Language.create(:name => "Polski", :short_name => "pl")
Language.create(:name => "English", :short_name => "en")
Language.create(:name => "Deutsch", :short_name => "de")

Status.create( :name => "Visible" )
Status.create( :name => "Hidden" )
Status.create( :name => "Development" )

MenuType.create(:name => "Horizontal main menu", :type_no => '1')
MenuType.create(:name => "Vertical main menu", :type_no => '2')
MenuType.create(:name => "Vertical main menu with children", :type_no => '3')
MenuType.create(:name => "Childrens menu", :type_no => '4')

LayoutTemplate.create(:name => "application", :header_image => "main")
Position.create(:name => "content", :main_position => true, :page_pagination => 0, :layout_template_id => 1)
Position.create(:name => "side", :main_position => false, :page_pagination => 0, :layout_template_id => 1)
Position.create(:name => "footer", :main_position => false, :page_pagination => 0, :layout_template_id => 1)