//
//  ViewController.swift
//  MapIntegrationMK
//
//  Created by mayank ranka on 27/04/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var mapView : MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        
        NSLayoutConstraint.activate([
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        
        let latitude : CLLocationDegrees = 18.99523879757293
        let longitude : CLLocationDegrees = 72.82717113551873
        let annotation : MKPointAnnotation! = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        annotation.title = "Nimap Infotech"
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(annotation)
        
        

    }

    
}

