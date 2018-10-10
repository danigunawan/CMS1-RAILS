ActiveAdmin.register Block do

permit_params :title, :show_title, :body, :position, :display, :class_suffix, :order, :is_published


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# untuk filter kolom yang ditampilkan saja pada datatables bawaan ruby kita
index do
	column :id
	column :title, :sortable => :title
	column :position, :sortable => :position
	column :display, :sortable => :display
	column :created_at, :sortable=> :created_at
	column :order
	actions
end

form do |f|
	f.inputs "Details" do
		f.inputs :title, :label => "Title"
		f.inputs :show_title, :label => "Show Title"
		f.inputs :body, as: :html_editor, :label => "Body"
		f.inputs :position, :label => "Position", :as => :select, :collection => [["Jumbotron","jumbotron"], ["Block","block"]]
		f.inputs :display, :label => "Display", :as => :select, :collection => [["All Pages","all"], ["Homepage Only","home"], ["All But Homepage", "nohome"]]
		f.inputs :order, :label => "Order"
		f.inputs :class_suffix, :label => "Class Suffix"
		f.inputs :is_published, :label => "Published"
		f.actions
		end
	end

end
