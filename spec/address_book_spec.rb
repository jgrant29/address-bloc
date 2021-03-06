RSpec.describe AddressBook do
  context "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)  
    end

    it "should initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).eql? 0
    end
  end 

  context ".add_entry" do 
    it "adds only one entry to the address book" do
    book = AddressBook.new
    book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

    expect(book.entries.size).eql? 1
  end


    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]

    expect(new_entry.name).eql? 'Ada Lovelace'
    expect(new_entry.name).eql? '010.012.1815'
    expect(new_entry.name).eql? 'augusta.king@lovelace.com'
    end
  end

    context ".remove_entry" do 
    it "removes entry" do
      book =  AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

      expect(book.entries.size).eql? 1

  end

     it 'should remove an entry' do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
           
      expect(book.entries.size).eql? 0
       end
    end
end



