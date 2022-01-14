module Environment
    class Depot
        attr_accessor :packs

        def initialize
            @packs = {
                simple_transportation_pack: { 
                    intelligence: %i[cellphone], 
                    items: %i[medipack chevy_versa] 
                },
                standard_transportation_pack: { 
                    intelligence: %i[cellphone antenna], 
                    arsenal: %i[colt_1911],
                    items: %i[handcuffs medipack chemestry chevy_versa] 
                },
                simple_mission_pack: { 
                    intelligence: %i[infopack laptop cellphone antenna], 
                    arsenal: %i[colt_1911],
                    items: %i[handcuffs medipack chemistry financial] 
                },
                standard_mission_pack: { 
                    intelligence: %i[infopack laptop cellphone antenna], 
                    arsenal: %i[remington_870 colt_1911 machete hatchet],
                    items: %i[handcuffs medipack chemistry financial] 
                }
            }
        end

    end

    class Control
        attr_accessor :missions
        mission_states = %i[paused aborted failed accompished]

        def initialize
            @missions = {}
        end
        
        def new_mission(name:, objective:, pack:)
            missions[name] = {
                objective: objective,
                pack: pack
                status: :active
            }
        end

        mission_states.each do |mission_state|
            define_method "set_mission_to#{mission_state}" do |mission|
                missions[mission][:status] = mission_state
            end
        end

    end

    class Human
        attr_accessor :id, :name, :personal_data, :professional_data
        data_types = %i[personal professional]
        @id = self.object_id
        @name = name
        
        data_types.each do |data_type|
            define_method "set_#{data_type}_data" do |data_information|
                case data_type
                    when :personal
                        personal_data = {
                            surname: "",
                            age: 0,
                            country: "",
                            language: "",
                            marital_status: "",
                            children: 0
                        }
                    when :professional
                        professional_data = {
                            position: "",
                            occupation: "",
                            skills: "",
                            observations: ""
                        }

                end
            end
        end

    end
end
