require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    remove = nil
    entries.each do |entry|
      if name == entry.name && phone_number == entry.phone_number && email == entry.email
        remove = entry
      end
    end
    entries.delete(remove)
  end

end
