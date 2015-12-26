class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  def overdue?
    self.due_on < Time.now
  end
end
