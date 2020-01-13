# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

# attr_accessor :email_addresses

def initialize (email_addresses)
    @email_addresses = email_addresses
end

def parse

emailsparsed = @email_addresses.split(/[,\s]+/)

correct_emails = []
count = 0

emailsparsed.each do |email|
    if !correct_emails.include?(email)
        correct_emails << email
    end
end

correct_emails

end

end