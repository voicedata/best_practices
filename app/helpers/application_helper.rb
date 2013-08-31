module ApplicationHelper
  def admin_link
    if user_signed_in?
      li1 = content_tag :li do
        link_to("Add", new_practice_path)
      end
      li2 = content_tag :li do
        link_to("Sign out", destroy_user_session_path, method: :delete)
      end
      [li1, li2].join "\n"
    else
      content_tag :li do
        link_to "Sign in", new_user_session_path
      end
    end
  end
end
