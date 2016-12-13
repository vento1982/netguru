class StudentDecorator < BaseDecorator
  include ActiveSupport::NumberHelper
  
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
  	
  	@avg_notes = subject_item.subject_item_notes.average(:value)

  	if @avg_notes.nil?
  		number_to_rounded(0, precision: 2)
  	else
 		number_to_rounded(@avg_notes, precision: 2)
 	end
  end
end
