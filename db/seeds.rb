User.destroy_all

3.times do
    User.create(
        name: Faker::TvShows::RickAndMorty.character,
        password: "swordfish"
    )
end
