Rails.application.routes.draw do
# make a home page
get("/",{:controller => "application", :action => "homepage"}
)
# make the rock page
get("/rock",{:controller => "application", :action => "play_rock"}
)

get("/paper",{:controller => "application", :action => "play_paper"}
)
get("/scissors",{:controller => "application", :action => "play_scissors"}
)
end
