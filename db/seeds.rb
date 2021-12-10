
gifts = [
  ["Vinho Branco Censurado", 1, "gifts/vinho_branco.png"],
  ["Vinho Tinto Censurado", 1, "gifts/vinho_tinto.png"],
  ["Espumante Francês Veuve Noire Brut Rosé", 1, "gifts/veuve_noire.png"],
  ["Necessaira Trousseau", 1, "gifts/necessaire.png"],
  ["Livro Sapiens", 1, "gifts/livro_sapiens.png"],
  ["Livro Rápido e Devagar", 1, "gifts/rapido_devagar.png"],
  ["Livro Como fazer amigos e influenciar pessoas", 1, "gifts/amigos_influenciar.png"],
  ["Livro Quem pensa enriquece", 1, "gifts/quem_pensa_enriquece.png"],
  ["Livro Ganhar, gastar, investir: O Livro do Dinheiro para Mulheres", 1, "gifts/ganhar_gastar.png"]
]

gifts.each do |gift|
  g = Gift.new(
    name: gift[0],
    quantity: gift[1],
    photo: gift[2]
  )
  if g.save
    puts "Gift #{g.name} criado com sucesso!"
  end
end
puts "Criados #{Gift.count} gifts com sucesso."
