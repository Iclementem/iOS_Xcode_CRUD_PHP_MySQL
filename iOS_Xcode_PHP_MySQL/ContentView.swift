//
//  ContentView.swift
//  iOS_Xcode_PHP_MySQL
//
//  Created by Iván Clemente Moreno on 13/9/22.
//

import SwiftUI
import UIKit

class JsonClass: NSObject {
    
}

struct ContentView: View {
    
    @State var username: String = ""
    @State var surname: String = ""
    @State var mail: String = ""
    
    var body: some View {
        VStack (alignment: .center, spacing: 20) {
            Label("CRUD Swift, PHP, MySQL.",
                          systemImage: "hand.thumbsup.fill")
                        .labelStyle(TitleOnlyLabelStyle())
            Divider()
            
            TextField("Nombre", text: $username)
                .padding(10)
                .overlay(
                     RoundedRectangle(cornerRadius: 8, style: .continuous)
                         .stroke(Color.gray, lineWidth: 1)
                )
                .background(Color .white)
                .padding(.horizontal, 30)
                .padding(.top, 1)
            
            TextField("Apellido", text: $surname)
                .padding(10)
                .overlay(
                     RoundedRectangle(cornerRadius: 8, style: .continuous)
                         .stroke(Color.gray, lineWidth: 1)
                )
                .background(Color .white)
                .padding(.horizontal, 30)
                .padding(.top, 1)
            
            TextField("Correo", text: $mail)
                .padding(10)
                .overlay(
                     RoundedRectangle(cornerRadius: 8, style: .continuous)
                         .stroke(Color.gray, lineWidth: 1)
                )
                .background(Color .white)
                .padding(.horizontal, 30)
                .padding(.top, 1)
            Divider()
            HStack {
                
                Button(action: {
                    print("ACCIÓN")
                }, label: {
                    Text("Buscar")
                })
                    .padding()
                    .background(Color .cyan)
                    .cornerRadius(15)
                    .foregroundColor(Color .white)
                    .frame(maxWidth: .infinity)
                    .clipShape(Capsule())
                
                Button(action: {
                    print("ACCIÓN")
                }, label: {
                    Text("Insertar")
                })
                    .padding()
                    .background(Color .green)
                    .cornerRadius(15)
                    .foregroundColor(Color .white)
                    .frame(maxWidth: .infinity)
            }
            
            HStack {
                Button(action: {
                    print("ACCIÓN")
                }, label: {
                    Text("Modificar")
                })
                    .padding()
                    .background(Color .yellow)
                    .cornerRadius(15)
                    .foregroundColor(Color .black)
                    .frame(maxWidth: .infinity)
                Button(action: {
                    print("ACCIÓN")
                }, label: {
                    Text("Eliminar")
                })
                    .padding()
                    .background(Color .red)
                    .cornerRadius(15)
                    .foregroundColor(Color .white)
                    .frame(maxWidth: .infinity)
            }
                
            
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
