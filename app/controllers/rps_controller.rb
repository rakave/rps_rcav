class RpsController < ApplicationController

  def play_rock

    @user_move = "Rock"
    rps_array=["Rock", "Paper", "Scissors"]
    @computer_move=rps_array.sample
    @img_src_player="../assets/images/rock.png"

    if @user_move == @computer_move
      @result = "You tied!"
      @img_src_computer = "../assets/images/rock.png"
    elsif (@user_move == "Rock" && @computer_move == "Paper")
      @result = "You lost!"
      @img_src_computer = "../assets/images/paper.png"
    elsif (@user_move == "Rock" && @computer_move == "Scissors")
      @result = "You won!"
      @img_src_computer = "../assets/images/scissors.png"
    end

    render("play_rock.html.erb")
  end

  def play_paper

    @user_move = "Paper"
    rps_array=["Rock", "Paper", "Scissors"]
    @computer_move=rps_array.sample
    @img_src_player="../assets/images/paper.png"

    if @user_move == @computer_move
      @result = "You tied!"
      @img_src_computer = "../assets/images/paper.png"
    elsif (@user_move == "Paper" && @computer_move == "Scissors")
      @result = "You lost!"
      @img_src_computer = "../assets/images/scissors.png"
    elsif (@user_move == "Paper" && @computer_move == "Rock")
      @result = "You won!"
      @img_src_computer = "../assets/images/rock.png"
    end

    render("play_paper.html.erb")
  end

  def play_scissors

    @user_move = "Scissors"
    rps_array=["Rock", "Paper", "Scissors"]
    @computer_move=rps_array.sample
    @img_src_player="../assets/images/scissors.png"

    if @user_move == @computer_move
      @result = "You tied!"
      @img_src_computer = "../assets/images/scissors.png"
    elsif (@user_move == "Scissors" && @computer_move == "Rock")
      @result = "You lost!"
      @img_src_computer = "../assets/images/rock.png"
    elsif (@user_move == "Scissors" && @computer_move == "Paper")
      @result = "You won!"
      @img_src_computer = "../assets/images/paper.png"
    end

    render("play_scissors.html.erb")
  end

end

#   ██╗   ██╗███████╗██╗     ██╗   ██╗
#   ██║   ██║██╔════╝██║     ██║   ██║
#   ██║   ██║█████╗  ██║     ██║   ██║
#   ╚██╗ ██╔╝██╔══╝  ██║     ██║   ██║
#    ╚████╔╝ ███████╗███████╗╚██████╔╝
#     ╚═══╝  ╚══════╝╚══════╝ ╚═════╝
