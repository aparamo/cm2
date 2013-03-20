class PuzzlesController < ApplicationController
  # GET /puzzles
  # GET /puzzles.json
  def index
    @puzzles = Puzzle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @puzzles }
    end
  end

  # GET /puzzles/1
  # GET /puzzles/1.json
  def show
    @puzzle = Puzzle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @puzzle }
    end
  end

  # GET /puzzles/new
  # GET /puzzles/new.json
  def new
    @puzzle = Puzzle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @puzzle }
    end
  end

  # GET /puzzles/1/edit
  def edit
    @puzzle = Puzzle.find(params[:id])
  end

  # POST /puzzles
  # POST /puzzles.json
  def create
    @puzzle = Puzzle.new(params[:puzzle])

    respond_to do |format|
      if @puzzle.save
        format.html { redirect_to @puzzle, notice: 'Puzzle was successfully created.' }
        format.json { render json: @puzzle, status: :created, location: @puzzle }
      else
        format.html { render action: "new" }
        format.json { render json: @puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /puzzles/1
  # PUT /puzzles/1.json
  def update
    @puzzle = Puzzle.find(params[:id])

    respond_to do |format|
      if @puzzle.update_attributes(params[:puzzle])
        format.html { redirect_to @puzzle, notice: 'Puzzle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puzzles/1
  # DELETE /puzzles/1.json
  def destroy
    @puzzle = Puzzle.find(params[:id])
    @puzzle.destroy

    respond_to do |format|
      format.html { redirect_to puzzles_url }
      format.json { head :no_content }
    end
  end

  def play
    @puzzle = Puzzle.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @puzzle }
    end
  end

  def answ
    puzzl = Puzzle.find(params[:id])
    rwdid = puzzl.reward_id
    if params[:answ] == puzzl.answer
      @puresult = "correct " + puzzl.answer + "  -  " + params[:answ]
      @answ = true
      reward = Reward.find(rwdid)
      reward.unlocked = true
      reward.save
      puzzl.unlocked = true
      puzzl.save
      l = Level.find(puzzl.level_id)
      cu = current_user.clevel
      if cu == l.num
        current_user.update_attribute(:clevel, cu + 1 )
      end 
    else
      @puresult = "no, no " + puzzl.answer + "  -  " + params[:answ]
      @answ = false
      flash[:notice] = "Hints : " + puzzl.i
    end
    @puzzle = puzzl

    respond_to do |format|
      format.html 
      format.json { render json: @puzzle }
    end
  end

end
