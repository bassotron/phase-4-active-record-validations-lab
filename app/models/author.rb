class Author < ApplicationRecord
validates :name, presence: true, allow_blank: false, uniqueness: { case_sensitive: true }
validates :phone_number, length: { is: 10 }


end
