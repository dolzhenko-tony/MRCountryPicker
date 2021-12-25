
import Foundation
import UIKit

open class NibLoadingView: UIView {
    
    @IBOutlet weak var view: UIView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }
    
    fileprivate func nibSetup() {
        backgroundColor = UIColor.clear
        
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        
        addSubview(view)
    }
    
    fileprivate func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return nibView
    }
    
}



public class SwiftCountryView: NibLoadingView {
    
    @IBOutlet public weak var flagImageView: UIImageView!
    @IBOutlet public weak var countryNameLabel: UILabel!
    @IBOutlet public weak var countryCodeLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(_ country: Country, locale: Locale?) {
        if let flag = country.flag {
            flagImageView.layer.borderWidth = 0.5
            flagImageView.layer.borderColor = UIColor.darkGray.cgColor
            flagImageView.layer.cornerRadius = 1
            flagImageView.layer.masksToBounds = true
            flagImageView.image = flag
        }
        
        countryCodeLabel.text = country.phoneCode


        if let code = country.code,
            let locale = locale {
            countryNameLabel.text = locale.localizedString(forRegionCode: code)
        }else{
            countryNameLabel.text = country.name
        }
    }
    
}
