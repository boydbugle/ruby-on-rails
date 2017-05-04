class SightingsController < ApplicationController
    def index
        @sightings = Sighting.all
    end

    def show
        @sighting = Sighting.find(params[:id])
    end

    def new
        @sighting = Sighting.new
    end

    def create
        @sighting = Sighting.new(sighting_params)
        if @sighting.save
            flash[:notice] = "Sighting successfully added! add animal sighted"
            redirect_to new_sighting_animal_path(@sighting)
        else
            render :new
        end
    end

    def edit
        @sighting = Sighting.find(params[:id])
    end

    def update
        @sighting = Sighting.find(params[:id])
        if @sighting.update(sighting_params)
            flash[:notice] = "Sighting successfully updated!"
            redirect_to sightings_path
        else
            render :edit
        end
    end

    def destroy
        @sighting = Sighting.find(params[:id])
        @sighting.destroy
        flash[:notice] = "Sighting successfully destroyed!"
        redirect_to sightings_path
    end

    private
    def sighting_params
      params.require(:sighting).permit(:region,:warden,:zone,:address,:latitude,:longitude)
    end
end
