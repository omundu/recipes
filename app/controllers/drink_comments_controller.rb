class DrinkCommentsController < ApplicationController
=begin
  # GET /drink_comments
  # GET /drink_comments.xml
  def index
    @drink_comments = DrinkComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @drink_comments }
    end
  end

  # GET /drink_comments/1
  # GET /drink_comments/1.xml
  def show
    @drink_comment = DrinkComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @drink_comment }
    end
  end

  # GET /drink_comments/new
  # GET /drink_comments/new.xml
  def new
    @drink_comment = DrinkComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @drink_comment }
    end
  end

  # GET /drink_comments/1/edit
  def edit
    @drink_comment = DrinkComment.find(params[:id])
  end

  # POST /drink_comments
  # POST /drink_comments.xml
  def create
    @drink_comment = DrinkComment.new(params[:drink_comment])

    respond_to do |format|
      if @drink_comment.save
        flash[:notice] = 'DrinkComment was successfully created.'
        format.html { redirect_to(@drink_comment) }
        format.xml  { render :xml => @drink_comment, :status => :created, :location => @drink_comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @drink_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /drink_comments/1
  # PUT /drink_comments/1.xml
  def update
    @drink_comment = DrinkComment.find(params[:id])

    respond_to do |format|
      if @drink_comment.update_attributes(params[:drink_comment])
        flash[:notice] = 'DrinkComment was successfully updated.'
        format.html { redirect_to(@drink_comment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @drink_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /drink_comments/1
  # DELETE /drink_comments/1.xml
  def destroy
    @drink_comment = DrinkComment.find(params[:id])
    @drink_comment.destroy

    respond_to do |format|
      format.html { redirect_to(drink_comments_url) }
      format.xml  { head :ok }
    end
  end
=end
  def create
    @drink = Drink.find(params[:drink_id])
    @drink_comment = @drink.drink_comments.create!(params[:drink_comment])
    redirect_to @drink
  end
end
