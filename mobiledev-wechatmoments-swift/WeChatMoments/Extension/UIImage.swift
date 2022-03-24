//
//  UIImage.swift
//  WeChatMoments
//


import UIKit

extension UIImage {
    func resize(_ size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        let factor = self.size.width / self.size.height

        self.draw(in: CGRect(x: (size.width - size.height * factor) / 2, y: 0, width: size.height * factor, height: size.height))
        let imageResult = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return imageResult!
    }

    class func from(_ strUrl: String, sizeOfResize: CGSize?, success: @escaping (_ image: UIImage?) -> Void) {
        
        DispatchQueue.global().async {
            let image = URL(string: strUrl).flatMap { url in
                try? Data(contentsOf: url)
            }.flatMap { data in
                UIImage(data: data)
            }
            
            DispatchQueue.main.async {
                success(image)
            }
        }
        
    }

    class func from(_ strUrl: String, sizeOfResize: CGSize?) -> UIImage? {
        return nil
    }
}
