def caesar_cipher(string, shift = 0)
  input = string.split(" ").map {|word| word.bytes}
  input.map! {|word| 
    word.map!{ |character|
    # wrapper case
      if (character + shift) >= 'z'.ord
          placement = shift - ('z'.ord - character) - 1
          character = placement + 'a'.ord
      elsif (character + shift) >= 'Z'.ord && (character + shift) < 'a'.ord
        p 'Reached'
        placement = shift - ('Z'.ord - character) - 1
        character = placement + 'A'.ord
      # end of wrapper case
      else 
        character += shift
      end
    }
  word.pack('c*')
  }
end