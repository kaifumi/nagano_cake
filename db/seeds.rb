# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Product.create!(
#     genre_id: 1,
#     name: "ケーキ",
#     content: "イチゴのショートケーキです",
#     price: 500,
#     selling_status: true
# )

# CartProduct.create!(
#     customer_id: 1,
#     product_id: 1,
#     amount: 2
# )

# Customer.create!(
#     email: "drogon@ball",
#     password: "password",
#     first_name: "悟空",
#     last_name: "孫",
#     kana_first_name: "ゴクウ",
#     kana_last_name: "ソン",
#     telephone_number: "000-0000-0000",
#     postal_code: "000-0000",
#     address: "地球"
# )

# Genre.create!(
#     type: "cake",
#     sell_activated: true
# )

# Delivery.create!(
#     customer_id: 1,
#     order_id: 1,
#     postal_code: "111-1111",
#     address: "ナメック星",
#     receiver: "ピッコロ"
# )




# Customer.create!(
#     [
#       {
#         last_name:"劉備",
#         first_name:"玄徳",
#         kana_last_name:"リュウビ",
#         kana_first_name:"ゲントク",
# 				postal_code:"111-1111",
#         address:"武漢",
#         telephone_number:"111-1111-1111",
#         email:"test1@test.com",
#         password:"111111"
#       },
#       {
#         last_name:"関羽",
#         first_name:"雲長",
#         kana_last_name:"カンウ",
#         kana_first_name:"ウンチョウ",
#         postal_code:"222-2222",
#         address:"荊州",
#         telephone_number:"222-2222-2222",
#         email:'test2@test.com',
#         password: '222222'
#       },
#       {
#         last_name:"張飛",
#         first_name:"翼徳",
#         kana_last_name:"チョウヒ",
#         kana_first_name:"ヨクトク",
#         postal_code:"333-3333",
# 				address:"下邳",
#         telephone_number:"333-3333-3333",
#         email:'test3@test.com',
#         password: '333333'
#       }
#     ]
#   )
# Genre.create!(
# 		[
# 			{
# 				type:"ケーキ",
# 				sell_activated:true
# 			},
# 			{
# 				type:"焼き菓子",
# 				sell_activated:true
# 			},
# 			{
# 				type:"プリン",
# 				sell_activated:true
# 			},
# 			{
# 				type:"キャンディ",
# 				sell_activated:true
# 			}
# 			{
# 				type:"パン",
# 				sell_activated:false
# 			}
# 		]
# 	)

# Product.create!(
# 		[
#       {
# 				genre_id:1,
# 				name:"ショートケーキ",
# 				content:"ショートなケーキです",
# 				image_id:1,
# 				price:111,
# 				selling_status:true
# 			},
# 			{
# 				genre_id:2,
# 				name:"ばかうけ",
# 				content:"めっちゃうけます",
# 				image_id:2,
# 				price:222,
# 				selling_status:true,
# 			},
# 			{
# 				genre_id:3,
# 				name:"焼きプリン",
# 				content:"こんがりプリンです",
# 				image_id:3,
# 				price:333,
# 				selling_status:true
# 			},
# 			{
# 				genre_id:4,
# 				name:"チュッパチャップス",
# 				content:"例のアレ",
# 				image_id:4,
# 				price:444,
# 				selling_status:true
# 			},
# 			{
# 				genre_id:5,
# 				name:"フランスパン",
# 				content:"かたいやつ",
# 				image_id:5,
# 				price:555,
# 				selling_status:true
# 			}
# 		]
# 	)




# 		OrderDetail.create!(
# 			[
# 		  {
# 			product_id:1,
#     		order_id:1,
#     		purchase_price:222,
#    			amount:2,
#     		product_status:0
# 			},
# 			{
# 			product_id:2,
#     		order_id:1,
#     		purchase_price:888,
#    			amount:4,
#     		product_status:0
# 			}
# 			]
# 	)
Customer.create!(
    [
      {
        last_name:"劉備",
        first_name:"玄徳",
        kana_last_name:"リュウビ",
        kana_first_name:"ゲントク",
				postal_code:"111-1111",
        address:"武漢",
        telephone_number:"111-1111-1111",
        email:"test1@test.com",
        password:"111111"
      },
      {
        last_name:"関羽",
        first_name:"雲長",
        kana_last_name:"カンウ",
        kana_first_name:"ウンチョウ",
        postal_code:"222-2222",
        address:"荊州",
        telephone_number:"222-2222-2222",
        email:'test2@test.com',
        password: '222222'
      },
      {
        last_name:"張飛",
        first_name:"翼徳",
        kana_last_name:"チョウヒ",
        kana_first_name:"ヨクトク",
        postal_code:"333-3333",
				address:"下邳",
        telephone_number:"333-3333-3333",
        email:'test3@test.com',
        password: '333333'
      }
    ]
  )
Genre.create!(
		[
			{
				type:"ケーキ",
				sell_activated:true
			},
			{
				type:"焼き菓子",
				sell_activated:true
			},
			{
				type:"プリン",
				sell_activated:true
			},
			{
				type:"キャンディ",
				sell_activated:true
			},
			{
				type:"パン",
				sell_activated:false
			}
		]
	)

