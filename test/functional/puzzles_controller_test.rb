require 'test_helper'

class PuzzlesControllerTest < ActionController::TestCase
  setup do
    @puzzle = puzzles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puzzles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puzzle" do
    assert_difference('Puzzle.count') do
      post :create, puzzle: { ex2: @puzzle.ex2, ex: @puzzle.ex, i2: @puzzle.i2, i: @puzzle.i, level_id: @puzzle.level_id, question: @puzzle.question, title: @puzzle.title, video: @puzzle.video }
    end

    assert_redirected_to puzzle_path(assigns(:puzzle))
  end

  test "should show puzzle" do
    get :show, id: @puzzle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puzzle
    assert_response :success
  end

  test "should update puzzle" do
    put :update, id: @puzzle, puzzle: { ex2: @puzzle.ex2, ex: @puzzle.ex, i2: @puzzle.i2, i: @puzzle.i, level_id: @puzzle.level_id, question: @puzzle.question, title: @puzzle.title, video: @puzzle.video }
    assert_redirected_to puzzle_path(assigns(:puzzle))
  end

  test "should destroy puzzle" do
    assert_difference('Puzzle.count', -1) do
      delete :destroy, id: @puzzle
    end

    assert_redirected_to puzzles_path
  end
end
