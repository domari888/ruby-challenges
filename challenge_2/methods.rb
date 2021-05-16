#旅行プラン表示
def disp_travel(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

#旅行プラン選択
def choose_travel(plans)
  while true
    print "プラン番号を選択 > "
    select_plan_num = gets.to_i
    break if (select_plan_num).between?(1, 3)
    puts "1 ~ 3 の番号を入力して下さい。"
  end
  chosen_plan = plans[select_plan_num - 1]
  puts "#{chosen_plan[:place]}旅行ですね。"
  chosen_plan
end

#人数の選択
def select_headcount
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    headcount = gets.to_i
    break if headcount >= 1
    puts "1以上を入力して下さい。"
  end
  puts "#{headcount}名ですね。"
  headcount
end

#合計金額の計算
def calculation_charge(chosen_travel, headcount)
  total_price = chosen_travel[:price] * headcount
  if headcount >= 5
    puts "5名以上ですので10%割引となります"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end
