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
			}
		]
	)

Product.create!(
		[
      {
				genre_id:1,
				name:"ショートケーキ",
				content:"ショートなケーキです",
				image_id:1,
				price:111,
				selling_status:true
			},
			{
				genre_id:2,
				name:"ばかうけ",
				content:"めっちゃうけます",
				image_id:2,
				price:222,
				selling_status:true,
			},
			{
				genre_id:3,
				name:"焼きプリン",
				content:"こんがりプリンです",
				image_id:3,
				price:333,
				selling_status:true
			},
			{
				genre_id:4,
				name:"チュッパチャップス",
				content:"例のアレ",
				image_id:4,
				price:444,
				selling_status:true
			}
		]
	)

	Review.create!(
		[
      {
				rate:1,
				product_id:1,
				customer_id:1,
				title:"test1",
				content:"あ、（察し）"
			},
			{
				rate:2.5,
				product_id:2,
				customer_id:1,
				title:"test2",
				content:"もう買わない",
			},
			{
				rate:3,
				product_id:3,
				customer_id:1,
				title:"test3",
				content:"ふつーかな"
			},
			{
				rate:4.5,
				product_id:4,
				customer_id:2,
				title:"test4",
				content:"控えめに言ってウマい"
			},
			{
				rate:5,
				product_id:1,
				customer_id:2,
				title:"test5",
				content:"神"
			},
			{
				rate:1.5,
				product_id:1,
				customer_id:1,
				title:"test6",
				content:"同情するレベル"
			},
			{
				rate:2.5,
				product_id:1,
				customer_id:1,
				title:"test7",
				content:"同情するレベル"
			},
			{
				rate:3.5,
				product_id:1,
				customer_id:1,
				title:"test8",
				content:"同情するレベル"
			},
			{
				rate:0.5,
				product_id:1,
				customer_id:1,
				title:"test9",
				content:"同情するレベル"
			}
		]
)
	Review.create!(
		[
      {
				rate:1,
				product_id:1,
				customer_id:1,
				title:"test1",
				content:"あ、（察し）"
			},
			{
				rate:2.5,
				product_id:2,
				customer_id:1,
				title:"test2",
				content:"もう買わない",
			},
			{
				rate:3,
				product_id:3,
				customer_id:1,
				title:"test3",
				content:"ふつーかな"
			},
			{
				rate:4.5,
				product_id:4,
				customer_id:2,
				title:"test4",
				content:"控えめに言ってウマい"
			},
			{
				rate:5,
				product_id:1,
				customer_id:2,
				title:"test5",
				content:"神"
			},
			{
				rate:1.5,
				product_id:1,
				customer_id:1,
				title:"test6",
				content:"同情するレベル"
			},
			{
				rate:2.5,
				product_id:1,
				customer_id:1,
				title:"test7",
				content:"同情するレベル"
			},
			{
				rate:3.5,
				product_id:1,
				customer_id:1,
				title:"test8",
				content:"同情するレベル"
			},
			{
				rate:0.5,
				product_id:1,
				customer_id:1,
				title:"test9",
				content:"同情するレベル"
			}])

			Order.create!(
				[
			  {
				customer_id: 2,			
				payment_option:0,
				transaction_status:0,
				total_price:1000,
				postal_code:222-2222,
				address:"江東",
				receiver:"陸遜"
					}
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
