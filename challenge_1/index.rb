puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

itineraries = [
  {plan: "沖縄旅行", price: 10000},
  {plan: "北海道旅行", price: 20000},
  {plan: "九州旅行", price: 15000}
]

#プランの選択
while true
  print "プラン番号の選択 > "
  select_itineraries_number = gets.to_i
  break if (1..3).include?(select_itineraries_number)
  puts "1 ~ 3 の番号を選んで下さい。"  
end

chosen_itinerary = itineraries[select_itineraries_number - 1]
puts "#{chosen_itinerary[:plan]}ですね。"

#人数の入力
puts "何名で予約されますか？"
while true
  print "人数を入力 > "
  headcount = gets.to_i
  break if headcount >= 1
  puts "1人以上を入力して下さい。"
end

puts "#{headcount}名ですね。"

#合計金額の計算
total_price = chosen_itinerary[:price] * headcount
if headcount >= 5
  puts "5名以上ですので10%割引となります。" 
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円になります。"