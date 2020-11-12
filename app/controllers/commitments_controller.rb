class CommitmentsController < ApplicationController
  def new
    @challenges = Challenge.all
    @commitment = Commitment.new
  end

  def create
    @user = current_user
    @commitment = Commitment.new(challenge_id: params[:commitment][:challenge].to_i)
    @commitment.user = current_user
    @commitment.start_date = Date.today
    @commitment.end_date = Date.today + 28
    @commitment.save
    redirect_to discover_path
  end
end

# tip = [
#   'By turning down your central heating by just 1°C you could reduce the energy you use for heating by 10%. Same applies for AC! The more you save in money and carbon!',
#   'Add some variety in your food! The way food is farmed is hugle important part of how sustainable that type of food is.
#     Constant farming of the same crop types will drain nutrients from the soil. Then farming this crop all year long will give no time for the soil to recover.
#     By having a colorful plate, we will be ensuring a more nutritious and flavourful meal -- better insync with the ecosystem',
#   'We live in a consumerism world. Buy One well made expensive item of clothing rather than constantly replacing it with cheaper alternatives.
#     This will stop the waste of resources in manufacturing, it also cuts down the transport cost and carbon cost of the supply chain.
#     Now you have an excuse to treat yourself to that nice jacket!'
# ]
