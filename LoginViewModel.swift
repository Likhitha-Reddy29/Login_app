//
//  LoginViewModel.swift
//  Login
//
//  Created by Likhitha on 23/07/24.
//

import SwiftUI
import Firebase

class LoginViewModel: ObservableObject {
    @Published var mobileNo: String = " "
    @Published var otpCode: String = " "
    @Published var CLIENT_CODE: String = " "
    @Published var showOTPField: Bool = false
    
    func getOTPCode(){
        
    }
    
    func verifyOTPCode(){
    }
}
