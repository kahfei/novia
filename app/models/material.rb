class Material < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Material.create! row.to_hash
    end
  end

end
