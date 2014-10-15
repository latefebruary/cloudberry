ActiveAdmin.register Article do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :text, :anonce, :is_published
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  index do
    selectable_column
    id_column
    column :title
    column :created_at
    column :is_published
    actions
  end

  member_action :single_approve do
    Article.find(params[:id]).update(is_published: true)
    redirect_to action: :index
  end

  action_item only: :show do
   link_to 'Approve',                   
              single_approve_admin_article_path(resource)   

  end
end
