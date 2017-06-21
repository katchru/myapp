class RegistrationController < ApplicationController
   def list
	@registrations = Registration.all
   end
   def show
   @registration = Registration.find(params[:id])
   end
   
   def new
   @registration = Registration.new
   @aircrafts = Aircraft.all
   end
   
   def registration_params
	params.require(:registrations).permit(:brand, :model, :engine, :aircraft_id, :tail_number, :owner_name, :owner_surname)
   end
   
   
   def create
   @registration = Registration.new(registration_params)
	
	if @registration.save
      redirect_to :action => 'list'
	else
      @aircrafts = Aircraft.all
      render :action => 'new'
	end
   
   end

  
   def delete
   Registration.find(params[:id]).destroy
   redirect_to :action => 'list'
   end
end
