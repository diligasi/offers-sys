module HomeHelper

  def days_to_end(date)
    return 'NaN' if date.blank?
    Integer(date - Date.today)
  end
end
