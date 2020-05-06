Before do |scenario|
  puts "Cenário em execução: " + scenario.name
end

After do |scenario|
  sufix = ("O cenário FALHOU!" if scenario.failed?) || "Cenário executado com Sucesso !\n\n"
  puts "#{sufix}"
  Capybara.reset!
end

After do |scenario|
  #tira uma print
  file_name = scenario.name.tr(" ", "_").upcase
  sufix = ("FALHOU" if scenario.failed?) || "PASSOU"
  shot = "logs/shots/#{file_name}_#{sufix}.png"
  puts "Tirando print da tela"
  page.save_screenshot(shot)
  embed(shot, "image/png", "Clique aqui para ver o print da tela")
end
