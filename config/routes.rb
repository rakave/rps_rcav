Rails.application.routes.draw do

# bare domain plays rock
  get("/",        { :controller => "rps", :action => "play_rock" })

# individual pages
  get("/rock",   { :controller => "rps", :action => "play_rock" })
  get("/paper", { :controller => "rps", :action => "play_paper" })
  get("/scissors", { :controller => "rps", :action => "play_scissors" })
end
