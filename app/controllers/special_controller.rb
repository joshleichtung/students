class SpecialController < ApplicationController
	def hello
	 @name = params[:name]	
  end
end