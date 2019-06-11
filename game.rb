class Game
  def initialize(player)
    @player = player
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    puts "#{@player.name}: What does #{@number1} plus #{@number2} equal?"
    @answer = @number1 + @number2
  end

  def check_answer(answer)
    if answer == @answer
      puts "#{@player.name}: YES! You are correct."
      return true
    else
      puts "#{@player.name}: Seriously? No!"
      return false
    end
  end
end