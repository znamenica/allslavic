# frozen_string_literal: true

class Novelty < Librum
   default_scope { unscope(:where).where(type: "Novelty") }
end
