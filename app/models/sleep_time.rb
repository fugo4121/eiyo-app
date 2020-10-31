class SleepTime < ActiveHash::Base
  self.data = [
    { id: 1,  time: '---',      kcal: 0 },
    { id: 2,  time: '4時間以下',  kcal: 0 },
    { id: 3,  time: '5時間',     kcal: 100 },
    { id: 4,  time: '6時間',     kcal: 200 },
    { id: 5,  time: '7時間以上',  kcal: 300 }
  ]
end
