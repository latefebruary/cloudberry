ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

  columns do 
    column do 
      panel 'Статистика статей' do 
        div do
          para 'Amount of articles'
          para Article.all.size
        end
      end
    end

    column do 
      panel 'Статистика пользователей' do 
        div do
          para 'Пользователей, зарегистрированных сегодня:'
          para User.created_after(Time.now.midnight).count

        end
        div do
          para 'Всего пользователей:'
          para User.count
        end
      end
    end
  end

      # Here is an example of a simple dashboard with columns and panels.
      #
      # columns do
      #   column do
      #     panel "Recent Posts" do
      #       ul do
      #         Post.recent(5).map do |post|
      #           li link_to(post.title, admin_post_path(post))
      #         end
      #       end
      #     end
      #   end

      #   column do
      #     panel "Info" do
      #       para "Welcome to ActiveAdmin."
      #     end
      #   end
      # end
  end # content
end
