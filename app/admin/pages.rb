ActiveAdmin.register Page do

permit_params :title, :body, :order, :is_published, :section_id, :menu_display, :featured
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

index do
	column :id
	column :title, :sortable => :title
	column :section, :sortable => :section
	column :created_at, :sortable=> :created_at
	column :order
	actions
end

form do |f|
	f.inputs "Details" do
		f.inputs :title, :label => "Title"
		f.inputs :section, :label => "Section"
		f.inputs :body, as: :html_editor, :label => "Body"
		f.inputs :order, :label => "Order"
		f.inputs :is_published, :label => "Published"
		f.inputs :featured, :label => "Featured"
		f.inputs :menu_display, :label => "Display in Menu"
		f.actions
		end
	end



end

