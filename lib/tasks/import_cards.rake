# encoding: utf-8

require "csv"

namespace :cards do
  task :import => :environment do
    Card.destroy_all
    CSV.foreach(Rails.root + "cards.csv", headers: true) do |row|
      Card.create(row.to_hash)
    end
  end
end
