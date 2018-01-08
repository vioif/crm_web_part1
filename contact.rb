class Contact

  @@contacts = []
  @@id       = 1


  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @notes      = notes

    @@id  = @@id
    @@id += 1 #this way the next contact will get a different id

  end


  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, notes)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts

  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(search)
    @@contacts.each do |conact|
      if contact.id == search
        return contact
      end
    end
    return
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(id, attribute, info_added)
    if contact.id == id
      case attribute
      when 'first name'
        @first_name       = info_added
        conact.first_name = info_added
      when 'last name'
        @last_name       = info_added
        conact.last_name = info_added
      when 'email'
        @email       = info_added
        conact.email = info_added
      when 'notes'
        @nootes      = info_added
        conact.notes = info_added
      end
    end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)
    @@contacts.each do |contact|
      case attribute
      when 'first name'
        if value == conact.first_name
          return contact
        end
      when 'last name'
        if value == conact.last_name
          return contact
        end
      when 'email'
        if value == conact.email
          return contact
        end
      else
        nil
      end
    end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts = []
  end


  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def self.delete(id)
    @@contacts.each do |contact|
      if id == contact.id
        @@contacts.delete(contact)
      end
    end
  end

  # READER

    # def first_name
    #   @first_name
    # end
    #
    # def last_name
    #   @last_name
    # end
    #
    # def email
    #   @email
    # end
    #
    # def notes
    #   @notes
    # end

    #WRITER
    # def first_name=(first_name)
    #   @first_name=first_name
    # end
    #
    # def last_name=(last_name)
    #   @last_name=last_name
    # end
    #
    # def email=(email)
    #   @email=email
    # end
    #
    # def notes=(notes)
    #   @notes=notes
    # end

    def full_name
      "#{ first_name } #{ last_name }"
    end


  # Feel free to add other methods here, if you need them.

end
