class CreateIngredientsController < ApplicationController
  # GET /create_ingredients
  # GET /create_ingredients.xml
  def index
    @create_ingredients = CreateIngredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @create_ingredients }
    end
  end

  # GET /create_ingredients/1
  # GET /create_ingredients/1.xml
  def show
    @create_ingredient = CreateIngredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @create_ingredient }
    end
  end

  # GET /create_ingredients/new
  # GET /create_ingredients/new.xml
  def new
    @create_ingredient = CreateIngredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @create_ingredient }
    end
  end

  # GET /create_ingredients/1/edit
  def edit
    @create_ingredient = CreateIngredient.find(params[:id])
  end

  # POST /create_ingredients
  # POST /create_ingredients.xml
  def create
    @create_ingredient = CreateIngredient.new(params[:create_ingredient])

    respond_to do |format|
      if @create_ingredient.save
        flash[:notice] = 'CreateIngredient was successfully created.'
        format.html { redirect_to(@create_ingredient) }
        format.xml  { render :xml => @create_ingredient, :status => :created, :location => @create_ingredient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @create_ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /create_ingredients/1
  # PUT /create_ingredients/1.xml
  def update
    @create_ingredient = CreateIngredient.find(params[:id])

    respond_to do |format|
      if @create_ingredient.update_attributes(params[:create_ingredient])
        flash[:notice] = 'CreateIngredient was successfully updated.'
        format.html { redirect_to(@create_ingredient) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @create_ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /create_ingredients/1
  # DELETE /create_ingredients/1.xml
  def destroy
    @create_ingredient = CreateIngredient.find(params[:id])
    @create_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to(create_ingredients_url) }
      format.xml  { head :ok }
    end
  end
end
