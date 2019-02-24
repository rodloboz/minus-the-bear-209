class Order < ApplicationRecord
  belongs_to :user

  #                 0     1      2       3        4 ...
  enum state: %i[pending paid shipped received refunded]

  monetize :amount_cents
end
