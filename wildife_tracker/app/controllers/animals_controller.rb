class AnimalsController < ApplicationController
    def new
        @sighting = Sighting.find(params[:sighting_id])
        @animal = @sighting.animals.new
    end

    def create
        @sighting = Sighting.find(params[:sighting_id])
        @animal = @sighting.animals.new(animal_params)
        if @animal.save
            flash[:notice] = "Animal successfully added!"
            redirect_to sighting_path(@sighting)
        else
            render :new
        end
    end

    def edit
        @sighting = Sighting.find(params[:sighting_id])
        @animal = Animal.find(params[:id])
    end

    def update
        @sighting = Sighting.find(params[:sighting_id])
        @animal = Animal.find(params[:id])
        if @animal.update(animal_params)
            flash[:notice] = "Animal successfully updated!"
            redirect_to sighting_path(@sighting)
        else
            render :edit
        end
    end

    def destroy
        @sighting = Sighting.find(params[:sighting_id])
        @animal = Animal.find(params[:id])
        @animal.destroy
        flash[:notice] = "Animal successfully destroyed!"
        redirect_to sighting_path(@sighting)
    end
        
    private
    def animal_params
        params.require(:animal).permit(:species,:number,:description)
    end
end