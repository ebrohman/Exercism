class FoodChainSong

  NUM_TO_TYPE = { 1 => "fly", 2 => "spider", 3 => "bird", 4 => "cat", 5 => "dog", 6 => "goat", 7 => "cow", 8 => "horse"}

  SLOGAN = { 1 => "", 2 => "It wriggled and jiggled and tickled inside her.", 3 => "How absurd to swallow a bird!", 4 => "Imagine that, to swallow a cat!", 5 => "What a hog, to swallow a dog!", 6 => "Just opened her throat and swallowed a goat!", 7 => "I don't know how she swallowed a cow!", 8 => "She's dead, of course!" }

  attr_accessor :type
  attr_accessor :num

  def verse(num)
    @num = num
    @type = NUM_TO_TYPE[num]
    if num == 1
      string = [first_line, last_line].join("\n")
    elsif num == 2
      string = [first_line, SLOGAN[num], second_to_last_line, last_line].join("\n")
    end
    final_string = string << "\n"
  end

  def type_minus_one
    NUM_TO_TYPE[num - 1]
  end

  def song
    def verse(verse_num)
     return ("I know an old lady who swallowed a fly.\nI don't know why she swallowed the fly. Perhaps she'll die.\n").verse_num.times
    end
  end

  def first_line
    "I know an old lady who swallowed a #{type}."
  end

  def second_to_last_line
    "She swallowed the spider to catch the fly."
  end

  def last_line
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end
end
