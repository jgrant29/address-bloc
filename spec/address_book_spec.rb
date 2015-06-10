RSpec.describe AddressBook do

  let(:book) { AddressBook.new }

  def check_entry(entry, expected_name, expected_number, expected_email)
    expect(entry.name).to eql expected_name
    expect(entry.phone_number).to eql expected_number
    expect(entry.email).to eql expected_email
  end


  context "attributes" do
    it "should respond to entries" do
      expect(book).to respond_to(:entries)  
    end

    it "should initialize entries as an array" do
      expect(book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      expect(book.entries.size).eql? 0
    end
  end 

  context ".add_entry" do 
    it "adds only one entry to the address book" do
    book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

    expect(book.entries.size).eql? 1
  end


    it "adds the correct information to entries" do
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]

      expect(new_entry.name).eql? 'Ada Lovelace'
      expect(new_entry.name).eql? '010.012.1815'
      expect(new_entry.name).eql? 'augusta.king@lovelace.com'
    end
  end

  context ".remove_entry" do 
    it "removes entry" do
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

      expect(book.entries.size).eql? 1

    end

    it 'should remove an entry' do
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
           
      expect(book.entries.size).eql? 0
    end
  end

 # #2
   # Test that AddressBook's .import_from_csv() method is working as expected
  context ".import_from_csv" do
     it "imports the correct number of entries" do
 # #3
       book.import_from_csv("entries.csv")
       book_size = book.entries.size
 
       # Check the size of the entries in AddressBook
       expect(book_size).to eql 5
     end

    it "imports the 1st entry" do
      book.import_from_csv("entries.csv")
      # Check the first entry
      entry_one = book.entries[0]
      check_entry(entry_one, "Bill", "555-555-5555", "bill@blocmail.com")
     
    end

    it "imports the 2nd entry" do
      book.import_from_csv("entries.csv")
      # Check the second entry
      entry_two = book.entries[1]
      check_entry(entry_two, "Bob", "555-555-5555", "bob@blocmail.com")
    end

    it "imports the 3rd entry" do
      book.import_from_csv("entries.csv")
      # Check the third entry
      entry_three = book.entries[2]
      check_entry(entry_three, "Joe", "555-555-5555", "joe@blocmail.com")
    end

    it "imports the 4th entry" do
      book.import_from_csv("entries.csv")
      # Check the fourth entry
      entry_four = book.entries[3]
      check_entry(entry_four, "Sally", "555-555-5555", "sally@blocmail.com")
    end

    it "imports the 5th entry" do
      book.import_from_csv("entries.csv")
      # Check the fith entry
      entry_five = book.entries[4]
      check_entry(entry_five, "Sussie", "555-555-5555", "sussie@blocmail.com")
    end
  end

  context ".import_from_csv" do
     it "imports the correct number of entries" do
 # #3
       book.import_from_csv("entries_2.csv")
       book_size = book.entries.size
 
       # Check the size of the entries in AddressBook
       expect(book_size).to eql 3
     end

    it "imports the 1st entry" do
      book.import_from_csv("entries_2.csv")
      # Check the first entry
      entry_one = book.entries[0]
      check_entry(entry_one, "Bobbilee", "555-555-5555", "bobbilee@blocmail.com")
    end

    it "imports the 2nd entry" do
      book.import_from_csv("entries_2.csv")
      # Check the second entry
      entry_two = book.entries[1]
      check_entry(entry_two, "Justin", "555-555-5555", "justin@blocmail.com")
    end

    it "imports the 3rd entry" do
      book.import_from_csv("entries_2.csv")
      # Check the third entry
      entry_three = book.entries[2]
      check_entry(entry_three, "Mom", "555-555-5555", "mom@blocmail.com")
    end
  end

end
