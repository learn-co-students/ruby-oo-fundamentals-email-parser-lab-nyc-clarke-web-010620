# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# require 'pry'
class EmailAddressParser

    attr_accessor :emails

    def initialize(email_addresses)
        @emails = email_addresses
    end

    def parse
        filtered_list = []
        email_list = @emails.split(" ").each do |element|
            element.tr!(",","")
        end
        email_list.each do |email|
            if !filtered_list.include?(email)
                filtered_list << email
            end
        end
        return filtered_list
    end
end
