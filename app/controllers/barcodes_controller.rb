class BarcodesController < ApplicationController
  def show
  	user = User.find(params['id'])
  	render json: user
  end

  def create
  	Hotspot.create!(
			lat: params['lat'], 
			long: params['long'],
			concentration: 1
		)		

  	user = User.find(params['id'])
  	barcode_data = permitted_params

  	@barcode = Barby::Code128B.new(barcode_data)	
		outputter = Barby::PngOutputter.new(@barcode)
	
		path = Rails.root.join("app", "assets", "images", "#{user.id}_barcode.png")
		File.open(path, 'wb'){|f| f.write outputter.to_png }
		# user.barcode.attach(filename)
  	user.update!(barcode: ActionController::Base.helpers.image_path("#{user.id}_barcode.png"))
  	render json: user
  end

  private 

	  def permitted_params 
	  	{
	  		id: params['id'],
	  		lat: params['lat'],
	  		long: params['long']
	  	}
	  end
end