# encoding: utf-8

require "csv"

namespace :cards do
  task :import => :environment do
    ActiveRecord::Base.connection.execute("DELETE FROM cards")
    CSV.foreach(Rails.root + "cards.csv", headers: true) do |row|
      Card.create(row.to_hash)
    end
  end
end
