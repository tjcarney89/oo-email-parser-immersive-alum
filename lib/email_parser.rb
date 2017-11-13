# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = @emails.split(" ")
    final_emails = []
    trimmed_emails = email_array.collect do |email|
      email.chomp(",")
    end
    trimmed_emails.each do |email|
      if !final_emails.include?(email)
        final_emails << email
      end
    end
    final_emails
  end

end
