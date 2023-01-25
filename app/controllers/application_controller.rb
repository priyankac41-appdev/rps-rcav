class ApplicationController < ActionController::Base
  layout(false)
  # Add your actions below this line
  # ================================

  def play_rock
    # self.redirect_to("https://www.wikipedia.org")
    #render({:html => "<h1> Howdy, World! </h1>".html_safe})
    render({:template => "game_templates/user_rock.html.erb"}) #erb = embedded ruby template, apparently better than html file formatting
    # the folder game_templates must be embedded in the 'app/views' folder and cant be elsewhere
  end

end
