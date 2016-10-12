class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    @computer_move = ['rock','paper','scissors'].sample

    if @computer_move == @user_move
      result = 'tie'

    elsif @user_move == 'rock'
      if @computer_move == 'paper'
        result = 'lose'
      else
        result = 'win'
      end

    elsif @user_move == 'scissors'
      if @computer_move == 'paper'
        result = 'win'
      else
        result = 'lose'
      end

    elsif @user_move == 'paper'
      if @computer_move == 'scissors'
        result = 'lose'
      else
        result = 'win'
      end
    end


    @result = result

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
