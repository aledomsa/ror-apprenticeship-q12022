require_relative 'environment.rb'

class ErrorTest
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

    def new_worker name: nil
            @board[:players].store name, Environment::Worker.new(name)
        rescue ArgumentError
            puts 'No string for name in worker method'
    end


    def new_mission(name:, objective:, pack:)
            @control.new_mission(name: name, objective: objectve, pack: pack)
        rescue NameError
            puts 'Undefined local variable in method'
    end

    def new_mission2(name:, objective:, pack:)
            @control.new_mission(name: name, objective: objective)
        rescue ArgumentError
            puts 'Undefined argument in method'
    end
end



error = ErrorTest.new

name = :alpha
objective = 'Get Alpha to the base'
pack = :simple_transportation_pack

error.new_worker
error.new_mission(name: name, objective: objective, pack: pack)
error.new_mission2(name: name, objective: objective, pack: pack)
