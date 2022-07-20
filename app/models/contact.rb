class Contact < ApplicationRecord
  enum subject: { inquiry: 0 }
end
