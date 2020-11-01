class RoomsController < ApplicationController

  def new
    @room = Room.new
  end

  def create
    #保存が成功するか失敗するかの条件分岐忘れず。
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
    # parmit の中の user_ids: [] は、配列に対して保存を許可するという意。
  end

end
