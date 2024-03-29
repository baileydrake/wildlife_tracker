class SightingController < ActionController::Base
  def new
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new
    render('/sighting/new.html.erb')
  end

  def create
    @sighting = Sighting.new(:location => params[:location],
                             :date => params[:date],
                             :time => params[:time],
                             :species_id => params[:species_id])

    if @sighting.save
      render('sighting/success.html.erb')
    else
      render('sighting/new.html.erb')
    end
  end

  def show
  @sighting = Sighting.find(params[:id])
    render('sighting/show.html.erb')
  end


  def edit
    @sighting = Sighting.find(params[:id])
    render('sighting/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(:location => params[:location],
                             :date => params[:date],
                             :time => params[:time])
      render('sighting/success.html.erb')
    else
      render('sighting/edit.html.erb')
    end
  end

end
