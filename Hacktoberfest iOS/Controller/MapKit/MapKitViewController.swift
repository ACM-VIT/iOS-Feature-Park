//
//  MapKitViewController.swift
//  Hacktoberfest iOS
//
//  Created by Marian König on 28.10.20.
//

import Foundation
import MapKit

final class MapKitViewController: UIViewController {
    
    lazy var mapView: MKMapView = MKMapView(frame: self.view.bounds)
    let berlinCoordinate = CLLocationCoordinate2D(latitude: CLLocationDegrees(52.516275), longitude: CLLocationDegrees(13.377704))

    override func viewDidLoad() {
        self.view.addSubview(mapView)
        self.showBerlinSightAnnotation()
    }
    
    private func showBerlinSightAnnotation(){
        mapView.centerCoordinate = berlinCoordinate
        
        let annotation = MKPointAnnotation()
        annotation.title = "Brandenburger Tor"
        annotation.coordinate = berlinCoordinate
        mapView.addAnnotation(annotation)
    }
}
