class Cursoprofesor < ApplicationRecord
  belongs_to :profesor
  belongs_to :curso
end
