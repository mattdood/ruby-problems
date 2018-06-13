#   Shift a string into a number, then use those numbers to shift
#   the string's values. The end result should function like:
#
#   caesar_cipher("What a string!",5)
#   => "Bmfy f xywnsl!"
#
class CaesarCipher
  def self.caesar_cipher(string, num)
    ascii = string.chars.map(&:ord)
    shifted = ascii.map { |c| c + num }
    shifted.map(&:chr).join
    end

  # puts caesar_cipher(string, num)
end
