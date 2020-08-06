class AccueilController < ApplicationController
  def show
    @AlaUne = Annonce.AlaUne.sort_by(&:created_at).reverse
    @sort = params[:sort]
    @secondSort = params[:secondSort]
    search = params[:search]

    if(search)then
        @AlaUne = Annonce.search(search)
    else        
        if (@sort != nil)
            @AlaUne = Annonce.sortby(@AlaUne,@sort)
        end

        if (@secondSort != nil)
            @AlaUne = Annonce.sortby(@AlaUne,@secondSort)
        end
    end
  end
end
