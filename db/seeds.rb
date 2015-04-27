users = [ 
         {username: "Admin", role: 1, points: 500, password: 'p' },
         {username: "B", role: 0, points: 500, password: 'p' },
         {username: "C", role: 0, points: 500, password: 'p' },
         {username: "D", role: 0, points: 500, password: 'p' },
         {username: "E", role: 0, points: 500, password: 'p' } 
        ]

prizes = [
          {name: 'vacation', description: 'anywhere', available: true, value: 1000 },
          {name: 'new car', description: 'pinto', available: true, value: 500 },
          {name: 'basketball', description: 'regulation size', available: false, value: 50 },
          {name: 'skis', description: 'alpine', available: true, value: 10 },
          {name: 'bike', description: 'not a motorcycle', available: true, value: 100 }  
         ]

users.each do |u|
  User.create(u)
end

prizes.each do |p|
  Prize.create(p)
end