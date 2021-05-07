#caesar's cipher encryption
# ascii uppercase 65-90
# ascii lowercase 97-122

def ccEncode(xPhrase, xKey)
    xPhrase = xPhrase.split
    len = xPhrase.length
    xAscii = []

    for i in 0...len
        word = xPhrase[i].chars.map do |letter|
            if(letter.ord>=97 && letter.ord <=122)
                shifted = letter.ord+xKey
                while (shifted>122) do
                    shifted = (shifted-122)+96
                end
                letter=shifted
                #end of if
            elsif(letter.ord>=65 && letter.ord <=90)
                shifted = letter.ord+xKey
                while (shifted>90) do
                    shifted = (shifted-90)+64
                end
                letter=shifted
            else
                letter.ord
            end
        end
        xAscii.push(word)
    end
    #sa karon ang naa sa xAscii kai mga na shifted na nga words
    #print xAscii
    zCypher = xAscii.map do |word|
        letr = word.map{|letter| letter.chr} #dri kai gina change ang ascii into letters
        word = letr.join("")
    end
    print zCypher.join("\s") #print the caeser ciphered
end

ccEncode("This is my Cipher!!", 420)
