class VariantsController < ApplicationController
  # GET /variants
  # GET /variants.xml
  def index
    @variants = Variant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @variants }
    end
  end

  # GET /variants/1
  # GET /variants/1.xml
  def show
    @variant = Variant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @variant }
    end
  end

  # GET /variants/new
  # GET /variants/new.xml
  def new
    @variant = Variant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @variant }
    end
  end

  # GET /variants/1/edit
  def edit
    @variant = Variant.find(params[:id])
  end

  # POST /variants
  # POST /variants.xml
  def create
    @variant = Variant.new(params[:variant])

    respond_to do |format|
      if @variant.save
        format.html { redirect_to(@variant, :notice => 'Variant was successfully created.') }
        format.xml  { render :xml => @variant, :status => :created, :location => @variant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @variant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /variants/1
  # PUT /variants/1.xml
  def update
    @variant = Variant.find(params[:id])

    respond_to do |format|
      if @variant.update_attributes(params[:variant])
        format.html { redirect_to(@variant, :notice => 'Variant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @variant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /variants/1
  # DELETE /variants/1.xml
  def destroy
    @variant = Variant.find(params[:id])
    @variant.destroy

    respond_to do |format|
      format.html { redirect_to(variants_url) }
      format.xml  { head :ok }
    end
  end
end
