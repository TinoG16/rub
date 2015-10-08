# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
worte = %w(Pflaume Bauschaum Auster)
suche = worte.select do |w|
	w if w.downcase.include?("aus")
end
puts suche
puts "------------\n"
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
s = worte.sort_by do |l|
	l.length
end
puts s
puts "------------\n"
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert
hash = {}
worte.each do |w|
	hash[w] = w.length
end
puts hash