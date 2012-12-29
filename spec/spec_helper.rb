# encoding: utf-8

require "hungry"

MENU_31729 = menu_json = {"id"=>31729, "name"=>nil, "sponsor"=>"Le Versailles", 
  "venue"=>nil, "event"=>nil, "place"=>nil, "occasion"=>nil, 
  "physical_description"=>"35.5x29.5cm", "notes"=>"  ", 
  "call_number"=>"1920-0071_wotm", "keywords"=>nil, "language"=>nil, 
  "year"=>1920, "month"=>6, "day"=>14, "status"=>"complete", 
  "currency"=>"Francs", "currency_symbol"=>"FF", 
  "location"=>"Le Versailles", "location_type"=>nil, "page_count"=>2, 
  "dish_count"=>168, 
  "thumbnail_src"=>"http://images.nypl.org/index.php?id=4029915&t=r", 
  "thumbnail_src_jp2"=>"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=108,108&svc.region=627,240,3431,3431&svc.rotate=0", 
  "large_src"=>"http://images.nypl.org/index.php?id=4029915&t=w", 
  "large_src_jp2"=>"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=1800,0&svc.rotate=0", 
  "first_page_aspect"=>"portrait", 
  "first_page_full_width"=>3911, 
  "first_page_full_height"=>4686, 
  "links"=>[
    {"href"=>"http://menus.nypl.org/api/menus", "rel"=>"index"}, 
    {"href"=>"http://menus.nypl.org/api/menus/31729/pages", "rel"=>"pages"}, 
    {"href"=>"http://menus.nypl.org/api/menus/31729/dishes", "rel"=>"dishes"} 
  ]
}

PAGES_31279 = {"links"=>[{"href"=>"http://menus.nypl.org/api/menus/31729", 
  "rel"=>"parent"}, {"href"=>"http://menus.nypl.org/api/menus", "rel"=>"index"}], 
  "pages"=>[{"aspect"=>"portrait", "dishes"=>[{"created_at"=>"2012-07-03T20:27:35Z", 
  "high_price"=>nil, "links"=>[{"href"=>"http://menus.nypl.org/api/dishes/139476", 
  "rel"=>"self"}], "name"=>"Couvert", "price"=>nil, 
  "updated_at"=>"2012-07-03T20:27:35Z", "xpos"=>0.542667, "ypos"=>0.0356102}, 
  {"created_at"=>"2012-07-03T02:51:59Z", "high_price"=>nil, 
  "links"=>[{"href"=>"http://menus.nypl.org/api/dishes/375814", "rel"=>"self"}], 
  "name"=>"Eaux minerales la bout", "price"=>"5.00", 
  "updated_at"=>"2012-07-03T02:52:40Z", "xpos"=>0.642667, "ypos"=>0.0990408}], 
  "full_height"=>4686, "full_width"=>3911, "id"=>64836, "image_id"=>"4029915", 
  "large_src"=>"http://images.nypl.org/index.php?id=4029915&t=w", 
  "large_src_jp2"=>"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=1800,0&svc.rotate=0", 
  "page_number"=>1, "small_src"=>"http://images.nypl.org/index.php?id=4029915&t=t", 
  "thumbnail_src"=>"http://images.nypl.org/index.php?id=4029915&t=r", 
  "thumbnail_src_jp2"=>"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=108,108&svc.region=627,240,3431,3431&svc.rotate=0", 
  "uuid"=>"bf8b24be-cb02-4876-e040-e00a1806540b"}]}

