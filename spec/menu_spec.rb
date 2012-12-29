require "spec_helper"

describe Hungry::Menu do
  before :each do
    @client_double = double(Hungry::Client)
    @menu = Hungry::Menu.new(MENU_31729, @client_double)
  end

  describe "Basic initialization" do
    it "has an id" do
      @menu.id.should eq 31729
    end

    it "has a name" do
      @menu.name.should be_nil
    end

    it "has a sponsor" do
      @menu.sponsor.should eq "Le Versailles"
    end

    it "has a venue" do
      @menu.venue.should be_nil
    end

    it "has an event" do
      @menu.event.should be_nil
    end

    it "has a place" do
      @menu.place.should be_nil
    end

    it "has an occasion" do
      @menu.occasion.should be_nil
    end

    it "has a physical_description" do
      @menu.physical_description.should eq "35.5x29.5cm"
    end

    it "has notes" do
      @menu.notes.should eq "  "
    end

    it "has a call_number" do
      @menu.call_number.should eq "1920-0071_wotm"
    end

    it "has a keywords" do
      @menu.keywords.should be_nil
    end

    it "has a language" do
      @menu.language.should be_nil
    end

    it "has a year" do
      @menu.year.should eq 1920
    end

    it "has a month" do
      @menu.month.should eq 6
    end

    it "has a day" do
      @menu.day.should eq 14
    end

    it "has a status" do
      @menu.status.should eq "complete"
    end

    it "has a currency" do
      @menu.currency.should eq "Francs"
    end

    it "has a currency_symbol" do
      @menu.currency_symbol.should eq "FF"
    end

    it "has a location" do
      @menu.location.should eq "Le Versailles"
    end

    it "has a location_type" do
      @menu.location_type.should be_nil
    end

    it "has a page_count" do
      @menu.page_count.should eq 2
    end

    it "has a dish_count" do
      @menu.dish_count.should eq 168
    end

    it "has a thumbnail_src" do
      @menu.thumbnail_src.should eq "http://images.nypl.org/index.php?id=4029915&t=r"
    end

    it "has a thumbnail_src_jp2" do
      @menu.thumbnail_src_jp2.should eq "http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=108,108&svc.region=627,240,3431,3431&svc.rotate=0"
    end

    it "has a large_src" do
      @menu.large_src.should eq "http://images.nypl.org/index.php?id=4029915&t=w"
    end

    it "has a large_src_jp2" do
      @menu.large_src_jp2.should eq "http://j2k.repo.nypl.org/adore-djatoka/resolver?url_ver=Z39.88-2004&rft_id=urn:uuid:bf8b24be-cb02-4876-e040-e00a1806540b&svc_id=info:lanl-repo/svc/getRegion&svc_val_fmt=info:ofi/fmt:kev:mtx:jpeg2000&svc.format=image/jpeg&svc.scale=1800,0&svc.rotate=0"
    end

    it "has a first_page_aspect" do
      @menu.first_page_aspect.should eq "portrait"
    end

    it "has a first_page_full_width" do
      @menu.first_page_full_width.should eq 3911
    end

    it "has a first_page_full_height" do
      @menu.first_page_full_height.should eq 4686
    end

    it "has links" do
      @menu.links.should be_an_instance_of Array
    end

    it "returns its client" do
      @menu.client.should eq @client_double
    end
  end

  describe "#link" do
    it "returns the link href" do
      @menu.link(:index).should eq 'http://menus.nypl.org/api/menus'
    end
  end
end