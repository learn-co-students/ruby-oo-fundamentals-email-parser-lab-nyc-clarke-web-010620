# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pp'
require 'pry'


class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        @emails.delete(',').split(' ').uniq
    end

end


# parser = EmailParser.new("john@doe.com, person@somewhere.org, person@somewhere.org")
# space_parser = EmailParser.new("avi@test.com arel@test.com")
# double_parser = EmailParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
# binding.pry