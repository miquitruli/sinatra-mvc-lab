

class PigLatinizer
    def piglatinize(w)
        words = w.split(" ")
        text = []
        words.each do |word|
          new_word = word.split(/([AEIOUaeiou].*)/).reject{|w| w.empty?}
          if new_word.length == 1
            text << ("#{new_word[0]}way")
          else
            text << ("#{new_word[1]}#{new_word[0]}ay")
          end
        end
        text.join(" ")
      end  
end
