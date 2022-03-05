puts "じゃんけん・・・"
def janken
  puts "0(グー)1(チョキ)2(パー)3(ギブアップ)"

  player_hand = gets.to_i
  program_hand = rand(0..2)
  
  if (player_hand == 3)
    puts"ギブアップしました"
    return false
  end
  
  jankens = ["グー","チョキ","パー"]
  puts "ホイ！"
  puts "-------------"
  puts "あなた；#{jankens[player_hand]}"
  puts "あいて：#{jankens[program_hand]}"
  puts "-------------"

  #あいこの場合
  if player_hand == program_hand
    puts "あいこです"
    puts " じゃんけん・・・"
    return true
    
  #じゃんけんで勝った場合
  elsif 
    (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左 )3(右)"
  
    player_finger = gets.to_i
    program_head = rand(0..3)
  
    acchi = ["上","下","左","右"]
    puts "ホイ！"
    puts "-------------"
    puts "あなた；#{acchi[player_finger]}"
    puts "あいて：#{acchi[program_head]}"
    puts "-------------"
    
    if player_finger == program_head
        puts "あなたの勝ち！"
    elsif player_finger != program_head
        puts "NEXT！"
        puts "じゃんけん・・・"
        return true
    end
    
    #じゃんけんで負けた場合
  else
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
  
    player_finger = gets.to_i
    program_head = rand(0..3)
  
    acchi = ["上","下","左","右"]
    puts "ホイ！"
    puts "-------------"
    puts "あなた；#{acchi[player_finger]}"
    puts "あいて：#{acchi[program_head]}"
    puts "-------------"
    
    if player_finger == program_head
        puts "あなたの負け！"
    elsif player_finger != program_head
        puts "NEXT！"
        puts "じゃんけん・・・"
        return true
    end
  end
end


next_game = true
while next_game
    next_game = janken
end
