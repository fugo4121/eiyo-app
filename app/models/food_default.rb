class FoodDefault < ActiveHash::Base
  self.data = [
    { id: 1,  food_name: 'ご飯', explain: 'ご飯１杯', kcal: 1, protein: 2,
              lipid: 3, carb: 4, calcium: 5, iron: 6, vitamin_a: 7,
              vitamin_b1: 8, vitamin_b2: 9, vitamin_c: 10, vitamin_e: 11,
              fiber: 12, salt: 13},
    { id: 2,  food_name: '味噌汁', explain: '味噌汁１杯', kcal: 1, protein: 2,
              lipid: 3, carb: 4, calcium: 5, iron: 6, vitamin_a: 7,
              vitamin_b1: 8, vitamin_b2: 9, vitamin_c: 10, vitamin_e: 11,
              fiber: 12, salt: 13}
  ]
end
