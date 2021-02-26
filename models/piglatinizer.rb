class PigLatinizer

  def piglatinize(text)
    seperated = text.split(" ")
    latinized = seperated.map do |word|
      if word[0].downcase.match(/[aeiou]/)
        word += "way "
      else
        cons = word.match(/[^aeiou]*/).to_s
        rest = word.scan(/[aeiou]+\w*/).join
        rest + cons + "ay "
      end
    end
    latinized.join.strip
  end
end
