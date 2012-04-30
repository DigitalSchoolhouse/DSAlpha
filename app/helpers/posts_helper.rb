module PostsHelper
  include AutoHtml
  
  def asset_embed(url)
      auto_html(url) {
      html_escape
      image
      youtube(:width => 400, :height => 250)
      link :target => "_blank", :rel => "nofollow"
      simple_format
      }
  end
end
