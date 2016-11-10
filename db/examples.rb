User.create({ email: "alex@beers.com", password: "alex", password_confirmation: "alex" })

Team.create([
              { name: "Solum's Core", user_id: 1 },
              { name: "Mothim is Awe-thim", user_id: 1}
            ])

TeamMember.create([
                    { team_id: 1, pokemon_id: 561, user_id: 1 },
                    { team_id: 1, pokemon_id: 10009, user_id: 1 },
                    { team_id: 1, pokemon_id: 248, user_id: 1 },
                    { team_id: 1, pokemon_id: 212, user_id: 1 },
                    { team_id: 1, pokemon_id: 385, user_id: 1 },
                    { team_id: 1, pokemon_id: 445, user_id: 1 },
                    { team_id: 2, pokemon_id: 414, user_id: 1 },
                    { team_id: 2, pokemon_id: 573, user_id: 1 },
                    { team_id: 2, pokemon_id: 82, user_id: 1 }
                  ])
