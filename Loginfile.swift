//
//  Loginfile.swift
//  Login
//
//  Created by Likhitha on 23/07/24.
//

import SwiftUI

struct Loginfile: View {
    @StateObject var loginModel: LoginViewModel = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 15) {
                Image(systemName: "triangle")
                    .font(.system(size: 38))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                (Text("Welcome,")
                    .foregroundColor(.black) +
                 Text("\nLogin to continue")
                    .foregroundColor(.gray)
                )
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .padding(.top, 20)
                .padding(.trailing, 15)
                
                Customtextview(hint: "+91 9417138573", text: $loginModel.mobileNo)
                    .padding(.top,50)
                
                Customtextview(hint: "OTP Code", text: $loginModel.otpCode)
                    .padding(.top,30)
                Button (action: loginModel.showOTPField ? loginModel.verifyOTPCode: loginModel.getOTPCode){
                    HStack(spacing: 15){
                        Text(loginModel.showOTPField ? "Verify Code" : "Get Code")
                            .fontWeight(.semibold)
                            .contentTransition(.identity)
                        Image(systemName: "line.diagonal.arrow")
                            .font(.title3)
                            .rotationEffect(.init(degrees: 45))
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal,25)
                    .padding(.vertical)
                    .background{
                        RoundedRectangle(cornerRadius: 10.0, style: .continuous).fill(.black.opacity(0.05))
                    }
                }
            }
            .padding(.leading, 20)
            .padding(.vertical,15)
        }
    }
}

struct Loginfile_Previews: PreviewProvider {
    static  var previews: some View {
        ContentView()
    }
}
