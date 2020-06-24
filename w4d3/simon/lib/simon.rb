class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    p "Get ready..."
    sleep(2)
    system("clear")
    show_sequence
    require_sequence
    case game_over
    when false
      round_success_message
      @sequence_length += 1
      system("clear")
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      p color
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    p "Please enter the sequence"
    @seq.each do |color|
      answer = gets.chomp
      if answer != color
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "You got it all right!!"
  end

  def game_over_message
    p "You answered incorrectly. Game Over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


x = Simon.new
x.play