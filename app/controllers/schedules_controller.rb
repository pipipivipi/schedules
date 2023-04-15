class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :all_day, :memo))
    if @schedule.save
      flash[:notice] = "予定を追加しました"
      redirect_to :schedules
    else
      flash.now[:notice] = "予定の追加に失敗しました"
      render "new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :startdate, :enddate, :all_day, :memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :schedules
    else
      flash.now[:notice] = "予定の追加に失敗しました"
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "予定を削除しました"
    redirect_to :schedules
  end
end
