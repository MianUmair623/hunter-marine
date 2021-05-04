class ResourcesController < ApplicationController
  def action
  end

  def index
  end

  def strapping_tables
    
  end

  def equipment_register
    @strappings = StrappingTable.all
    @equipment = [
      'HFL 200S* 2008 Southwest^Steam / Lined Tanks / Stainless Piping / T1 Hull',
      'HFL 202S* 2008 Southwest^Steam / Lined Tanks / Stainless Piping / T1 Hull',
      'HFL 204S* 2009 Southwest^Steam / Lined Tanks / Stainless Piping / T1 Hull',
      'HFL 206S* 2009 Southwest^Steam / Lined Tanks / Stainless Piping / T1 Hull',
      'HFL 208S* 2009 Southwest^Steam / Lined Tanks / Stainless Piping / T1 Hull',
      'HFL 210* 2009 Southwest^Steam System',
      'HFL 212* 2009 Southwest^Steam System',
      'HFL 214* 2009 Southwest^Steam System',
      'HFL 216* 2009 Southwest^Steam System',
      'HFL 218* 2009 Southwest^Steam System',
      'HFL 220SS 2014 Southwest^304L SS Tanks, C1 Piping, T1 Hull, Steam',
      'HFL 222SS 2014 Southwest^304L SS Tanks, C1 Piping, T1 Hull, Steam, 6.5 PSI',
      'HFL 400 2005 Jeffboat',
      'HFL 401 2007 Trinity',  
      'HFL 403 2007 Trinity',  
      'HFL 404 2008 Jeffboat',  
      'HFL 405 2007 Trinity',  
      'HFL 406 2008 Jeffboat',  
      'HFL 407 2007 Trinity',  
      'HFL 408 2008 Jeffboat',  
      'HFL 409 2012 Trinity^Steam System',
      'HFL 411 2012 Trinity^Steam System',
      'HFL 413 2012 Trinity',  
      'HFL 415 2012 Trinity',  
      'HFL 417 2012 Trinity^Asphalt Capable/ Vapor',
      'HFL 419 2012 Trinity^Asphalt Capable/ Vapor',
      'HFL 421 2013 Trinity',
      'HFL 423 2013 Trinity',
      'HFL 425 2013 Trinity',
      'HFL 427 2013 Jeffboat',
      'HFL 429 2015 Southwest^6.5 PSI',
      'HFL 431 2015 Southwest^6.5 PSI',
      'HFL 433 2015 Trinity^6.5 PSI',
      'HFL 435 2015 Trinity^6.5 PSI',
      'HFL 437 2015 Trinity^6.5 PSI',
      'HFL 439 2015 Trinity^6.5 PSI',
      'HFL 441 2015 Trinity^6.5 PSI',
      'HFL 443 2015 Trinity^6.5 PSI',
      'HFL 500 2006 Jeffboat',  
      'HFL 601 2008 Trinity',  
      'HFL 603 2008 Trinity',  
      'HFL 605 2012 Trinity',  
      'HFL 607 2012 Trinity',  
      'HFL 3003* 2014 Southwest^13\' Hull, 6.5 PSI',
      'HFL 3004* 2015 Southwest^13\' Hull, 6.5 PSI',
      'HFL 8003* 2015 Trinity^Asphalt Capable / Vapor',
      'HFL 8004* 2015 Jeffboat^Asphalt Capable / Vapor'
    ]
  end

  def archive
    @images = [
      ['boat1','M/V James G. Hines launching at Jeffboat (1974)'],
      ['Bowling Green wharf','Bowling Green wharf'],
      ['DSCF0027','Hines Furlong Line barges under construction'],
      ['duncan','M/V Duncan L. Hines'],
      ['Furlong_family','Kent Furlong, (sister) Jennifer Furlong, & Father Steve Furlong at Jeffboat barge launching (1989)'],
      ['HFL_barge2-launch','Kent E. Furlong & James G. Hines at the launching of HFL 402 at Jeffboat (2005)'],
      ['Hines_Furl','Kent E. Furlong cutting the ropes to launch the first Hines Furlong Line tank barge – HFL 400 (2005)'],
      ['Hines410','Hines 30,000 bbl tank barge launching at Jeffboat'],
      ['Hines421B','Hines Small box launching at Jeffboat'],
      ['Hines-Furl_25','HFL 400 (Hines Furlong Line’s first barge) Launching at Jeffboat (2005)'],
      ['HinesZephyr_JohnKelly','The Hines Zephyr, John J. Kelly & Billy at the Bowling Green, KY boat landing.'],
      ['JamesG_Hines','M/V James G. Hines'],
      ['JamesG_Hines-Northbound','M/V James G. Hines Northbound on the lower Mississippi River'],
      ['JamesG_Hines-starboard','M/V James G Hines'],
      ['JamesHines_Corp','James R. Hines Corporation Office'],
      ['JamesR_Hines1','M/V James R. Hines'],
      ['JamesR_Hines2','M/V James R. Hines under construction at St. Louis Ship'],
      ['JamesR_Hines-Bauxippi','M/V James R. Hines on the lower Mississippi River'],
      ['JohnJKelly','View from Carrollton, KY on the Ohio River (August 1951)'],
      ['k175','M/V James R. Hines entering a lock'],
      ['kef_jgh_launch1','Kent E. Furlong & James G. Hines at Jeffboat barge launching (2005)'],
      ['L_Turner-Texas','M/V Larry Turner in Texas City'],
      ['magazine','The John J. Kelly on the Kentucky River at “Chimney Rock Bluff” (Published in a Gulf Oil company magazine)'],
      ['McAlpine_postcard','M/V Larry Turner entering McAlpine Locks as pictured on a post card'],
      ['men3','(from left to right) Warren W. Hines, David H. Griffith, & James G. Hines'],
      ['MV_Barnes','M/V William Barnes'],
      ['MV_Clark','M/V William Clark'],
      ['MV_DuncanL_Hines','M/V Duncan L. Hines'],
      ['MV_HarperC_Patton','M/V Harper C. Patton'],
      ['MV_HinesZephyr','M/V Hines Zephyr'],
      ['MV_JamesG_Hines','M/V James G. Hines'],
      ['MV_JohnKelly','M/V John J. Kelley, 320 hp in Bowling Green'],
      ['MV_Knox','M/V Knox'],
      ['MV_LarryTurner','M/V Larry Turner'],
      ['MV_Producers','M/V Producers at the Bowling Green, KY boat landing'],
      ['MV_WarrenHines','M/V Warren W. Hines'],
      ['MV Sally Ann','M/V Sally Ann'],
      ['Newburgh_Lock','The M/V James G. Hines exiting Newburgh Lock on the Ohio River'],
      ['New Hanover','New Hanover'],
      ['paducah_marine','Paducah Marine Ways - Hines Family with Shipyard personnel and Vice President of the United States: Alben Barkley'],
      ['photo02','A deckhand securing a line on the tow of the M/V James R. Hines'],
      ['photo03','Christening ceremony of the M/V James G. Hines (Left to Right) Mae Etta Hines, James G. Hines, Donna H. Furlong (December 1974)'],
      ['photo04','Mae Etta Hines christening the 5,600hp M/V James G. Hines at the Louisville, KY city front (December 1974)'],
      ['Queen of Dycusburg','Queen of Dycusburg'],
      ['Steamer Evansville','Steamer Evansville (picture form a postcard)'],
      ['StLouis_Shipbuilding','Christening Ceremony of the M/V James R. Hines (From Left to Right) James G. Hines, Mae Etta Hines, Gertrude Hines, James R. Hines, & Mr. & Mrs. Herman T. Pott (1960)'],
      ['tanker trucking facility','Tanker Trucking Facility'],
      ['The Steamer Bowling Green','The Steamer Bowling Green'],
      ['two new barges','Two New Barges'],
      ['Wm_Clark-MtVernon','M/V William Clark in Mount Vernon, Indiana'],
      ['WWHines_christening','M/V Warren W. Hines christening in Louisville, KY (1982)'],
      ['Zephyr gasoline stations','Zephyr Gas Station in Bowling Green (Baker Hill)'],
      ['HinesZephyr_crew','-'],
      ['warren_hines_news','-']
    ]
  end
end
