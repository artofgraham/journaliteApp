require "sentium"
class SentiumController < ApplicationController
	def feelings
		Sentium.askFeeling()
	end
end