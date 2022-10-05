class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim

    validate :monster_with_scare_level_higer_than_five_cant_attack_children

    def monster_with_scare_level_higer_than_five_cant_attack_children
        if ((monster.scare_level > 5) && ((Date.today.year - victim.birthdate.year) < 18))
            errors.add (:base, :invalid, message: "Este ataque es invalido porque #{monster.name} es un monstruo con nivel de susto mayor al 5 (#{monster.scare_level}) y #{victim.name} es una victima menor de edad")
        end
    end
end