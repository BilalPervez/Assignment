//
//  UIImageViewExtensions.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//


import UIKit

extension UIImageView {
    
    func downloadImage(from URLString: String, with completion: @escaping (_ response: (status: Bool, image: UIImage? ) ) -> Void) {
        guard let url = URL(string: URLString) else {
            completion((status: false, image: nil))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion((status: false, image: nil))
                return
            }
            
            guard let httpURLResponse = response as? HTTPURLResponse,
                  httpURLResponse.statusCode == 200,
                  let data = data else {
                completion((status: false, image: nil))
                return
            }
            
            let image = UIImage(data: data)
            completion((status: true, image: image))
        }.resume()
    }
}
