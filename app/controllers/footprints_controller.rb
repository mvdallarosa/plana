class FootprintsController < ApplicationController
  def show
    results = calculate(current_user.form)
    @footprint = Footprint.new({
      mobility: results[0],
      food: results[1],
      household: results[2]
    })
    @footprint.user = current_user
    @footprint.save
  end

  def calculate(form)
    values = {
      mobility1: {
        A: 0.80,
        B: 1.40,
        C: 2.60
      },
      mobility2: {
        A: 0.00,
        B: 1.60,
        C: 4.70
      },
      food1: {
        A: 0.85,
        B: 1.25,
        C: 2.05
      },
      food2: {
        A: 0.85,
        B: 1.05,
        C: 1.25
      },
      household1: {
        A: 0.27,
        B: 0.87,
        C: 1.30
      },
      household2: {
        A: 0.25,
        B: 0.73,
        C: 1.13
      },
      household3: {
        A: 0.29,
        B: 0.83,
        C: 1.30
      }
    }
    mobility = values[:mobility1]["#{form["mobility1"]}".to_sym] + values[:mobility2]["#{form["mobility2"]}".to_sym]
    food = values[:food1]["#{form["food1"]}".to_sym] + values[:food2]["#{form["food2"]}".to_sym]
    household = values[:household1]["#{form["household1"]}".to_sym] + values[:household2]["#{form["household2"]}".to_sym] + values[:household3]["#{form["household3"]}".to_sym]
    return [mobility, food, household]
  end

end
