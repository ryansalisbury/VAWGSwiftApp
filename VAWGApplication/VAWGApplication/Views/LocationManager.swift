//
//  LocationManagr.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 17/11/2024.
//
import Foundation
import CoreLocation

final class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    @Published var lastKnowLocation: CLLocationCoordinate2D?
    var manager = CLLocationManager()

    func checkLocationAuthorisation() {
        print("LocationManager is called")

        manager.delegate = self
        manager.startUpdatingLocation()

        switch manager.authorizationStatus {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()

        case .restricted:
            print("Location restricted")

        case .denied:
            print("Location enied")

        case .authorizedAlways:
            print("Location always authorised")

        case .authorizedWhenInUse:
            print("Authorised when in use")

        @unknown default:
            print("Location service is disabled")
        }
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorisation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        lastKnowLocation = locations.first?.coordinate
    }
}
