//
//  SearchView.swift
//  SwitfUIMovie
//
//  Created by PCSIJMAY (MAYTA GUILLERMO, JORGE LUIS) on 11/19/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

 var crearboton: String = ""
      
//pinocho
struct SearchView2: View {
    
    @ObservedObject var movieListVM = MovieListViewModel()
    
     var body: some View {
        List{
                          ForEach(self.movieListVM.movies) {movie in
                              MovieRowView(movie: movie)
                          }
                      }
    }
     }
struct SearchView: View {
    
    @State var name: String = ""
   @State var view: String = "vista"
   @State var view2: String = ""
   
  
    var body: some View {
        return Group {
                   
               if view  == "vista"{
        VStack{
            TextField("Nombres", text: $name)
        
            

             if view2  == "ver"{
           
                 SearchView2()
                 
                  }
             
            
           
            Button(action:{
                self.cambiarString(name: self.name)
               
                
                               if(self.view2 == "ver")
                               {
                               self.view2 = "ver1"
                               }
                                else
                {
                self.view2 = "ver"
                              }
               
            }){
               
                Text("buscar")
         
                
            }
            

           

        }
            }
          
        
        
    }
}
    

    func cambiarString(name : String)
    {
        peli.self = name
        
    }
    
    
    }


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
