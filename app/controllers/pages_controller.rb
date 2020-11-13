class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :welcome ]

  def home
  end

  def profile
    @user = current_user
  end

  def ranking
    @users = User.order(score: :desc)
  end

  def friends
    # @users = User.order(score: :desc)
    @friends = [current_user]
    if current_user.follows != nil
      current_user.follows.each do |follow|
        @friends << User.find(follow.following_id)
      end
    end
    @friends= @friends.sort_by { |user| user.score }.reverse
  end

  def dashboard
    @tip = [
      "By turning down your central heating by just 1°C you could reduce the energy you use for heating by 10%. Same applies for AC! The more you save in money and carbon!",
      "Add some variety in your food! The way food is farmed is hugle important part of how sustainable that type of food is.
        Constant farming of the same crop types will drain nutrients from the soil. Then farming this crop all year long will give no time for the soil to recover.
        By having a colorful plate, we will be ensuring a more nutritious and flavourful meal -- better insync with the ecosystem",
      "We live in a consumerism world. Buy ONE well made expensive item of clothing rather than constantly replacing it with cheaper alternatives.
        This will stop the waste of resources in manufacturing, it also cuts down the transport cost and carbon cost of the supply chain.
        Now you have an excuse to treat yourself to that nice jacket!",
      "A shift to more sustainable shopping practices requires us to appreciate what we already have. Shopping second hand is an excellent way
      to act with our wallets and change the economy for the better.",
      "Charity and second hand shops have excellent product control procedures which means the clothes within them is of the highest quality",
      'Renewable energy companies have been driving changes within the energy market and are now providing cheap and sustainable energy.',
      'Energy efficient bulbs are 25 times longer than regular light bulbs, they use 80% less power to provide the same light',
      'About a third of our kitchen and garden waste can be composted and local authorities collect compostable waste which they can process as renewable energy',
      "When organic waste isn't composted, it sits in landfills and produces methane which is a big contributer to climate change",
      "Drive smarter: Removing excess weight in your vehicle will also help improve fuel efficiency",
      "Drive smarter: Having the right air pressure in the tires results in better petrol mileage, better handling of your car, cheaper maintenance costs, and a smaller environmental impact.",
      "Using public transport is a great alternative to driving and can reduce your carbon footprint dramatically",
      "By taking the train or bus, it means fewer cars on the road overall, resulting in less CO2 being produced",
      "Using public transportation allows cars on the road to have quicker journeys due to less congestion resulting in CO2 reduction",
      "By using public transport, you have more time to read or listen to music in your journey",
      "The most eco-friendly mode of transport is cycling. It creares ZERO emission, uses no resources and keeps you fit and healthy!",
      "By cycling more, you're putting less cars on the road which helps reduce C02 production",
      "Eat in season: everything you buy has a footprint, so try to buy products that have been sustainably sourced.
      Buying seasonally produced food supports your local agriculture and economy! Look in the app for the nearest Farmers Market",
      "Buying local helps reduce packaging, transport and high intensity farming",
      "Farmers market are a great way to get to know where and whom your food is coming from!",
      "Because Farmers market usually have seasonal foods, you get to try out a variety of foods you may never get in the supermarket",
      "Did you know you can control and monitor the energy used in your home by a click of a button on your home?
      SMART technology can help limit the impact in your home.",
      "When you leave a room, turn the lights off! It helps saves energy",
      "The production of meat and dairy products is one of the main sources of greenhouse gas emissions. Try plant-based milk instead and cut down eating meat",
      "Your tariff is what energy plan you're on. If your electricity comes from renewable generation, it will be indicated in your bill.",
      "Some energy companies provide green gas and/or offsets. Ask what your current company provides!",
      "If going on long car trips, try car-sharing like Bla-Bla Car or Flixbus, or carpool with friends!"]
    @user = current_user
    if !@user.commitments.last
      redirect_to challenges_path
    else
      @challenge = current_user.commitments.last.challenge
      if @user.done == nil
        @user.done = Hash.new
      end
      render 'edit'
    end
  end

  def update
    @user = current_user
    if @user.done == nil
      @user.done = Hash.new
    end
    @user.done["#{Date.today}"] = params[:user][:done]["#{Date.today}"]
    @user.save
    redirect_to dashboard_path
  end

  def welcome
  end

  def intro
  end

  def discover
  end

  def tripcalculator

  end

  private

  def user_params
    params.require(:user).permit( :done )
  end
end
