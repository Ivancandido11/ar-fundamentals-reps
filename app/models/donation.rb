class Donation < ActiveRecord::Base
  belongs_to :nonprofit
  belongs_to :user

  def self.get_last_3
    last(3)
  end

  def self.get_id_of_2
    find(2)
  end

  def self.get_from_first_user
    all.filter {|donation| donation.user_id == 1}
  end

  def self.get_id_of_18
    find_by(id: 18)
  end

  def self.get_from_last_nonprofit
    all.filter {|donation| donation.nonprofit_id == Nonprofit.last.id}
  end

  def self.order_by_donation_amount
    order(:amount)
  end

  def self.amount_over_350
    all.filter {|donation| donation.amount > 350}
  end

  def self.count_of_donations
    all.count
  end

  def self.donations_to_nonprofit_with_id_of_4
    all.filter {|donation| donation.nonprofit_id == 4}
  end

  def self.total_dollars_donated
    sum(:amount)
  end

  def self.donations_by_user_with_id_of_13
    all.filter {|donation| donation.user_id == 13}
  end
end