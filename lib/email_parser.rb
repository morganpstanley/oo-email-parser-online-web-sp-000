# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @email_array = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    @email_array = @emails.split(/(,| )/).delete_if{ |email| email.length < 3}.uniq
  end

end
