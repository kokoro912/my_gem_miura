require "my_gem_miura/version"
require "time"

module MyGemMiura
	# Your code goes here...
	
	#誕生日を元に現在の歳を出力
	def self.calcYourAge(date_str)
		#現在日
		today = Time.now

		#誕生日
		birthday = Time.parse(date_str)

		#現在の計算
		your_age = sprintf("%d",((today - birthday) / 60 / 60 / 24)/365)

		#出力
		p your_age
	end

	#身長と体重を元にBMIを出力
	def self.calcYourBMI(height, weight)
		#BMIを計算
		bmi = sprintf( "%10.2f", weight / ( height * height) )
		
		#出力
		p bmi
	end
end
