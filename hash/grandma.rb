product = {
  milk: "2",
  apple: "9",
  chease: "2",
  cherry: "47",
  potato: "18"
}

economic = {
  vacuum: "1",
  broom: "2",
  bag: "11",
  rag: "4",
  sponge: "1"
}

products = product.merge(economic)

products.each do |goods|
  print goods 
end

 

