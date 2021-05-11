module UserConcern
	
	private
 	def user_params
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation, :avatar, address_attributes: [:id, :address_line, :state, :city, :street, :land_mark, :pincode])
  end
end