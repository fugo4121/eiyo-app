# テーブル設計

## ユーザー(user) テーブル

| Column             | Type        | Options                         |
| ------             | ----------  | ------------------------------- |
| name               | string      | null: false                     |
| email              | string      | null: false                     |
| password           | string      | null: false                     |
| gender_id          | integer     | null: false                     |
| height             | integer     | null: false                     |
| birthday           | date        | null: false                     |

### Association

- has_many :healths

## 健康管理(health) テーブル

| Column                | Type        | Options                         |
| ------                | ----------  | ------------------------------- |
| recording_date        | date        | null: false                     |
| sleep_time            | integer     |                                 |
| burn_kcal             | integer     |                                 |
| memo                  | text        |                                 |
| user                  | references  | null: false, foreign_key: true  |

### Association

- belongs_to :user
- has_many   :eats

## 食事(eat) テーブル

| Column                | Type        | Options                         |
| ------                | ----------  | ------------------------------- |
| eat_flg               | integer     | null: false                     |
| num                   | integer     | null: false                     |
| health                | references  | null: false, foreign_key: true  |
| food                  | references  | null: false, foreign_key: true  |

### Association

- belongs_to :health
- belongs_to :food

## 料理(food) テーブル

| Column             | Type         | Options                         |
| ------             | ----------   | ------------------------------- |
| food_name          | string       | null: false                     |
| explain            | string       | null: false                     |
| kcal               | integer      | null: false                     |
| protein            | integer      | null: false                     |
| lipid              | integer      | null: false                     |
| carb               | integer      | null: false                     |
| calcium            | integer      | null: false                     |
| vitamin_a          | integer      | null: false                     |
| vitamin_b1         | integer      | null: false                     |
| vitamin_b2         | integer      | null: false                     |
| vitamin_c          | integer      | null: false                     |
| vitamin_e          | integer      | null: false                     |
| fiber              | integer      | null: false                     |
| salt               | integer      | null: false                     |

### Association

- has_many   :foods