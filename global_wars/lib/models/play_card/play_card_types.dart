// The rarity of a card
enum PlayCardRarity { common, uncommon, rare, legendary }

// Every card can be effective or not against the following types
enum PlayCardType {highAir, lowAir, ground, water, underWater}

// The subtype might provide some cards with extra effects, good or bad
enum PlayCardSubType {artillery, boat, bomber, helicopter, infantry, plane, submarine, tank}

// How good a card is agains a certain card type
enum PlayCardEffectiveness {noEffect, normalEffect, goodEffect, highEffect}

// Card stat type
enum PlayCardStats {hitpoints, armor, firepower, precision, evasion}

// Card cost type
enum PlayCardCosts {manpower, equipment, metal, electronics}

// @todo
// Special abilities
enum PlayCardAbility {granade, wideShot, constantFire, selfDestruction}
