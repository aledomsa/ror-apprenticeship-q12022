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
        mission_states = %i[paused aborted failed accomplished]

        def initialize
            @missions = {}
        end
        
        def new_mission(name:, objective:, pack:)
            missions[name] = {
                objective: objective,
                pack: pack,
                status: :active
            }
        end

        mission_states.each do |mission_state|
            define_method "set_mission_to_#{mission_state}" do |mission|
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
                            surname: data_information[:surname],
                            age: data_information[:age],
                            country: data_information[:country],
                            language: data_information[:language],
                            marital_status: data_information[:marital_status],
                            children: data_information[:children]
                        }
                    when :professional
                        professional_data = {
                            position: data_information[:position],
                            occupation: data_information[:occupation],
                            skills: data_information[:skills],
                            observations: data_information[:observations]
                        }
                end
            end
        end

    end
    
    class Worker < Human
        attr_accessor :standard_shift, :extra_shift

        def initialize
            @standard_shift = {
                id: self.object_id,
                hours: 8,
                payment: 8,
                facility: String.new,
                status: nil
            }
            @extra_shift = {
                id: self.object_id,
                hours: 0,
                payment: 0.0,
                facility: String.new,
                status: nil
            }
        end
    end

end
