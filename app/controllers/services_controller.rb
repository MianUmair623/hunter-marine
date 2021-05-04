class ServicesController < ApplicationController
  def action
  end

  def index
  end

  def charters
    @charters = [
      ['Bobby Johnson',"Built 2015 by Serodino^Twin screw 1200 HP, 56' x 24'",'bobby-johnson.jpg'],
      ['Carolyn Lampley',"Built 2015 by Serodino^Twin screw 1200 HP, 56' x 24'",'carolyn-lampley.jpg'],
      ['Cumberland Hunter',"Built 1955 by St. Louis Ship^Refurbished and Hull Replated 2013^Twin screw 3600 HP, 140' x 35'",'fleet11.jpg'],
      ['Danny L. Whitford',"Built 2009 by Gulf Island Fabricators^Twin screw 4000 HP, 124' x 34'",'fleet1.jpg'],
      ['J.W. Hunter',"Built 1974 By Jeffboat^Twin screw 6000HP HP, 145’ X 48’",'fleet2.jpg'],
      ['James H. Hunter',"Built 2007 by Quality Shipyards LLC^Twin screw 3600 HP, 124' x 34'",'fleet6.jpg'],
      ['L.R. Chapman',"Built 1955 by St. Louis Ship^Refurbished and repowered 1995^Twin screw 2000 HP, 108' x 26'",'fleet4.jpg'],
      ['Mae Etta Hines',"Built 1975 by Jeffboat^Twin screw 6000 HP, 145' x 48'",'fleet8.jpg'],
      ['James G. Hines',"Built 1974 by Jeffboat^Refurbished 2015^Twin screw 6000 HP, 145' x 48'",'james-g-hines.jpg'],
      ['Nashville Hunter',"Built 2011 by Gulf Island Fabricators^Twin Screw 4000 HP, 142' x 44'",'fleet3.jpg'],
      ['Ron Hunter',"Built 2014 by Gulf Island Fabricators^Twin Screw 8000 HP, 155' x 50'",'fleet5.jpg'],
      ['Sarah Hunter',"Built 1979 by St. Louis Ship^Twin screw 3800 HP, 140' x 38'",'fleet10.jpg'],
      ['Glenn A. Hendon',"Built 1980 by Jeffboat^Refurbished 2004^Twin screw 4200 HP, 140' x 44'",'fleet7.jpg'],
      ['Warren W. Hines',"Built 1982 by Jeffboat^Twin screw 4200 HP, 140' x 44'",'fleet12.jpg'],
      ['Donna H. Furlong',"Built 2016^Twin Screw 2000 HP, 78' X 34'",'donna-h-furlong.jpg']
    ]
  end
end
