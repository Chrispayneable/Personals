class OrangeTree

  def initialize(fruit)
  @fruit = fruit
  @year = 0
  @kinomi = 0

  if fruit.start_with?('a', 'e', 'i', 'o', 'u')
    article = 'an'
  else
    article = 'a'
  end

  puts "This is #{article} " + @fruit + ' tree!'
  sleep 0.5
  end

  def fruit_check
    if @kinomi == 0
      sleep 0.4
      puts "There are no fruit on this tree."
      sleep 0.4
    elsif @kinomi >= 1
      sleep 0.4
      puts 'Oh! This tree has ' + @kinomi.to_s + ' pieces of fruit on it.'
    end
    passage_of_time
  end

  def long_sleep
    @year += 4
    puts 'You close your eyes...'
    sleep 0.3
    "...".each_char do |x|
      sleep 0.3
      print x
      sleep 0.3
    end
      puts 'and wake up years later.'
      sleep 0.5
        passage_of_time
  end



  private
  def passage_of_time
    if @year >= 2
      sleep 0.5
      puts "This tree has some fruit on it!"
      @kinomi += 1
      sleep 0.3
    end
    if @year.between?(3,6)
      sleep 0.5
      puts "This #{@fruit} tree is getting really big."
      sleep 0.4
    end
    if @year >= 13
      sleep 0.9
      puts "Oh no..."
      "...".each_char do |x|
        sleep 0.3
        print x
      end
        puts "Lightning has hit the tree... it was fun while it lasted."
        exit
      end

  end

end



tree = OrangeTree.new('apple')
tree.long_sleep
tree.fruit_check
tree.long_sleep
tree.fruit_check
tree.long_sleep
tree.fruit_check
tree.long_sleep
tree.fruit_check
tree.long_sleep
