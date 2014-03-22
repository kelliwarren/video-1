class RoomsController < ApplicationController
  before_action :config_opentok
  before_action :room_params, only:[:create]
  def new
    @rooms = Room.all
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @session = @opentok.create_session request.remote_addr
    @room.sessionId = @session.session_id
    if @room.save

      redirect_to rooms_show_path(@room)
    else 
      raise
    end
  end

  def show
    @room = Room.find(params[:id])
    
    @token = @opentok.generate_token :session_id => @room.sessionId
  end

  def destroy
  end

  def action
  end

  private
  def config_opentok
    if @opentok.nil?
      @opentok = OpenTok::OpenTokSDK.new "44703992", "0d824f06bd2a4b7ca9c0053de61136e86e7e2ffb"
    end
  end 
  def room_params
    params.require(:room).permit(:name, :sessionId)
  end
end
