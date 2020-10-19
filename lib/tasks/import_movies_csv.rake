require 'csv'

namespace :movies do
  desc "Import movies from a CSV file"
  task :import => :environment do
    path = ENV.fetch("CSV_FILE") {
      File.join(File.dirname(__FILE__), %w[.. .. db data movies.csv])
    }
    Movie.transaction do 
      CSV.foreach(path, headers: true, header_converters: :symbol) do |row|
        Movie.create(row.to_hash)
      end
    end
  end
end