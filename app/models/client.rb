class Client < ApplicationRecord
  enum status: [:active, :inactive]
end
