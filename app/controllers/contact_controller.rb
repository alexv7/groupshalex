class ContactController < ApplicationController
  def index
  end

  def contact_us
  end

  def new
  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
        if @contact.save
          format.html { redirect_to contact_url, notice: 'Contact was successfully created.' }
          format.json { render :show, status: :created, location: @contact }
        else
          format.html { render :contact_us }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
        end
      end
  end



  # def create
  #   contact = Contact.new(contact_params)
  #   if contact.save
  #     flash[:success] = "Message sent" #bootstrap thing/flash notice
  #     contact = nil
  #     redirect_to contact_path
  #   else
  #     render 'new'
  #   end
  # end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :message, :phone_number)
    end
end
