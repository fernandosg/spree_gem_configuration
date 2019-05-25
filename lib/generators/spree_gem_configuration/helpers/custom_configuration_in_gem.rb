module SpreeGemConfiguration::Helpers::CustomConfigurationInGem
  def init_generating_tables tables_array
    tables_array.each do |table_name|
      table_name_without_semicolons = table_name.gsub("::", "")
      model = table_name.classify.constantize
      if model.try(:preferences).nil?
        executing_migration model, table_name_without_semicolons
      else
        puts "The #{model.name} model have the attribute preferences, maybe the configuration was added in another execute of this command"
    end
  end

  def executing_migration model, table_name_without_semicolons
    model
  end
end
