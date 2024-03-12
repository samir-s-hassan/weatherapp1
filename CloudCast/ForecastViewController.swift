//
//  ForecastViewController.swift
//  CloudCast
//
//  Created by Samir Hassan on 3/11/24.
//

// Import the UIKit framework
// You're almost always going to need this when your referencing UI elements in your file
import UIKit

// Class declaration, including the name of the class and its subclass (UIViewController)
class ForecastViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var forecastImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!

    // Function override for the view controller
    // This is fired when the view has finished loading for the first time
    override func viewDidLoad() {
        // Some functions require you to call the super class implementation
        // Always read the online documentation to know if you need to
        super.viewDidLoad()
        // Make sure the order of your parameters matches the order of your struct. The compiler will help you out here!
        let fakeData = WeatherForecast(temperature: 25.0,
                                              date: Date(), weatherCode: .partlyCloudy)
        configure(with: fakeData)

    }
    
    private func configure(with forecast: WeatherForecast) {
      forecastImageView.image = forecast.weatherCode.image
      descriptionLabel.text = forecast.weatherCode.description
      temperatureLabel.text = "\(forecast.temperature)°F"
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "MMMM d, yyyy"
      dateLabel.text = dateFormatter.string(from: forecast.date)
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
