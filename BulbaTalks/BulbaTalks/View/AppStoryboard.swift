import UIKit

/**
 Contains names of application storyboards and provide ability to instantiate
 appropriate view controller.
 */
enum AppStoryboard: String {
    case authorization = "Autorization"

    /**
     Gets a view controller of the specified type that is instantiated from the
     current storyboard.
     - Parameter viewController: Concrete type of the view controller
     to instantiate.
     - Returns: View controller with type of input parameter
     `viewController` or `nil` if the view controller of the specified type
     didn't create.
     */
    func viewController<T: UIViewController>(of viewController: T.Type) -> T? {
        let storyboard = UIStoryboard(name: rawValue, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: viewController.storyboardID) as? T
    }
}