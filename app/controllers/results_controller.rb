class ResultsController < ApplicationController
 
  
  def new
  	@sample = Sample.find(params[:sample_id])
  	@result = @sample.results.build
  	
  	respond_to do |format|
      format.js
    end

  end

  def create
    @sample = Sample.find(params[:sample_id])
  	@result = @sample.results.new(params[:result])
     if @result.save
      flash[:notice] = "Successfully created post."
      redirect_to sample_path(@sample)
    end
  end

  # GET /samples/1/edit
  def edit
    @sample = Sample.find(params[:sample_id])
    @result = @sample.results.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

# PUT /samples/1
  # PUT /samples/1.json
  def update
    @sample = Sample.find(params[:sample_id])
    @result = @sample.results.find(params[:id])
    respond_to do |format|
      if @result.update_attributes(params[:result])
        format.html { redirect_to @sample, notice: 'Sample was successfully updated.' }
        format.json { head :no_content }
      end
    end
  end

  # DELETE /samples/1
  # DELETE /samples/1.json
  def destroy
    @sample = Sample.find(params[:sample_id])
    @result = @sample.results.find(params[:id])
    @result.destroy

    respond_to do |format|
      format.js
      format.json { head :no_content }
    end
  end



end
