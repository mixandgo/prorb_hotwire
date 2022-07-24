class Post < ApplicationRecord
  # after_create_commit do
  #   broadcast_update_to("teststr",
  #     target: "broadcasts",
  #     html: "Post #{title} was created."
  #   )
  # end

  # after_update_commit do
  #   broadcast_prepend_to("teststr",
  #     target: "broadcasts",
  #     html: "<div>[#{Time.now}] UPDATE: Changed title to #{title}</div>".html_safe
  #   )
  # end
end
