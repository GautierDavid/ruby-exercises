
def caesar_cipher(str, shift)

  str.codepoints.map do |char_code|

    shifted_charcode = char_code + shift

    char_code.between?(65, 90) ? minmax = [65, 90] : minmax = [97, 122]


    !/[a-zA-Z]/.match?(char_code.chr) ? char_code : shifted_charcode > minmax[1] ? (minmax[0] + shifted_charcode - minmax[1] - 1) : shifted_charcode
      

  end
  .map{|char_code| char_code.chr}.join

end

p caesar_cipher("What a string!", 5)



# MORE LISIBLE VERSION

def caesar_restructured(str, shift)

  str.codepoints.map do |char_code|

    shifted_charcode = char_code + shift
    
    char_code.between?(65, 90) ? minmax = [65, 90] : minmax = [97, 122]

    if !/[a-zA-Z]/.match?(char_code.chr)
      char_code
    else
      if shifted_charcode > minmax[1]
        (minmax[0] + shifted_charcode - minmax[1] - 1)
      else 
        shifted_charcode
      end
    end
      

  end
  .map{|char_code| char_code.chr}.join

end

p caesar_restructured("Hello World!!", 6)