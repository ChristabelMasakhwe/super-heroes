hero1 = Hero.create(name:"Brie Larson",super_name:"Captain Marvel" )
hero2 = Hero.create(name:"Robert Downey",super_name:"Iron man" )
hero3 = Hero.create(name:"Natasha Romanova",super_name:"Black Widow" )

power1 = Power.create(name:"Seventh sense", description:"Enhanced strength, stamina, agility, and durability, as well as flight, and almost total immunity to toxins and poisons")
power2 = Power.create(name:"Energy repulsor and missile projection", description:"He is the Armored Avenger - driven by a heart that is part machine, but all hero! He is the INVINCIBLE IRON MAN! Iron Man's Powers and Abilities: Wears modular arc reactor-powered Iron Man armor, granting superhuman strength & durability, the ability to fly & project Repulsor blasts.")
power3 = Power.create(name:"Master in the covert arts of espionage, infiltration & subterfuge", description:"An expert in many forms of martial arts, she is also a skilled gymnast and possesses superhuman strength, speed, agility, and endurance. Black Widow is as deadly in darkness as she is in light; as a highly trained super spy, Natasha Romanoff stands among the greatest covert assassins in the world.")

hero_power1 = HeroPower.create(strength:"Strong", hero_id:1, power_id:1)
hero_power2 = HeroPower.create(strength:"Strong", hero_id:2, power_id:2)
hero_power3 = HeroPower.create(strength:"Strong", hero_id:3, power_id:3)