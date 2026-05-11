class PrefecturesController < ApplicationController
  def index
    @prefectures = Prefecture.order(:code)
  end

  def show
    @prefecture = Prefecture.find(params[:id])
  end
end
