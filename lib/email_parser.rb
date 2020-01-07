# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
 
  def initialize (email_address)
    @email_address = email_address
  end
  
  
  def parse
    correct_emails = []
    parsed_emails = @email_address.split(/[,\s]+/)
    parsed_emails.each do |email_address|
      if !correct_emails.include?(email_address)
        correct_emails << email_address
      end
    end
    correct_emails
  end
  
end
    