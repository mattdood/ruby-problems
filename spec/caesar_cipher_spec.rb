require 'caesar_cipher'

describe CaesarCipher do
  describe 'caesar_cipher' do
    context 'shift 0' do
      it 'returns the same string' do
        expect(CaesarCipher.caesar_cipher('String', 0)).to eql('String')
      end
    end

      context 'can shift 2 words' do
        it 'returns two words shifted' do
          expect(CaesarCipher.caesar_cipher('Two words', 1)).to eql('Uxp xpset')
        end
      end

        context 'can ignore all punctuation symbols' do
          it 'returns string with punctuation' do
            expect(CaesarCipher.caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
          end
        end

  end
end
