class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    render :new if @contact.invalid?
  end

  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to root_path, notice: 'お問い合わせ内容を送信しました'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact)
          .permit(:email,
                  :name,
                  :subject,
                  :message)
  end
end
