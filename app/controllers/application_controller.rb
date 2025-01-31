class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")
  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "rules.html.erb"})
  end
  
  def play_rock
    render({:template => "game_templates/user_rock.html.erb"}) #erb = embedded ruby template, apparently better than html file formatting
    # the folder game_templates must be embedded in the 'app/views' folder and cant be elsewhere
  end

  def play_paper

    @comp_move = ["rock","paper","scissors"].sample

      if @comp_move == "rock"
        @outcome = "won"
      elsif @comp_move == "paper"
        @outcome = "tied"
      elsif @comp_move == "scissors"
        @outcome = "lost"
      end

    render({:template => "game_templates/user_paper.html.erb"})
  end

  def play_scissors
    render({:template => "game_templates/user_scissors.html.erb"})
  end

end
