(16..100).to_a.each do |i|
  system("curl -O http://mtcgdatabase.com.br/BSUM/#{i}.png; mv #{i}.png #{1000+i}.png")
end
