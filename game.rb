require 'environment.rb'

class Game
    include Environment
    attr_accessor :board, :depot, :control

    def initialize
        @board = {
            players: {},
            control: {},
            status: nil
        }
        @depot = Environment::Depot.new
        @control = Environment::Control.new
    end

    def new_mission(name:, objective:, pack:)
        control.new_mission(name: name, objective: objective, pack: pack)
        board[:control] = {
            missions: control.missions
        }
    end

end