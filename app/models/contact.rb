class Contact < ActiveRecord::Base
  attr_accessible :company_id, :company_name, :first_name, :last_name
  
  belongs_to :company
  
  def company_name
    company.try(:name)
  end

  def company_name=(name)
    self.company = Company.find_or_create_by_name(name) if name.present?
  end
  
end
