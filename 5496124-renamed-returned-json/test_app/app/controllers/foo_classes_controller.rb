class FooClassesController < ApplicationController
  # GET /foo_classes
  # GET /foo_classes.xml
  def index
    @foo_classes = FooClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @foo_classes }
      format.js { render :json => @foo_classes.as_json(:root => 'foo')}
    end
  end

  # GET /foo_classes/1
  # GET /foo_classes/1.xml
  def show
    @foo_class = FooClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @foo_class }
    end
  end

  # GET /foo_classes/new
  # GET /foo_classes/new.xml
  def new
    @foo_class = FooClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @foo_class }
    end
  end

  # GET /foo_classes/1/edit
  def edit
    @foo_class = FooClass.find(params[:id])
  end

  # POST /foo_classes
  # POST /foo_classes.xml
  def create
    @foo_class = FooClass.new(params[:foo_class])

    respond_to do |format|
      if @foo_class.save
        format.html { redirect_to(@foo_class, :notice => 'Foo class was successfully created.') }
        format.xml  { render :xml => @foo_class, :status => :created, :location => @foo_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @foo_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /foo_classes/1
  # PUT /foo_classes/1.xml
  def update
    @foo_class = FooClass.find(params[:id])

    respond_to do |format|
      if @foo_class.update_attributes(params[:foo_class])
        format.html { redirect_to(@foo_class, :notice => 'Foo class was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @foo_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /foo_classes/1
  # DELETE /foo_classes/1.xml
  def destroy
    @foo_class = FooClass.find(params[:id])
    @foo_class.destroy

    respond_to do |format|
      format.html { redirect_to(foo_classes_url) }
      format.xml  { head :ok }
    end
  end
end

