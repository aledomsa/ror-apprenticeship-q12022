require_relative 'environment.rb'

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

game = Game.new

=begin
p game.depot.packs[:simple_transportation_pack]
p game.depot.packs[:standard_mission_pack]
p game.depot.packs[:standard_mission_pack][:items]
=end

name = :alpha
objective = 'Get Alpha to the base'
pack = :simple_transportation_pack
game.control.new_mission name: name, objective: objective, pack: game.depot.packs[pack]
=begin
p game.control.missions[:alpha]
=end

game.control.set_mission_to_accomplished(:alpha)

=begin
p game.control.missions[:alpha]
=end

diego = game.new_worker name: 'Diego'
diego.set_personal_data surname: 'Mota', age: 40, marital_status: :single, children: 0, country: :mx, language: :es
diego.set_professional_data position: 'SE', occupation: 'IT', skills: %i[ruby blender], observations: 'none'
p "#{diego.name}, #{diego.class}", diego.personal_data, diego.professional_data