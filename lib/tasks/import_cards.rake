# encoding: utf-8

require "csv"

namespace :cards do
  task :import => :environment do
    ActiveRecord::Base.connection.execute("DELETE FROM cards")

    2.times do |i|
      CSV.foreach(Rails.root + "cards#{i+1}.csv", headers: true) do |row|
        Card.create(row.to_hash)
      end
    end

  end
end