Product.create!(
		[
      {
				genre_id:1,
				name:"ショートケーキ",
				content:"ショートなケーキです",
				image: Rails.root.join("app/assets/images/ケーキ_sample1.jpg").open,
				price:111,
				selling_status:true
			},
			{
				genre_id:2,
				name:"ばかうけ",
				content:"めっちゃうけます",
				image: Rails.root.join("app/assets/images/焼き菓子_sample1.png").open,
				price:222,
				selling_status:true,
			},
			{
				genre_id:3,
				name:"焼きプリン",
				content:"こんがりプリンです",
				image: Rails.root.join("app/assets/images/プリン_sample1.jpg").open,
				price:333,
				selling_status:true
			},
			{
				genre_id:4,
				name:"チュッパチャップス",
				content:"例のアレ",
				image: Rails.root.join("app/assets/images/キャンディ_sample1.jpg").open,
				price:444,
				selling_status:true
			},
			{
				genre_id:5,
				name:"フランスパン",
				content:"かたいやつ",
				image: Rails.root.join("app/assets/images/パン_sample1.jpg").open,
				price:555,
				selling_status:true
			},
			{
				genre_id:1,
				name:"チョコケーキ",
				content:"義理",
				image: Rails.root.join("app/assets/images/ケーキ_sample2.jpg").open,
				price:500,
				selling_status:true
			},
			{
				genre_id:1,
				name:"チーズケーキ",
				content:"生焼け",
				image: Rails.root.join("app/assets/images/ケーキ_sample3.jpg").open,
				price:500,
				selling_status:true
			},
			{
				genre_id:1,
				name:"ウェディングケーキ",
				content:"空輸不可",
				image: Rails.root.join("app/assets/images/ケーキ_sample4.jpeg").open,
				price:500,
				selling_status:true
			},
			{
				genre_id:2,
				name:"パイの実",
				content:"ロッテ",
				image: Rails.root.join("app/assets/images/焼き菓子_sample2.jpg").open,
				price:500,
				selling_status:true
			},
			{
				genre_id:2,
				name:"RITZ",
				content:"ナビスコ",
				image: Rails.root.join("app/assets/images/焼き菓子_sample3.jpg").open,
				price:500,
				selling_status:true
			},
			{
				genre_id:2,
				name:"ぽたぽた焼き",
				content:"亀田製菓",
				image: Rails.root.join("app/assets/images/焼き菓子_sample4.jpg").open,
				price:500,
				selling_status:true
			},
			{
				genre_id:3,
				name:"プリン",
				content:"ふうせんポケモン",
				image: Rails.root.join("app/assets/images/プリン_sample2.png").open,
				price:0,
				selling_status:false
			},
			{
				genre_id:4,
				name:"パインアメ",
				content:"パイン",
				image: Rails.root.join("app/assets/images/キャンディ_sample2.jpg").open,
				price:200,
				selling_status:false
			},
			{
				genre_id:4,
				name:"龍角散",
				content:"龍角散",
				image: Rails.root.join("app/assets/images/キャンディ_sample3.jpg").open,
				price:200,
				selling_status:false
			},
			{
				genre_id:4,
				name:"千歳飴",
				content:"長い",
				image: Rails.root.join("app/assets/images/キャンディ_sample4.jpg").open,
				price:200,
				selling_status:false
			}
		]
	)


## ↓失敗例
## Product.create!(
##				genre_id:2,
## 				name:"ばかうけ",
## 				content:"めっちゃうけます",
## 				image_id: File.open("./app/assets/images/焼き菓子_sample1.png"),
## 				price:222,
## 				selling_status:true)

		Order.create!(
			[
		{
			customer_id: 1,
			payment_option:0,
			transaction_status:0,
			total_price:999,
			postal_code:"111-1111",
			address:"并州五原郡九原県",
			receiver:"呂布"
		},
		{
			customer_id: 2,
			payment_option:0,
			transaction_status:0,
			total_price:222,
			postal_code:"222-2222",
			address:"江東",
			receiver:"陸遜"
		},
		{
			customer_id: 3,
			payment_option:0,
			transaction_status:0,
			total_price:1500,
			postal_code:"333-3333",
			address:"東京",
			receiver:"フジテレビ"
		}
			]
		)

		OrderDetail.create!(
			[
		  {
			product_id:3,
    		order_id:1,
    		purchase_price:1799,
   			amount:3,
    		product_status:0
			},
			{
			product_id:2,
    		order_id:2,
    		purchase_price:1022,
   			amount:1,
    		product_status:0
			},
			{
			product_id:10,
    		order_id:3,
    		purchase_price:2800,
   			amount:4,
    		product_status:0
			},
			{
			product_id:15,
    		order_id:3,
    		purchase_price:2300,
   			amount:3,
    		product_status:0
			}
			]
	)


		Review.create!(
			[
				{
				customer_id:1,
				product_id:12,
				title:"かわいい",
				rate:5,
				content:"かわいい"
				},
				{
				customer_id:1,
				product_id:1,
				title:"あ",
				rate:1,
				},
				{
				customer_id:3,
				product_id:12,
				title:"かわいい",
				rate:5,
				content:"かわいい"
				},
				{
				customer_id:1,
				product_id:15,
				title:"食べにくい",
				rate:0.5,
				content:"もう買わない"
				},
			]
			)

# Product.create!(
# 	id: '1',
# 	name: 'いちごケーキ',
# 	image_id: 'nil',
# 	genre_id: '1',
# 	content: '美味しいよ',
# 	price: '1000',
# 	selling_status: 'true',
# 	)
