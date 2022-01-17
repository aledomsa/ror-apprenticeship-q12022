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
        begin
            @board[:players].store name, Environment::Worker.new(name)
        rescue ArgumentError
            puts 'No string for name in worker given'
        end
    end

end

error = ErrorTest.new
error.new_worker