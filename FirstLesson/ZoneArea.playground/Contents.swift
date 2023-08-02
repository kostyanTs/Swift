//Написать игру на ООП - Захват зоны 51.
//
//Классы (3-4 класса (прим: Анимешники, Джедаи, Чак Норис и Боец Зоны 51). Они наследуются от класса Unit.
//У каждого из класса должны быть поля: Здоровье, Урон, Защита, Ловкость, Никнейм.
//Каждый новый Unit инициализируется со всем набором полей (кроме, возможно, вами придуманных дополнительных)
//У каждого класса Unit-а должен быть минимум 1 метод типа attack(to enemy: ...)
//Есть так же класс ZonaArea и содержит в себе минимум 1 метод beginBattle(with attackers: [Unit], guardians: [Unit], wave: Int), который принимает N персонажей и N бойцов Зоны 51, и уровень волны нападющих. Производит симуляцию боя, где учитываются все поля персонажей (например у кого брони больше, тот в каком-то процентном соотношении получает меньше урона). Бойцы несут потери (их становится меньше).
//В зависимости от волны (wave) качество и кол-во нападающих увеличивается, а кол-во и качество бойцов остается прежним.
//Конец игры: либо защитники отбили все волны и хотя бы 1 жив, либо нападающие победили в одной из волн.
//В итоге нужно распечатывает кто победил, либо бойцы зоны 51 (Если хотя бы 1 боец выжил), либо атакующие и на какой волне.
//Все значения полей, правила битвы и остальное на вашу фантазию.
//
import UIKit


struct Power {
    fileprivate var  damage: Int = 10
    fileprivate var  health: Int = 100
    fileprivate var protection: Int = 10
    fileprivate var agility: Int = 10
}

class Unit {
    fileprivate var nickname: String
    fileprivate var power = Power()
    fileprivate var count: Int = 0
    fileprivate var description: String{
        return "\(nickname)|\(power)"
    }
    var sum_damage: Int {
        return self.power.damage * self.power.agility
    }
    init(nickname: String, power: Power) {
        self.nickname = "Unit"
        self.power = Power()
    }

    
}

class Warrior51: Unit {
    override init(nickname: String, power: Power) {
        super.init(nickname: nickname, power: power)
        self.nickname = "Warrior 51"
        self.power = Power(damage: 100, health: 200, protection: 100, agility: 100)
        
    }
}

class AnimeWatcher: Unit {
    override init(nickname: String, power: Power) {
        super.init(nickname: nickname, power: power)
        self.nickname = "AnimeWatcher"
        self.power = Power(damage: 10, health: 100, protection: 50, agility: 10)
    }
    
}

class Djedai: Unit {
    override init(nickname: String, power: Power) {
        super.init(nickname: nickname, power: power)
        self.nickname = "Djedai"
        self.power = Power(damage: 500, health: 200, protection: 100, agility: 200)
    }
}

class ChuckNoris: Unit {
    override init(nickname: String, power: Power) {
        super.init(nickname: nickname, power: power)
        self.nickname = "Noriiis"
        self.power = Power(damage: 200, health: 500, protection: 100, agility: 300)
    }
}

class ZoneArea {
    private var anime = AnimeWatcher(nickname: "AnimeWatcher", power: Power(damage: 10, health: 100, protection: 50, agility: 10))
    private var djedai = Djedai(nickname: "Djedai", power: Power(damage: 500, health: 200, protection: 100, agility: 200))
    private var noris = ChuckNoris(nickname: "Noriiis", power: Power(damage: 200, health: 500, protection: 100, agility: 300))
    private var warrior51 = Warrior51(nickname: "Warrior 51", power: Power(damage: 100, health: 200, protection: 100, agility: 100))
    func beginBattle(anime: Int, djedai: Int, noris: Int, guardians: Int, wave: Int ) -> String {
        self.anime.count = anime
        self.djedai.count = djedai
        self.noris.count = noris
        self.warrior51.count = guardians
        var wave: Int = wave
        var guardiansSumHealth: Int = self.warrior51.power.health * self.warrior51.count
        var attackersSumHealth: Int = self.anime.power.health * self.anime.count + self.djedai.power.health * self.djedai.count + self.noris.power.health * self.noris.count
        var guardiansSumAttack: Int = self.warrior51.sum_damage * self.warrior51.count
        var attackersSumAttack: Int = self.anime.sum_damage * self.anime.count + self.djedai.sum_damage * self.djedai.count + self.noris.sum_damage * self.noris.count
        // wariors 51 power = Power(damage: 100, health: 200, protection: 100, agility: 100)
        for value in 1...wave {
            var coeficient: Int = 1 + 2 * value / 10
            if value == 1 {
                coeficient = 1
            }
            attackersSumAttack *= coeficient
            attackersSumHealth *= coeficient
            while guardiansSumHealth > 0 || attackersSumHealth > 0 {
                guardiansSumHealth -= attackersSumAttack
                attackersSumHealth -= guardiansSumAttack
            }
//            print(guardiansSumHealth)
//            print(attackersSumHealth)
//            print(value)
            if value == wave {
                if guardiansSumHealth < attackersSumHealth {
                    return "attackers are win"
                }
                if attackersSumHealth < guardiansSumHealth {
                    return "guardians are win"
                }
            }
            
        }
        return "Error"
    }
}

var zoneArea = ZoneArea()
zoneArea.beginBattle(anime: 10, djedai: 20, noris: 2, guardians: 1000, wave: 3)


