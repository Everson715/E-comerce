# Categorias
cat1 = Category.create!(name: "Livros")
cat2 = Category.create!(name: "Eletrônicos")
cat3 = Category.create!(name: "Roupas")

# Produtos
10.times do |i|
  Product.create!(
    name: "Produto #{i + 1}",
    description: "Descrição do produto #{i + 1}",
    price: rand(10..200),
    stock: rand(5..50),
    category: [cat1, cat2, cat3].sample
  )
end

# Usuários
User.create!(
  name: "Cliente",
  email: "cliente@example.com",
  password: "senha123",
  password_confirmation: "senha123",
  admin: false
)

User.create!(
  name: "Admin",
  email: "admin@example.com",
  password: "admin123",
  password_confirmation: "admin123",
  admin: true
)
