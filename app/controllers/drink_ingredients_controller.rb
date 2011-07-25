class DrinkIngredientsController < ApplicationController
  # GET /drink_ingredients
  # GET /drink_ingredients.xml
  def index
    @drink_ingredients = DrinkIngredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @drink_ingredients }
    end
  end

  # GET /drink_ingredients/1
  # GET /drink_ingredients/1.xml
  def show
    @drink_ingredient = DrinkIngredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @drink_ingredient }
    end
  end

  # GET /drink_ingredients/new
  # GET /drink_ingredients/new.xml
  def new
    @drink_ingredient = DrinkIngredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @drink_ingredient }
    end
  end

  # GET /drink_ingredients/1/edit
  def edit
    @drink_ingredient = DrinkIngredient.find(params[:id])
  end

  # POST /drink_ingredients
  # POST /drink_ingredients.xml
  def create
    @drink_ingredient = DrinkIngredient.new(params[:drink_ingredient])

    respond_to do |format|
      if @drink_ingredient.save
        flash[:notice] = 'DrinkIngredient was successfully created.'
        format.html { redirect_to(@drink_ingredient) }
        format.xml  { render :xml => @drink_ingredient, :status => :created, :location => @drink_ingredient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @drink_ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /drink_ingredients/1
  # PUT /drink_ingredients/1.xml
  def update
    @drink_ingredient = DrinkIngredient.find(params[:id])

    respond_to do |format|
      if @drink_ingredient.update_attributes(params[:drink_ingredient])
        flash[:notice] = 'DrinkIngredient was successfully updated.'
        format.html { redirect_to(@drink_ingredient) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @drink_ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /drink_ingredients/1
  # DELETE /drink_ingredients/1.xml
  def destroy
    @drink_ingredient = DrinkIngredient.find(params[:id])
    @drink_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to(drink_ingredients_url) }
      format.xml  { head :ok }
    end
  end
end
