(1..100).to_a.each do |i|
  system("curl -O http://mtcgdatabase.com.br/BSET/#{i}.png; mv #{i}.png #{2000+i}.png")
end
