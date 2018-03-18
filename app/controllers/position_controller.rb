class PositionController < ApplicationController
 def set_width
   @fusen = Fusen.find(params[:dom_id])
   @fusen.update_attribute(:dom_width, params[:dom_width])
   @fusen.update_attribute(:dom_height, params[:dom_height])
 end

 def set_position
   @fusen = Fusen.find(params[:dom_id])
   @fusen.update_attribute(:top, params[:top])
   @fusen.update_attribute(:left, params[:left])
 end

 def set_text
   @fusen = Fusen.find(params[:dom_id])
   @fusen.update_attribute(:message, params[:dom_text])
 end   
end
