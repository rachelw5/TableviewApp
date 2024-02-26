//
//  ViewController.swift
//  TableviewApp
//
//  Created by Rachel on 2/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var clothingBrands = [
        Brands("Nike"),
        Brands("Adidas"),
        Brands("Levi's"),
        Brands("Gucci"),
        Brands("Zara"),
        Brands("H&M"),
        Brands("Calvin Klein"),
        Brands("Tommy Hilfiger"),
        Brands("Ralph Lauren"),
        Brands("Under Armour")
    ]
    
    var descriptions = [
        Descriptions("Nike is a multinational corporation known for its athletic footwear, apparel, equipment, and accessories. Founded in 1964 by Bill Bowerman and Phil Knight, Nike has grown to become one of the world's largest suppliers of athletic shoes and apparel, as well as a major manufacturer of sports equipment. The brand is recognized globally for its innovative designs, high-quality products, and iconic logo, the Nike swoosh. Nike sponsors many high-profile athletes and sports teams across various sports, further solidifying its reputation as a leader in the athletic industry. From running shoes to basketball jerseys, Nike offers a wide range of products designed to help athletes of all levels perform at their best."),
        Descriptions("Adidas is a multinational corporation specializing in sports shoes, clothing, and accessories. Founded in 1949 by Adolf Dassler, Adidas has become one of the largest sportswear manufacturers globally. The brand is known for its iconic three-stripe logo, representing quality, innovation, and performance. Adidas offers a wide range of products for various sports, including running, soccer, basketball, and training. With a focus on innovation and sustainability, Adidas continues to push boundaries in sportswear design and technology. The brand sponsors numerous athletes, teams, and events worldwide, reinforcing its commitment to excellence and athleticism. From classic sneakers to cutting-edge performance apparel, Adidas provides athletes and enthusiasts alike with the tools they need to achieve their goals and express their style."),
        Descriptions("Levi Strauss & Co., commonly known as Levi's, is an American clothing company famous for its denim jeans. Established in 1853 by Levi Strauss, the brand has a rich history spanning over a century and a half. Levi's jeans are renowned for their durability, comfort, and timeless style, making them a staple in the fashion industry and popular among people of all ages and backgrounds. The brand's iconic designs, including the classic Levi's 501, have become cultural symbols associated with American fashion and the spirit of individuality. Beyond denim, Levi's offers a wide range of clothing and accessories, including jackets, shirts, skirts, and accessories, all crafted with the same dedication to quality and craftsmanship. With a commitment to sustainability and ethical practices, Levi's continues to innovate while staying true to its heritage, ensuring that each garment reflects the brand's values of authenticity and innovation."),
        Descriptions("Gucci is an Italian luxury fashion brand known for its innovative designs, exceptional craftsmanship, and timeless elegance. Founded in 1921 by Guccio Gucci in Florence, Italy, Gucci has evolved into one of the world's leading luxury fashion houses, renowned for its iconic logo and signature motifs, such as the double-G logo and the horsebit. The brand offers a wide range of products, including ready-to-wear clothing, handbags, shoes, accessories, fragrances, and eyewear, all exuding luxury and sophistication. Gucci's creative direction often blends traditional craftsmanship with modern sensibilities, resulting in collections that are both classic and contemporary. The brand has a rich heritage of collaborating with renowned artists, designers, and celebrities, further solidifying its status as a cultural icon. With a focus on sustainability and social responsibility, Gucci strives to minimize its environmental impact and promote positive change within the fashion industry. From iconic handbags to statement clothing pieces, Gucci embodies luxury, creativity, and Italian craftsmanship at its finest."),
        Descriptions("Zara is a Spanish clothing retailer known for its trendy and affordable fashion offerings. Established in 1975 by Amancio Ortega and Rosalía Mera, Zara has grown into one of the world's largest fashion retailers, with stores in over 90 countries. The brand is renowned for its fast-fashion model, which allows it to quickly respond to changing trends and deliver new collections to stores at a rapid pace. Zara's design philosophy focuses on providing customers with high-quality, stylish clothing and accessories that reflect the latest runway trends at accessible price points. With a diverse range of clothing for men, women, and children, as well as accessories and footwear, Zara caters to a wide audience of fashion-conscious individuals. The brand's stores are known for their sleek and modern interiors, providing customers with an immersive shopping experience. Zara's commitment to innovation, sustainability, and customer satisfaction has made it a global leader in the fast-fashion industry, beloved by fashion enthusiasts worldwide for its on-trend designs and affordable prices."),
        Descriptions("H&M, short for Hennes & Mauritz, is a Swedish multinational clothing retailer known for its fashion-forward yet affordable clothing and accessories. Founded in 1947 by Erling Persson in Västerås, Sweden, H&M has expanded globally and operates in over 70 countries with thousands of stores worldwide. The brand offers a wide range of clothing options for men, women, teenagers, and children, as well as accessories, footwear, and beauty products. H&M is recognized for its ability to quickly adapt to the latest fashion trends and translate them into accessible and stylish collections for its customers. With a focus on sustainability, H&M has implemented various initiatives to reduce its environmental footprint, including using sustainable materials, implementing recycling programs, and promoting ethical labor practices throughout its supply chain. H&M also collaborates with renowned designers and celebrities to create limited-edition collections, making high fashion accessible to a broader audience. With its commitment to fashion, affordability, and sustainability, H&M continues to be a favorite destination for fashion-conscious individuals worldwide."),
        Descriptions("Calvin Klein is an American fashion house known for its iconic designs, minimalist aesthetic, and timeless elegance. Founded in 1968 by Calvin Klein, the brand has become synonymous with modern sophistication and effortless style. Calvin Klein offers a wide range of products, including apparel, accessories, fragrance, and home furnishings, all characterized by clean lines, understated luxury, and impeccable craftsmanship. The brand's iconic logo, featuring the CK initials, has become a symbol of quality and prestige in the fashion industry. Calvin Klein's clothing collections often feature sleek silhouettes, luxurious fabrics, and innovative designs that reflect the brand's commitment to contemporary fashion and urban chic. From classic denim and tailored suits to chic dresses and iconic underwear, Calvin Klein's collections cater to a diverse audience of fashion enthusiasts seeking understated luxury and timeless style. With a legacy of innovation and a dedication to quality, Calvin Klein remains at the forefront of American fashion, inspiring confidence and style in millions of customers worldwide."),
        Descriptions("Tommy Hilfiger is an American fashion brand renowned for its preppy, classic, and all-American style. Founded in 1985 by designer Tommy Hilfiger, the brand quickly rose to prominence for its bold use of color, iconic logo, and distinctive red, white, and blue aesthetic. Tommy Hilfiger offers a wide range of apparel and accessories for men, women, and children, including sportswear, denim, outerwear, footwear, and accessories. The brand's collections often feature a mix of traditional and contemporary elements, blending timeless silhouettes with modern details to create versatile and wearable pieces for everyday life. Tommy Hilfiger is known for its collaborations with pop culture icons and influencers, as well as its support for diversity and inclusivity in fashion. With a focus on quality craftsmanship, attention to detail, and a commitment to sustainability, Tommy Hilfiger continues to be a global leader in American fashion, inspiring people around the world to embrace their individuality and express themselves through style."),
        Descriptions("Ralph Lauren is an American fashion brand synonymous with timeless elegance, luxury, and sophistication. Founded in 1967 by Ralph Lauren, the brand has become a global icon known for its distinctive blend of classic American style and refined European influences. Ralph Lauren offers a wide range of products, including apparel, accessories, fragrance, and home furnishings, all exuding an air of effortless sophistication and refined taste. The brand's collections often feature clean lines, impeccable tailoring, and luxurious fabrics, reflecting Ralph Lauren's commitment to quality craftsmanship and attention to detail. From iconic polo shirts and tailored suits to elegant eveningwear and accessories, Ralph Lauren's designs embody a sense of timeless sophistication and understated luxury. The brand's signature Polo Ralph Lauren line, characterized by its iconic polo player logo, has become a symbol of American style and refinement. With a focus on tradition, innovation, and impeccable style, Ralph Lauren continues to be a leading force in the fashion industry, inspiring confidence and elegance in men and women around the world."),
        Descriptions("Under Armour is an American sports clothing and accessories company founded in 1996 by Kevin Plank. Known for its innovative performance apparel designed to enhance athletes' performance, Under Armour has become a global leader in athletic wear. The brand offers a wide range of products for various sports and activities, including running, training, basketball, golf, and outdoor pursuits. Under Armour's apparel features advanced fabric technologies such as HeatGear, ColdGear, and UA Storm, designed to regulate body temperature, wick away sweat, and provide protection from the elements. With a focus on performance, durability, and style, Under Armour's clothing and footwear are trusted by athletes of all levels worldwide. In addition to apparel, Under Armour also produces accessories such as bags, hats, gloves, and athletic gear, all designed to meet the demands of athletes in their pursuit of excellence. With a commitment to innovation and a passion for sports, Under Armour continues to push boundaries and redefine what is possible in athletic wear.")
    
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clothingBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = clothingBrands[indexPath.row].brand
        cell.contentConfiguration = content
        return cell
    }
    
     func tableview(_ tableview: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dvc = Storyboard.instantiateViewController(withIdentifier: "DescriptionView") as! DescriptionView
         
         dvc.getTitle = clothingBrands[indexPath.row].brand
         dvc.getDescription = descriptions[indexPath.row].description
        
        self.navigationController?.pushViewController(dvc, animated: true)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

