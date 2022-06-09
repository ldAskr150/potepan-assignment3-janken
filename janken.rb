class JankenAcchi
  attr_accessor :player_hand, :program_hand
  
  def setup
    @player_hand = player_hand
    @program_hand = program_hand
  end
  
  def janken
    puts "じゃんけん…"
    puts "[0]グー\n[1]チョキ\n[2]パー"
    @player_hand = gets.to_i
    @program_hand = rand(3)
      
    jankens = ["グー", "チョキ", "パー"]
    puts "ホイ！"
    puts "あなたの手:#{jankens[@player_hand]}, 相手の手:#{jankens[@program_hand]}"
      
    if @player_hand == @program_hand
      puts "あいこで…"
      true
    elsif (@player_hand == 0 && @program_hand== 1)||(@player_hand == 1 && @program_hand == 2)||(@player_hand == 2 && @program_hand == 0)
      puts "じゃんけんに勝った！"
      puts "------------------------"
      false
    else
      puts "じゃんけんに負けた…"
      puts "------------------------"
      false
    end
  end
  
  def acchimuite
    puts "あっち向いて…"
    puts "[0]上\n[1]下\n[2]左\n[3]右"
    player_face = gets.to_i
    program_face = rand(4)
      
    directions = ["上", "下", "左", "右"]
    puts "ホイ！"
    puts "あなたの向き:#{directions[player_face]}, 相手の向き:#{directions[program_face]}"
      
    if player_face != program_face
      puts "引き分け"
      puts "じゃんけんに戻る"
      puts "------------------------"
      true
    else
      if (@player_hand == 0 && @program_hand== 1)||(@player_hand == 1 && @program_hand == 2)||(@player_hand == 2 && @program_hand == 0)
        puts "あっち向いてホイに勝った！"
        puts "ゲーム終了"
        puts "------------------------"
        false
      else
        puts "あっち向いてホイに負けた"
        puts "ゲーム終了"
        puts "------------------------"
        false
      end
    end
  end
  
  def game
    if janken == true
      true
    else
      if acchimuite == true
        true
      else
        false
      end
    end
  end
end

next_game = true
hoge = JankenAcchi.new
hoge.game


while  next_game
 next_game = hoge.game
end