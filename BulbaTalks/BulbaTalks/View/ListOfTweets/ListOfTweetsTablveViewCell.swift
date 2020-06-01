import UIKit

class ListOfTweetsTableViewCell: UITableViewCell {
    // MARK: Properties

    @IBOutlet var userImage: UserImage!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userIdenticalNameLabel: UILabel!
    @IBOutlet var tweetCreatedAtLabel: UILabel!
    @IBOutlet var tweetContentLabel: UILabel!
    @IBOutlet var tweetURLLabel: UILabel!
    @IBOutlet var tweetMediaImageView: TweetMediaImageView!
    @IBOutlet var numberOfCommentsLabel: UILabel!
    @IBOutlet var numberOfRetweetsLabel: UILabel!
    @IBOutlet var numberOfFavouritesLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: Actions

    @IBAction func commentTweet(_: UIButton) {}

    @IBAction func retweet(_: UIButton) {}

    @IBAction func favouriteTweet(_: UIButton) {}
}
