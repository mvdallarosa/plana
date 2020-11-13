module NavbarHelper
  def tools_active?
    active_tools_path = [
      "/categories",
      "/tripcalculator",
      "/categories/1",
      "/categories/2",
      "/categories/3",
      "/categories/4",
      "/categories/5",
      "/categories/6"
    ]

    active_tools_path.include?(request.path)
  end

  def ranking_active?
    active_ranking_path = ["/ranking", "/friends"]
    active_ranking_path.include?(request.path)
  end

end


