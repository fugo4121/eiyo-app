class Base < ActiveHash::Base
  self.data = [
    # 女性・年齢バージョンも追加
    { id: 1,  kcal: 2488, protein: 87.4,
              lipid: 59.7, carb: 336, calcium: 750, iron: 7.5, vitamin_a: 900,
              vitamin_b1: 1.4, vitamin_b2: 1.6, vitamin_c: 100, vitamin_e: 6,
              fiber: 21, salt: 0},
    { id: 2,  kcal: 2888, protein: 134.4,
      lipid: 89.6, carb: 436.8, calcium: 2500, iron: 50, vitamin_a: 2700,
      vitamin_b1: 999, vitamin_b2: 999, vitamin_c: 9999, vitamin_e: 900,
      fiber: 999, salt: 7.5}]
end
