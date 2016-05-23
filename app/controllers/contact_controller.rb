class ContactController < ApplicationController
  def index
  end

  def contact_us
    @contact = Contact.new
  end

  # def create
  #   @contact = Contact.new(contact_params)
  #   respond_to do |format|
  #       if @contact.save
  #         format.html { redirect_to contact_url, notice: 'this should work.' }
  #         format.json { render :show, status: :created, location: @contact }
  #       else
  #         format.html { render :contact_us }
  #         format.json { render json: @contact.errors, status: :unprocessable_entity }
  #       end
  #     end
  # end



  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactNotifier.requester(@contact).deliver
      flash[:success] = "Thanks for contacting us, we will get in touch with you shortly." #bootstrap thing/flash notice
      redirect_to contact_path
    else
      # flash[:danger] = "no good" #bootstrap thing/flash notice
      render 'contact_us'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :message, :phone_number)
    end
end