ONE_PAGE_31279 = {"aspect"=>"portrait", "dishes"=>[{"created_at"=>"2012-07-03T20:27:35Z", 
  "high_price"=>nil, "links"=>[{"href"=>"http://menus.nypl.org/api/dishes/139476", 
  "rel"=>"self"}], "name"=>"Couvert", "price"=>nil, 
  "updated_at"=>"2012-07-03T20:27:35Z", "xpos"=>0.542667, "ypos"=>0.0356102}, 
  {"created_at"=>"2012-07-03T02:51:59Z", "high_price"=>nil, 
  "links"=>[{"href"=>"http://menus.nypl.org/api/dishes/375814", "rel"=>"self"}], 
  "name"=>"Eaux minerales la bout", "price"=>"5.00", 
  "updated_at"=>"2012-07-03T02:52:40Z", "xpos"=>0.642667, "ypos"=>0.0990408}], 
  "full_height"=>4686, "full_width"=>3911, "id"=>64836, "image_id"=>"4029915", 
  "large_src"=>"http://images.nypl.org/index.php?id=4029915&t=w", 
  "large_src_jp2"=>"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=1800,0&svc.rotate=0", 
  "page_number"=>1, "small_src"=>"http://images.nypl.org/index.php?id=4029915&t=t", 
  "thumbnail_src"=>"http://images.nypl.org/index.php?id=4029915&t=r", 
  "thumbnail_src_jp2"=>"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=108,108&svc.region=627,240,3431,3431&svc.rotate=0", 
  "uuid"=>"bf8b24be-cb02-4876-e040-e00a1806540b"}

DISH_329313 = %q<{"id":329313,"name":"AA Milk (bottle)","description":null,"menus_appeared":1,"times_appeared":1,"first_appeared":1940,"last_appeared":1940,"lowest_price":"$0.10","highest_price":"$0.10","links":[{"href":"http://menus.nypl.org/api/dishes","rel":"index"},{"href":"http://menus.nypl.org/api/dishes/329313/menus","rel":"menus"}]}>

MENU_LIST = %q<{"stats":{"count":16186,"earliest_menu":1851,"latest_menu":2008,"to_transcribe":1,"under_review":4080,"complete":12105},"menus":[{"id":26698,"name":"","sponsor":"BENOIT","venue":"RESTAURANT","event":"Dinner and Wine and Birthday","place":"60 West 55th Street","occasion":"","physical_description":"3 broadsides","notes":"Includes dinner and wine menu and birthday menu for Denis Cardone","call_number":"Zander 676","keywords":null,"language":null,"year":2008,"month":5,"day":20,"status":"under review","currency":"Dollars","currency_symbol":"$","location":"Benoit","location_type":null,"page_count":3,"dish_count":55,"thumbnail_src":"http://images.nypl.org/index.php?id=2057161&t=r","thumbnail_src_jp2":"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:a6db3364-fca2-1a95-e040-e00a180643a8&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=108,108&svc.region=1074,240,3994,3994&svc.rotate=0","large_src":"http://images.nypl.org/index.php?id=2057161&t=w","large_src_jp2":"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:a6db3364-fca2-1a95-e040-e00a180643a8&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=1800,0&svc.rotate=0","first_page_aspect":"portrait","first_page_full_width":4474,"first_page_full_height":6142,"links":[{"href":"http://menus.nypl.org/api/menus/26698","rel":"self"},{"href":"http://menus.nypl.org/api/menus/26698/pages","rel":"pages"},{"href":"http://menus.nypl.org/api/menus/26698/dishes","rel":"dishes"}]},{"id":26756,"name":"","sponsor":"TANTE MARGUERITE","venue":"FOREIGN,RESTAURANT","event":"","place":"Assemblee Nationale, 5, rue de Bourgogne ","occasion":"","physical_description":"","notes":"Les restaurant Bernard Loiseau; Prix-Fixe Menu with suggestions and wines. ","call_number":"Zander 674","keywords":null,"language":null,"year":2008,"month":5,"day":9,"status":"complete","currency":"Euros","currency_symbol":"€","location":"Tante Marguerite","location_type":null,"page_count":4,"dish_count":25,"thumbnail_src":"http://images.nypl.org/index.php?id=2057153&t=r","thumbnail_src_jp2":"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:a6db3006-0b40-54fc-e040-e00a180642d4&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=108,108&svc.region=947,240,3635,3635&svc.rotate=0","large_src":"http://images.nypl.org/index.php?id=2057153&t=w","large_src_jp2":"http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:a6db3006-0b40-54fc-e040-e00a180642d4&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=1800,0&svc.rotate=0","first_page_aspect":"portrait","first_page_full_width":4115,"first_page_full_height":5529,"links":[{"href":"http://menus.nypl.org/api/menus/26756","rel":"self"},{"href":"http://menus.nypl.org/api/menus/26756/pages","rel":"pages"},{"href":"http://menus.nypl.org/api/menus/26756/dishes","rel":"dishes"}]}]}>


