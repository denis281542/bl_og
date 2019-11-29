class ScreenScrapingsController < ApplicationController
  before_action :set_screen_scraping, only: [:show, :edit, :update, :destroy]

  # GET /screen_scrapings
  # GET /screen_scrapings.json
  def index
    @screen_scrapings = ScreenScraping.all
  end

  # GET /screen_scrapings/1
  # GET /screen_scrapings/1.json
  def show
  end

  # GET /screen_scrapings/new
  def new
    @screen_scraping = ScreenScraping.new
  end

  # GET /screen_scrapings/1/edit
  def edit
  end

  # POST /screen_scrapings
  # POST /screen_scrapings.json
  def create
    @screen_scraping = ScreenScraping.new(screen_scraping_params)

    respond_to do |format|
      if @screen_scraping.save
        format.html { redirect_to @screen_scraping, notice: 'Screen scraping was successfully created.' }
        format.json { render :show, status: :created, location: @screen_scraping }
      else
        format.html { render :new }
        format.json { render json: @screen_scraping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screen_scrapings/1
  # PATCH/PUT /screen_scrapings/1.json
  def update
    respond_to do |format|
      if @screen_scraping.update(screen_scraping_params)
        format.html { redirect_to @screen_scraping, notice: 'Screen scraping was successfully updated.' }
        format.json { render :show, status: :ok, location: @screen_scraping }
      else
        format.html { render :edit }
        format.json { render json: @screen_scraping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_scrapings/1
  # DELETE /screen_scrapings/1.json
  def destroy
    @screen_scraping.destroy
    respond_to do |format|
      format.html { redirect_to screen_scrapings_url, notice: 'Screen scraping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen_scraping
      @screen_scraping = ScreenScraping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_scraping_params
      params.fetch(:screen_scraping, {})
    end
end
