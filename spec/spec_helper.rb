
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



