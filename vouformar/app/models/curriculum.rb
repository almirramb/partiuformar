class Curriculum < ActiveRecord::Base
  composed_of: AbstractDiscipline
end
