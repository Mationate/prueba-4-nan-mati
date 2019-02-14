Todo.destroy_all
9.times do |i|
  Todo.create(
    name: "Tarea#{i}",
    image: "https://picsum.photos/400/400/?image=#{rand(10..30)}"
  )
end