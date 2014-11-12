module CommentsHelper
  def nested_comments(comments)
    comments.map do |comment, sub_comments|
      # content_tag(:div, render(comment), :class => "media")
      render(comment) + content_tag(:div, nested_comments(sub_comments), :class => "nested_comments")
    end.join.html_safe
   end
 end