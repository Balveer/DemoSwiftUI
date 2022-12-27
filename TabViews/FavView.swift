//
//  PlayView.swift
//  TabbarDemo
//
//

import SwiftUI



struct FavView: View {
    @State var productArray:[Product] = []
    @EnvironmentObject var user : FavObj
    var body: some View {
        NavigationView {
           // List(productArray, id:\ .id ){ planet in
            VStack (alignment: .center){
                        HStack{
                            
                            AsyncImage(url: URL(string: "" ?? "Title")) { image in
                                       image
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                   } placeholder: {
                                       Image(systemName: "photo")
                                           .imageScale(.large)
                                           .foregroundColor(.gray)
                                   }                           .frame(width: 50.0, height: 50.0)

                            VStack {
                                Text("ProductName: Title")
                            .font(.system(size: 20, weight: .light, design: .default))
                           // Spacer()
                                Text("Price: 0.0")
                                    .font(.system(size: 20, weight: .light, design: .default))
                            }.padding()
                             Spacer()
                           
                        }

            }.navigationTitle("Select List")
        
        }
    }
}

struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView()
    }
}
