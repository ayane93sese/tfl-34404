# テーブル設計

## users テーブル


| Column             | Type   | Options    |
| ------------------ | ------ | ---------- |
| username           | string | null:false |
| email              | string | null:false |
| encrypted_password | string | null:false |

### Association

- has_many :tasks

## tasks テーブル

| Column      | Type       | Options                      |
| ----------- | ---------- | ---------------------------- |
| title       | string     | null:false                   |
| date        | date       |                              |
| text        | text       |                              |
| category_id | integer    | null:false                   |
| rank_id     | integer    | null:false                   |
| status_id   | integer    | null:false                   |
| user        | references | null:false, foreign_key:true |

### Association

- belongs_to :user
