module ApplicationHelper

	def gmail_date_format(date)
    unless date.blank?  
      Time.zone.now.beginning_of_day <= date ?
      date.strftime('%I').to_i.to_s + date.strftime(':%M ') + date.strftime('%p').downcase :
      Time.zone.now.beginning_of_year <= date ?
      date.strftime('%b ') + date.day.to_s :
      date.strftime('%x')
    end
  end
	
end
