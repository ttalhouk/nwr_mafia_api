class GamesController < ApplicationController
  def index
    games = Game.all
    players = Player.all
    response = { games: games, players: players}

    render json: response.as_json, status: :ok
  end

  def show
    game = Game.find(params[:id])
    if game
      players = game.players
      response = {
        game: game,
        players: players
      }
      render json: response.as_json, status: :ok
    else
      errors = {error: game.errors}
      render json: errors.as_json, status: 404
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
