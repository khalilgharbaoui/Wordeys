wordeys = User.create(email: 'wordeys@test.nl', password: 'wordeys')

List.create([
  { title: "Colours", base_language: "Nederlands", translation: "English" },
  { title: "Food", base_language: "Nederlands", translation: "English" }
  ])

Word.create([
  { base_language: "Blauw", translation: "Blue", list_id: 1 },
  { base_language: "Rood", translation: "Red", list_id: 1 },
  { base_language: "Geel", translation: "Yellow", list_id: 1 },
  { base_language: "Wit", translation: "White", list_id: 1 },
  { base_language: "Zwart", translation: "Black", list_id: 1 },
  { base_language: "Groen", translation: "Green", list_id: 1 },
  { base_language: "Paars", translation: "Purple", list_id: 1 },
  { base_language: "Kip", translation: "Chicken", list_id: 2 },
  { base_language: "Aardappel", translation: "Potato", list_id: 2 },
  { base_language: "Vlees", translation: "Meat", list_id: 2 },
  { base_language: "Aardbei", translation: "Strawberry", list_id: 2 }
])
