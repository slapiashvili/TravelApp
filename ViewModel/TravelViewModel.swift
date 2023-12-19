//
//  TravelViewModel.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI


class TravelViewModel: ObservableObject {
    
    @Published var destinations: [TravelDestination] = [
        
        TravelDestination(name: "Queenstown", imageName: "queenstown", description: "Nestled in the stunning landscapes of New Zealand, Queenstown is an adventure lover's paradise. Surrounded by the Southern Alps and Lake Wakatipu, the town offers breathtaking views at every turn. Known as the 'Adventure Capital of the World,' Queenstown boasts a wide range of outdoor activities, from bungee jumping and skiing to hiking and jet boating. Explore the charming town center, dine in waterfront restaurants, and experience the vibrant nightlife. Queenstown is also a gateway to the Fiordland National Park, known for its fjords and native wildlife. Whether you seek adrenaline-pumping adventures or tranquil moments in nature, Queenstown has it all.", transportInfo: "Queenstown offers reliable public buses, but renting a car allows for easy exploration of nearby attractions. Water taxis and ferries on Lake Wakatipu provide stunning scenic routes.", mustSeeInfo: "Take the Skyline Gondola for panoramic views, explore the historic gold-mining town of Arrowtown, and embark on an adventurous jet boat ride on the Shotover River.", hotelInfo: "Experience lakeside luxury at Eichardt's Private Hotel or enjoy a mountain retreat at Azur Lodge."),
        
        TravelDestination(name: "Cape Town", imageName: "capetown", description: "Cape Town, nestled beneath the iconic Table Mountain, is a city of diverse landscapes, rich history, and vibrant culture. Explore the Cape Peninsula's pristine beaches, visit the historic Robben Island, and take a cable car to the top of Table Mountain for panoramic views. The city's colorful neighborhoods, like Bo-Kaap, showcase its multicultural heritage. Indulge in world-class wines in the nearby Cape Winelands and savor delicious South African cuisine. Cape Town offers a perfect blend of outdoor adventures, cultural experiences, and culinary delights, making it a must-visit destination on the African continent.", transportInfo: "Cape Town's MyCiTi Bus System and Uber make transportation convenient. The Table Mountain Aerial Cableway offers breathtaking views.", mustSeeInfo: "Visit the historic Robben Island, explore the colorful Bo-Kaap neighborhood, and hike or take the cable car up Table Mountain.", hotelInfo: "Enjoy waterfront elegance at The Silo Hotel or experience luxury at Ellerman House overlooking the Atlantic Ocean."),
        
        TravelDestination(name: "Banff", imageName: "banff", description: "Banff, located in the Canadian Rockies, is a breathtaking destination known for its pristine alpine landscapes and outdoor adventures. Banff National Park, a UNESCO World Heritage site, offers hiking trails, turquoise lakes, and stunning mountain vistas. Explore the charming town of Banff, with its boutique shops and cozy cafes. Lake Louise, with its emerald waters, and Moraine Lake, surrounded by towering peaks, are iconic attractions. In winter, Banff transforms into a winter wonderland, attracting skiers and snowboarders. The Fairmont Banff Springs Hotel adds a touch of luxury to the rugged surroundings. Whether you're exploring the wilderness or enjoying the town's hospitality, Banff promises an unforgettable experience.", transportInfo: "Transport Info for Banff: Roam around Banff National Park with the local Roam Transit or rent a car for flexibility. Shuttle services are available for transportation to popular attractions. ", mustSeeInfo: "xplore the stunning Lake Louise and Moraine Lake, hike Johnston Canyon, and stroll through the charming town of Banff.", hotelInfo: "Stay in the iconic Fairmont Banff Springs Hotel for a luxurious mountain retreat or choose the contemporary Moose Hotel & Suites."),
        
        TravelDestination(name: "Amalfi Coast", imageName: "amalfi", description: "The Amalfi Coast, a picturesque stretch along the southern coast of Italy, is a captivating destination with its colorful cliffside villages and stunning Mediterranean views. From Positano to Amalfi and Ravello, each town offers unique charm and architectural beauty. Explore the narrow streets, visit historic cathedrals, and indulge in delicious Italian cuisine. The dramatic landscapes, dotted with lemon groves and vineyards, create a perfect backdrop for leisurely strolls. Enjoy a boat ride along the coastline, discovering hidden coves and pristine beaches. The Amalfi Coast, with its timeless elegance and coastal allure, is a true gem of the Italian Riviera.", transportInfo: "Navigate the winding coastal roads with local buses or hire a private driver for a more relaxed journey. Ferries connect the coastal towns, providing scenic views of the Mediterranean. ", mustSeeInfo: "Visit the enchanting Positano, explore the historic Amalfi Cathedral, and enjoy panoramic views from Villa Rufolo in Ravello.", hotelInfo: "Experience coastal luxury at Belmond Hotel Caruso or indulge in a cliffside retreat at Monastero Santa Rosa Hotel & Spa."),
        
        TravelDestination(name: "Istanbul", imageName: "istanbul", description: "Istanbul, a city that straddles two continents, is a mesmerizing blend of East and West. With its rich history, stunning architecture, and vibrant culture, Istanbul offers a unique travel experience. Visit the iconic Hagia Sophia, explore the grand Topkapi Palace, and marvel at the intricate tiles of the Blue Mosque. Wander through the historic Grand Bazaar, where you can find everything from spices to carpets. Take a cruise along the Bosphorus to appreciate the city's skyline. Indulge in Turkish delights, kebabs, and traditional Turkish tea. Istanbul's dynamic energy, reflected in its bustling markets and lively streets, makes it a must-visit destination.", transportInfo: "Istanbul's efficient public transportation includes trams, buses, and ferries. Explore the historic areas on foot, and take a Bosphorus cruise for a unique perspective. ", mustSeeInfo: "Visit the iconic Hagia Sophia, explore the Grand Bazaar, and take a relaxing stroll in the Topkapi Palace gardens. ", hotelInfo: "Enjoy a blend of modern luxury and Ottoman elegance at the Ciragan Palace Kempinski or experience historic charm at the Four Seasons Hotel Istanbul at Sultanahmet."),
        
        TravelDestination(name: "Machu Picchu", imageName: "machupicchu", description: "Machu Picchu, the ancient Incan citadel nestled in the Andes Mountains, is one of the world's most iconic archaeological sites. Built in the 15th century, this UNESCO World Heritage site offers a glimpse into the advanced engineering and architectural skills of the Inca civilization. Surrounded by breathtaking mountain scenery, Machu Picchu is a marvel of stone terraces, temples, and plazas. Hike the Inca Trail to reach the site, or take a scenic train journey to the nearby town of Aguas Calientes. As you explore the ruins, feel the mystical aura of this extraordinary site, where history and nature converge in an unforgettable journey.", transportInfo: "Reach Machu Picchu by hiking the Inca Trail or take a scenic train journey to Aguas Calientes. Shuttle buses transport visitors from Aguas Calientes to the entrance of Machu Picchu. ", mustSeeInfo: "Explore the Temple of the Sun, hike to the Inca Bridge, and witness the sunrise from the Inti Punku (Sun Gate). ", hotelInfo: "Stay at the Belmond Sanctuary Lodge for unrivaled proximity to Machu Picchu or choose Inkaterra Machu Picchu Pueblo Hotel for a unique experience surrounded by nature.")
    ]
    
    let travelTips: [String] = [
        
        "Don't forget to double-check what kind of charger you need for your travel destination.",
        "Pack essential documents in a travel pouch for easy access.",
        "Learn a few local phrases to enhance your travel experience.",
        "Scan and save important documents, such as your passport and travel insurance, in a secure cloud storage app.",
        "Pack a small first aid kit with essentials like pain relievers, band-aids, and any necessary prescription medications.",
        "Inform your bank about your travel dates to avoid potential issues with using your credit/debit cards abroad.",
        "Research local customs and etiquette to show respect for the culture of your destination.",
        "Invest in a portable phone charger to keep your devices powered during long days of exploration.",
        "Pack a reusable water bottle to stay hydrated and reduce single-use plastic waste.",
        "Take a photo of your luggage and its tag before departure for easy identification in case it gets lost."
        
    ]
    
    func randomTravelTip() -> String {
        return travelTips.randomElement() ?? "No travel tips available."
    }
    
}



