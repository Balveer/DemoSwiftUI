//
//  PlanetDetailView.swift
//  TabbarDemo
//
//

import SwiftUI

struct ProductDetailView: View {
    var selectedTitle : String
    var selectedPrice : String
    var selectedImage : String
    var selectedRating : String
    var selectID : String
    var body: some View {
        VStack(alignment: .center){
//            Image(systemName: "house")
//                    .resizable()
//                    .frame(width: 50.0, height: 50.0)
            
            AsyncImage(url: URL(string:selectedImage)) { image in
                       image
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                   } placeholder: {
                       Image(systemName: "photo")
                           .imageScale(.large)
                           .foregroundColor(.gray)
                   }                           .frame(width: 100.0, height: 100.0)

            HStack{
            
                VStack(alignment: .leading){
                Text("Product Name : \(selectedTitle)")
                   // .font(.title)
                .font(.system(size: 20, weight: .light, design: .default))
                Text("price : \(selectedPrice)")
                        .font(.system(size: 20, weight: .light, design: .default))
                    HStack{
                        Text("Rating : \(selectedRating)" )
                    Image(systemName: "star")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                    Image(systemName: "star")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                    Image(systemName: "star")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                    Image(systemName: "star")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                    Image(systemName: "star")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                    }
                }.padding()
            }
            
            Spacer()
        }

    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(selectedTitle: "Earth", selectedPrice: "Earth", selectedImage: "", selectedRating: "Earth", selectID: "")
    }
}




class ProductID : ObservableObject{
    @Published var id:String = String()
}
