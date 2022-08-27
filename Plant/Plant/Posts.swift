//
//  Posts.swift
//  Plant
//
//  Created by Melisa Yılmaz on 27.08.2022.
//

import SwiftUI

struct Post: Identifiable, Hashable { //crucial when there is an custom object in the list
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let url: URL
}

struct PostList {
    
    static let posts =  [
        Post(
            imageName: "branch-leaves",
             title: "herbs",
            description: "Herbs are short-sized plants with soft, green, delicate stems without woody tissues. They complete their life cycle within one or two seasons. Generally, they have few branches or are branchless. These can be easily uprooted from the soil.",
             url: URL(string: "https://www.britannica.com/plant/herb-culinary-and-medicinal-plant")!
        ),
        
        Post(imageName: "branch",
             title: "branch",
             description: "Poppies have lobed or dissected leaves and milky sap. The buds are often nodding and are borne on solitary stalks. The flowers have four to six petals with numerous stamens surrounding the ovary",
       
             url: URL(string: "https://www.britannica.com/science/branch")!
        ),
        
        Post(imageName: "willow2",
             title: "lavender",
             description: "Lavender is a perennial plant that can live up to 20 years, if the conditions are optimum. It is a beautiful aromatic shrub with average height of 2 feet (60 cm). It produces purple flowers, which contain high levels of essential oil. The essential oil of lavender is recognized globally as a respected commodity.",

             url: URL(string: "https://www.britannica.com/plant/lavender")!
        ),
        
        Post(imageName: "flower-pot",
             title: "petals",
             description: "Petals are modified leaves that surround the reproductive parts of flowers. They are often brightly colored or unusually shaped to attract pollinators. All of the petals of a flower are collectively known as the corolla.",
 
             url: URL(string: "https://www.britannica.com/science/petal")!
        ),
        Post(imageName: "tea-leaf",
             title: "tea",
             description: "Tea leaves are also known to have hairy undersides, and there is a central, light green vein running the length of the leaf. The leaves grow on a thick, dark brown fibrous stem. Tea leaves have a bitter taste with herbal, grassy notes and may offer a tannic mouthfeel when steeped.",
       
             url: URL(string: "https://www.britannica.com/plant/tea-plant")!
        ),
        Post(imageName: "willow1",
             title: "willow",
             description: "Willow is one of the fastest growing plants in the world. It can grow 10 feet in height each year. Due to ability to absorb large quantities of water, willow is often planted in flooded areas or areas that need to be drained. Strong, deep and wide root also prevents erosion of the soil.",
      
             url: URL(string: "https://www.britannica.com/plant/willow")!
        ),
        Post(imageName: "parsley",
             title: "parsley",
             description: "Parsley is in the carrot family, and is a biennial, meaning it flowers during its second year of life. Typically, Parsley is cultivated as an annual and harvested for not just the leaves and stems, but also for the root which has a stronger flavor as well as medicinal properties",
  
             url: URL(string: "https://www.britannica.com/plant/parsley")!
        ),
        Post(imageName: "rosemary",
             title: "rosemary",
             description: "Rosemary is a fragrant evergreen herb native to the Mediterranean. It is used as a culinary condiment, to make bodily perfumes, and for its potential health benefits. Rosemary is a member of the mint family Lamiaceae, along with many other herbs, such as oregano, thyme, basil, and lavender.",
    
             url: URL(string: "https://www.britannica.com/plant/rosemary")!
        ),
        Post(imageName: "leaf1",
             title: "leaf",
             description: "A leaf is an above-ground plant organ and it is green. Its main functions are photosynthesis and gas exchange. A leaf is often flat, so it absorbs the most light, and thin, so that the sunlight can get to the chloroplasts in the cells.",
     
             url: URL(string: "https://www.britannica.com/science/leaf-plant-anatomy")!
        ),
        Post(imageName: "olive",
             title: "olive",
             description: "The olive is a vegetable, but a fruit. These trees are believed to have originated from the coast of Mediterranean Sea and Western Asia. The fruit can be green, purple, dark brown, black, and even pink in color.",
         
              url: URL(string: "https://www.britannica.com/plant/olive-plant")!
        ),
        Post(imageName: "leaf",
             title: "betel nut leaf",
             description: "In its most basic form, betel nut is a seed of the Areca catechu, a type of palm tree. It's commonly chewed after being ground up or sliced and wrapped in leaves of the Piper betle vine that have been coated with lime.",
            
             url: URL(string: "https://www.britannica.com/plant/betel-nut")!
        ),
        Post(imageName: "willow",
             title: "silverberry",
             description: "Since silverberry flowers give off a strong aroma, resembling that of cinnamon and vanilla, this plant can be used for flavoring cakes and other desserts. Its drupe-like fruit is ellipsoidal, up to 1 cm long, and set on stems. It is red in color, juicy, and sour, while its taste resembles that of red currants.",
     
             url: URL(string: "https://www.britannica.com/plant/silver-maple")!
        )

    ]


    
    
    
}
