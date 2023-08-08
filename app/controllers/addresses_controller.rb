class AddressesController < InheritedResources::Base

  private

    def address_params
      params.require(:address).permit(:address, :postal, :province, :user_id)
    end

end
