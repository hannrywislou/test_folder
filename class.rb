class Email
  def initialize(subject, headers)
    @subject = subject
    @headers = headers
  end
  def get_subject
    return @subject
  end
  def get_from
    return @headers[:from]
  end
  def get_date
    return @headers[:date]
  end
end

email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })

puts "Date: #{email.get_date}"
puts "From: #{email.get_from}"
puts "Subject: #{email.get_subject}"