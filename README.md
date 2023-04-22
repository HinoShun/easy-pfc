# README

## アプリケーション名
EASY-PFC

## アプリケーション概要（課題抽出と解決方法）
### 目的
かっこいい、美しい身体づくりをサポートするミニアプリケーション。  
ダイエットする上で必要となるカロリー計算とおすすめとなる栄養素バランスを簡単に調べることができる。  

## 利用方法
1. フォームより、必要な身体情報を入力し、ボタンをクリックする

## テーブル設計

### body_data テーブル
| Column             | Type    | Options                  |
| ------------------ | ------  |------------------------- |
| height             | float   | null: false              |
| weight             | float   | null: false              |
| age                | integer | null: false              |
| sex_id             | integer | null: false              |
| target_date        | date    | null: false              |
| target_weight      | float   | null: false              |
| activity_level_id  | integer | null: false              |

