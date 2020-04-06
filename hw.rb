require 'colorize'
require 'find'

class Store
    attr_accessor :title, :author, :genre, :details
    def initialize(title = "Anonymous", author = "Anonymous", genre = nil, details = nil )
        self.title = title
        self.author = author
        self.genre = genre
        self.details = details
    end
    def print_details
        puts "\nFree_Book1: \n\ntitle:#{self.title} \nauthor:#{self.author} \ngenre:#{self.genre} \n\n#{details}"
    end
  end
  #Subclass
  class Free_Book < Store
  end
  class Purchase_Book < Store
  end 
  class Rent_Book < Store
  end
  class All < Store
  end

  1.times do
    puts "*****************************\n".center(56).green
  end
  1.times do
    puts "E-Book Store\n".center(56).yellow
  end
  1.times do
    puts "*****************************".center(56).red
  end
    puts "Welcome to Blahzy's E-Book Store. Please login.\n"
    puts "Enter username below:\n"
    x = gets.chomp
    puts "Enter your password:\n"
    y = gets.chomp
    puts "Hello #{x}"

    loop do
    puts "\nTo search and display a book, enter the title of the book below.\nor\n Enter b to browse for books."
    answer = gets.chomp
    if answer == 'b'
        puts "Enter a for all books, f for Free E-Books, p for Purchase, r for Rent."
        x = gets.chomp
        if x == 'f'
            puts "Here is a list of Free E-Books.\n"
            # file = ['books/The_Stone.txt']
    
            # file.each do |line|
            
            # text = File.read(line)
            text = File.read('books/The Stone.txt')
            puts free_Book1 = Free_Book.new("The Stone", "A R Lewis", "Adventure",text).print_details
            text = File.read('books/Once Upon a Time.txt')
            puts free_Book2 = Free_Book.new("Once Upon a Time", "P K Schwartz", "Children's book",text).print_details
            text = File.read('books/Greenfield.txt')
            puts free_Book3 = Free_Book.new("Greenfield", "A V Parez", "Thriller",text).print_details
            text = File.read('books/Blue Heaven.txt')
            puts free_Book4 = Free_Book.new("Blue Heaven", "Lewis Carter", "Drama",text).print_details
            text = File.read('books/Skies are Blue.txt')
            puts free_Book5 = Free_Book.new("Skies are Blue", "James Swarth", "Historical",text).print_details
        elsif x == 'p'
            puts "Here is a list of Paid E-Books.\n"
            puts purchase_Book1 = Purchase_Book.new("The others", "Thomas Brown", "Adventure",[""]).print_details
            puts purchase_Book2 = Purchase_Book.new("Peter", "A R Lewis", "Children's book",[""]).print_details
            puts purchase_Book3 = Purchase_Book.new("Browns' Tale", "K B Shcultz", "Thriller",[""]).print_details
            puts purchase_Book4 = Purchase_Book.new("The British Dilemma", "A R Thompson", "Drama",[""]).print_details
            puts purchase_Book5 = Purchase_Book.new("Cold Seasons", "A G Barter", "Historical",[""]).print_details
        elsif x == 'r'
            puts "Here is a list of E-Books for Rent.\n"
            puts rent_Book1 = Rent_Book.new("Chosen", "A R McDonald", "Adventure",[""]).print_details
            puts rent_Book2 = Rent_Book.new("Zippy", "A R Peters", "non Fiction",[""]).print_details
            puts rent_Book3 = Rent_Book.new("The Moors", "Ron Lewis", "Thriller",[""]).print_details
            puts rent_Book4 = Rent_Book.new("Brew Town", "Peter Chester", "Drama",[""]).print_details
            puts rent_Book5 = Rent_Book.new("The Cavern Stories", "Lance Sheffield", "Historical",[""]).print_details
        elsif x == 'a'
            puts "Here is a list of all E-Books in the Catalog.\n"
            puts purchase_Book1 = Purchase_Book.new("The others", "Thomas Brown", "Adventure",[""]).print_details
            puts purchase_Book2 = Purchase_Book.new("Peter", "A R Lewis", "Children's book",[""]).print_details
            puts purchase_Book3 = Purchase_Book.new("Browns' Tale", "K B Shcultz", "Thriller",[""]).print_details
            puts purchase_Book4 = Purchase_Book.new("The British Dilemma", "A R Thompson", "Drama",[""]).print_details
            puts purchase_Book5 = Purchase_Book.new("Cold Seasons", "A G Barter", "Historical",[""]).print_details
            puts free_Book1 = Free_Book.new("The Stone", "A R Lewis", "Adventure",[""]).print_details
            puts free_Book2 = Free_Book.new("Once Upon a Time", "P K Schwartz", "Children's book",[""]).print_details
            puts free_Book3 = Free_Book.new("Greenfield", "A V Parez", "Thriller",[""]).print_details
            puts free_Book4 = Free_Book.new("Blue Heaven", "Lewis Carter", "Drama",[""]).print_details
            puts free_Book5 = Free_Book.new("Skies are Blue", "James Swarth", "Historical",[""]).print_details
            puts rent_Book1 = Rent_Book.new("Chosen", "A R McDonald", "Adventure",[""]).print_details
            puts rent_Book2 = Rent_Book.new("Zippy", "A R Peters", "non Fiction",[""]).print_details
            puts rent_Book3 = Rent_Book.new("The Moors", "Ron Lewis", "Thriller",[""]).print_details
            puts rent_Book4 = Rent_Book.new("Brew Town", "Peter Chester", "Drama",[""]).print_details
            puts rent_Book5 = Rent_Book.new("The Cavern Stories", "Lance Sheffield", "Historical",[""]).print_details
        else
            puts "Goodbye!\n"
            break
        end
    else
        puts "Please give us a moment to retrieve that book.\n"
        require 'find'
        text = []
        Find.find('C:\Users\Astnvc\Desktop\Prog\Rby\Catalog.txt') do |line|
            text << File.read(line)
        end
        if
            text = answer
            begin 
            puts File.read("books/#{answer}.txt")
            rescue
                puts "There aren't any books called #{answer} in our Catalog."
            end
        else
            puts "The Search did not find any books titled #{answer}."
        end


    end
    puts "Would you like to continue browsing? Press n to quit or y to continue. Press a for a list of all our books"
    answer = gets.chomp
    if answer == "n"
        break
    elsif answer == 'a'
        text = []
        Find.find('C:\Users\Astnvc\Desktop\Prog\Rby\Catalog.txt') do |line|
            text << File.read(line)
            puts text
        end
    end
end
  

