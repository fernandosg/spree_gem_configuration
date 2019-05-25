class Spree::SpreeGemConfiguration < Spree::Base
  self.abstract_class = true

  def self.table_name_spree table_name_sym
    @table_name_sym =  table_name_sym
  end
end
