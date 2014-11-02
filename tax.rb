class Receipt
	attr_accessor :item, :sales_tax, :import_tax, :total

	def initialize
		@item = []
		@sales_tax = 0
		@import_tax = 0
		@total = 0
	end

	def print_items
		puts "Choose what to add to your cart"
		puts "(1) for book"
		puts "(2) for Music box"
		puts "(3) for Chocolate bar"
		puts "(4) for Headache pills"
		puts "(5) Imported Chocolate"
		puts "(6) Imported Perfume"
		puts "(7) to exit"
		instructions
	end

	def instructions
		choice = gets.chomp.to_i
		system "clear"
		return if choice == 8
		case choice
		when 1 then add_book
		when 2 then add_music_box
		when 3 then add_chocolate_bar
		when 4 then add_headache_pills
		when 5 then add_imported_chocolate
		when 6 then add_imported_perfume
		when 7 then check_out
		end
	end

	def add_book
		puts "What was its value"
		book = "Book"
		book_value = gets.chomp.to_f
		book_hash = {book => book_value}
		@item << book_hash
		@total += book_value
		puts "Book added to cart"
		sleep(2)
		system "clear"
		print_items
	end

	def add_music_box
		puts "what was its value"
		music_box = "Music Box"
		music_box_value = gets.chomp.to_f
		sales_tax = music_box_value * 0.10
		music_box_value += sales_tax
		music_box_hash = {music_box => music_box_value}
		@item << music_box_hash
		@sales_tax += sales_tax
		@total += music_box_value
		puts "Music box added to cart"
		sleep(2)
		system "clear"
		print_items
	end

	def add_chocolate_bar
		puts "What was its value"
		chocolate_bar = "Chocolate bar"
		chocolate_bar_value = gets.chomp.to_f
		chocolate_bar_hash = {chocolate_bar => chocolate_bar_value}
		@item << chocolate_bar_hash
		@total += chocolate_bar_value
		puts "Chocolate bar added to cart"
		sleep(2)
		system "clear"
		print_items
	end

	def add_headache_pills
		puts "What was its value"
		headache_pills = "Headache pills"
		headache_value = gets.chomp.to_f
		headache_hash = {headache_pills => headache_value}
		@item << headache_hash
		@total += headache_value
		puts "Headache pills added to cart"
		sleep(2)
		system "clear"
		print_items
	end

	def add_imported_chocolate
		puts "What was its value"
		imported_chocolate = "Imported Chocolate"
		imported_chocolate_value = gets.chomp.to_f
		imported_tax = imported_chocolate_value * 0.05
		imported_chocolate_value += imported_tax
		imported_chocolate_hash = {imported_chocolate => imported_chocolate_value}
		@item << imported_chocolate_hash
		@import_tax += imported_tax
		@total += imported_chocolate_value
		puts "Imported chocolate added to cart"
		sleep(2)
		system "clear"
		print_items
	end

	def add_imported_perfume
		puts "What was its value"
		imported_perfume = "Imported Perfume"
		imported_perfume_value = gets.chomp.to_f
		imported_tax = imported_perfume_value * 0.05
		sales_tax = imported_perfume_value * 0.10
		imported_perfume_value += imported_tax
		imported_perfume_value += sales_tax
		imported_perfume_hash = {imported_perfume => imported_perfume_value}
		@item << imported_perfume_hash
		@sales_tax += sales_tax
		@import_tax += imported_tax
		@total += imported_perfume_value
		puts "Imported perfume added to cart"
		sleep(2)
		system "clear"
		print_items
	end

	def check_out
		puts "Thank you. Here is your receipt"
		@item.each do |item|
			item.each {|key, value| puts "#{key} = #{value}"}
		end
		
		if @sales_tax != 0
			puts "Sales tax: #{@sales_tax}"
		end
		if @import_tax != 0
			puts "Import tax: #{@import_tax}"
		end
		puts "Total: #{total}"

	end

end

receipt = Receipt.new

receipt.print_items