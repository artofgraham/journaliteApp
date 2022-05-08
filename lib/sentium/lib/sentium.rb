class Sentium
	def self.askFeeling
		puts("Which of the following are you feeling?\nDepressed; sad; apathetic; happy; excited; love.")
		feeling = gets.chomp
		feeling = feeling.downcase
		if feeling == "depressed"
			puts("Reach out to a close friend or family member; tell them how you're feeling.")
		elsif feeling == "sad"
			puts("Feelings come and go; they don't define us.")
		elsif feeling == "apathetic"
			puts("Take some time for yourself to relax and breath; writing a gratitude journal might help.")
		elsif feeling == "happy"
			puts("Great! Share your happiness with friends and family.")
		elsif feeling == "excited"
			puts("It must be something special; keep the feeling going by journaling it.")
		elsif feeling == "love"
			puts("Cherish every moment of it, and make memories that will last forever.")
		else
			puts("The feeling you entered is not recognised; please try again.")
		end
	end
end