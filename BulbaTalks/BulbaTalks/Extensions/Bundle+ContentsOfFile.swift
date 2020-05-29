import Foundation
import UIKit

extension Bundle {
    /**
     Returns the contents of the file from the current bundle.
     - Parameter fileURL: The path to the file.
     - Returns: The `Data` object with the contents of the file.

        If an invalid URL was provided or the file could not be located
        at the given URL or it is impossible to construct a `Data` object,
        the method returns `nil`.
     */
    func contentsOfFile(at fileURL: URL) -> Data? {
        guard let url = url(forResource: fileURL.lastPathComponent,
                            withExtension: nil) else {
            return nil
        }
        return try? Data(contentsOf: url)
    }

    /**
     Function to get UIImage from resources
     - parameter name: Image name to find the image.
     - parameter completion: A completion handler.
     */
    func getImage(by name: String, completion: (UIImage?) -> Void) {
        let fileURL = URL(fileURLWithPath: name)
        if let data = contentsOfFile(at: fileURL),
            let image = UIImage(data: data) {
            completion(image)
        }
    }
}
