//
//  AdventureLogic.swift
//  MobileAppsDev1_Module5
//
//  Created by Michael Medlin on 11/8/23.
//

import Foundation

class adventureLogic
{
    var pathIndex : Int = 0
    let paths =
    [
        //Index 0
        adventurePath("The once-prosperous Kingdom of Dwarves has fallen to the relentless raids of the orcish horde, forcing the dwarves to flee their ancestral city. They embark on a perilous adventure to discover the legendary Golden Gate, where they hope to establish a new kingdom, far from the clutches of the ruthless orcs. Now, the fate of the dwarves is in your hands. Should they:",
                      
                      "Brave the treacherous caves, seeking refuge in the subterranean depths.",
                      
                      "Venture toward the ominous and searing lava fields, hoping to find a safer route."),
        //Index 1
        adventurePath("The dwarves find themselves at a fork in the cavern's depths. Their choices are as follows:",
                      
                      "Follow the flickering light and faint echoes of muffled voices to uncover an unexpected ally or a new challenge.",
                      
                      "Plunge into the ominous darkness, navigating through the dead silent tunnel, not knowing what awaits them in the abyss."),
        //Index 2
        adventurePath("The lava fields prove to be an arduous and unforgiving terrain. The dwarves must make a critical decision:",
                      
                      "Ascend the treacherous mountain pass, attempting to bypass the scorching lava fields and the dangers that lie within.",
                      
                      "Push forward through the searing heat of the lava fields, determined to conquer the formidable obstacle that stands in their path."),
        //Index 3
        adventurePath("As they cautiously move toward the distant light, the dwarves stumble upon a hidden tribe of mountain orcs. Their quest comes to a tragic end, overpowered by the orcish warriors.", "", ""),
        
        //Index 4
        adventurePath("The dwarves proceed into the pitch-black tunnel, unaware of the peril that lurks within. Suddenly, the cave floor crumbles beneath them, leading to their demise in the depths of the chasm.", "", ""),
        
        //Index 5
        adventurePath("The mountain pass leads them directly into the lair of a fearsome dragon, who hungers for dwarf flesh. The dwarves meet a fiery end, becoming a meal for the dragon.", "", ""),
        
        //Index 6 Victory Path
        adventurePath("After enduring the relentless swelter of the lava fields, the dwarves finally reach the entrance of the fabled Golden Gate. With unwavering determination, they establish a new kingdom and thrive for generations, securing their place in the annals of dwarf history.", "", "")
    ]

    
    func setNextPath(_ choice: Int)
    {
        //If at the end of a path then reset the adventure
        if(pathIndex >= 3)
        {
            pathIndex = 0;
        }
        //If first choice update pathIndex to the appropriate childe and return index
        else if(choice == 1)
        {
            pathIndex = 2 * pathIndex + 1
        }
        else
        {
            pathIndex = 2 * pathIndex + 2
        }
    }
    
    func getPathDesc() -> String
    {
        return paths[pathIndex].desc
    }
    func getChoiceOne() -> String
    {
        return paths[pathIndex].path_one
    }
    func getChoiceTwo() -> String
    {
        return paths[pathIndex].path_two
    }
    func getPathIndex() -> Int
    {
        return pathIndex
    }
    func isDeadEnd() -> Bool
    {
        return pathIndex >= 3
    }
    
}
