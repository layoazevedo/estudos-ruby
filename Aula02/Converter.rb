class Converter

def to_arabic(numbers)

regex = /^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/

charThis = numbers.strip

config = Hash.new 
config["I"] = 1
config["V"] = 5
config["X"] = 10
config["L"] = 50
config["C"] = 100
config["D"] = 500
config["M"] = 1000

arabic = []

for i in 0..charThis.length - 1
    arabic[i] = config[charThis[i]]
end

raise Exception, "Números inválidos" if regex.match(numbers) == nil

value = 0
for i in 0 .. arabic.length - 2

if (arabic[i+1] != nil) && (arabic[i] < arabic[i+1])
    value = arabic[i+1] - arabic[i]
    arabic[i] = value
    arabic[i+1] = 0
end

end

puts "Resultado: #{arabic.reduce(:+)}"

rescue Exception => e
puts e.message	
end
end

puts "Digite o numero romano que deseja converter para arabico"
converter = Converter.new
converter.to_arabic(gets)