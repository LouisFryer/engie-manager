class Order < ActiveRecord::Base

	validates :poNumber, :date, :contact, :amount, :targetDate, :unitCount,  presence: true


end
