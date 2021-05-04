class AboutController < ApplicationController

  def index
    @articles = NewsArticle.all.order("created_at DESC").limit(2)
  end

  def timeline
    @milestones = [
      ['1976','Ron Hunter founded Hunter Marine Transport, Inc. on the west end of Nashville, TN. He began the company with one boat, the M/V Sarah G. Hunter. This boat was named in honor of Ron\'s mother.'],
      ['1977','The M/V L.R. Chapman was the second boat added to the fleet.'],
      ['1978','A single screw towboat called Louise was purchased and renamed M/V J.W. Hunter in honor of Ron\'s father.'],
      ['1982','Hunter purchased farmland at mile marker 175 on the Cumberland River. This is the location of the Company\'s present-day Corporate Headquarters and the Nashville River Terminal.'],
      ['1987','A harbor boat called the Blake Robertson was bought and renamed to M/V Glenn A in honor of the company\'s Chief Operating Officer, Glenn Hendon.'],
      ['1988','A line haul boat called Harry F. White was bought and renamed the M/V Cumberland Hunter.'],
      ['1999','A towboat named Mary H. Morrison was purchased and renamed M/V Sarah Hunter in honor of Ron\'s Mother.'],
      ['2003','A towboat named Afton was bought and renamed the M/V Tennessee Hunter.'],
      ['2006','Hunter Marine diversified into three separate companies under a common ownership and management. The companies are Hunter Marine Administrative Services, LLC., Hunter Marine Transport, Inc., Hunter Marine Terminal, LLC.'],
      ['2007','Hunter Marine completed construction of its first-ever new vessel, the M/V James H. Hunter, which was named in honor of Ron\'s Son.'],
      ['2008','Hunter Marine relocated its vessel operations from Nashville, TN to a new facility in Paducah, KY.'],
      ['2009','Hunter Marine completed construction of its second new vessel, the M/V Danny L Whitford. This boat was named after the company\'s Vice President of Vessel Operations.'],
      ['2010','Hunter Marine acquired IMI-Delta, its primary sand and gravel supplier. This acquisition led to the creation of the Hunter Sand & Gravel division.'],
      ['2017','January 6, 2017 Hunter Marine Transport founder, Ron Hunter, passes away.'],
      ['2018','January 1, 2018 HFL finalizes purchase of Hunter Marine Transport assets.']
    ]
  end
end

