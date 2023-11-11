//
//  ContentView.swift
//  MisDonaciones
//
//  Created by Jatziri on 07/11/23.
//

import SwiftUI

struct TweetVieww: View {
    @State var showMenu: Bool = false
    @State var currentTab = "Home"
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    @GestureState var gesturOffset: CGFloat = 0
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        let sideBarWidth = getRect().width - 90
        
        NavigationView{
            HStack{
                //marca de sideMenu
                SideMenu(showMenu: $showMenu)
                VStack{
                    TabView(selection: $currentTab){
                        //marca: home view
                        HomeView(showMenu: $showMenu)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Home")
                        
                        Text("Search")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Search")
                        
                        Text("Notifications")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Notifications")
                        
                        Text("Mensajes")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Mensajes")
                    }
                    VStack{
                        Divider()
                        HStack{
                            TabButton(image: "Home")
                            TabButton(image: "Search")
                            TabButton(image: "Notifications")
                            TabButton(image: "Mensajes")
                            
                        }
                        .padding(.top,15)
                        .padding(.bottom,safeArea().bottom == 0 ? 15 : 0)
                    }
                }
                .frame(width: getRect().width)
                .overlay(
                    Rectangle()
                        .fill(Color.primary.opacity(Double((offset / sideBarWidth ) / 5 )))
                        .ignoresSafeArea(.container,edges: .vertical)
                        .onTapGesture {
                            withAnimation{
                                showMenu.toggle()
                            }
                        }
                )
            }
            .frame(width: getRect().width + sideBarWidth)
            .offset(x: -sideBarWidth / 2)
            .offset(x: offset > 0 ? offset : 0)
            .gesture(
                DragGesture()
                    .updating($gesturOffset, body: { value, out, _ in
                        out = value.translation.width
                    })
                    .onEnded(onEnd(value:))
            )
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .animation(.easeOut, value: offset == 0)
        .onChange(of: showMenu){ newValue in
            if showMenu && offset == 0 {
                offset = sideBarWidth
                lastStoredOffset = offset
            }
            
            if !showMenu && offset == sideBarWidth{
                offset = 0
                lastStoredOffset = 0
            }
        }
        .onChange(of: gesturOffset) { newValue in
            onChange()
            }
        }
    func onChange() {
        let sideBarWhidth = getRect().width - 90
        offset = (gesturOffset != 0) ? ((gesturOffset + lastStoredOffset) < 
                                        sideBarWhidth ? (gesturOffset + lastStoredOffset) : offset) : offset
        offset = (gesturOffset + lastStoredOffset) > 0 ? offset : 0
    }
    func onEnd(value: DragGesture.Value){
        let sideBarWhidth = getRect().width - 90
        let translation = value.translation.width
        
        withAnimation{
            if translation > 0 {
                if translation > (sideBarWhidth / 2 ){
                    offset = sideBarWhidth
                    showMenu = true
                }else{
                    if offset == sideBarWhidth || showMenu{
                        return
                    }
                    offset = 0
                    showMenu = false
                }
            }else{
                if -translation > (sideBarWhidth / 2){
                    offset = 0
                    showMenu = false
                }else{
                    if offset == 0 || !showMenu{
                        return
                    }
                    offset = sideBarWhidth
                    showMenu = true
                }
            }
        }
        lastStoredOffset = offset
    }

    @ViewBuilder
    func TabButton (image:String)->some View{
        Button(action: {
            withAnimation{currentTab = image}
        }, label: {
            Image(image)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 23, height: 22)
                .foregroundColor(currentTab == image ? .primary : .gray)
                .frame(maxWidth: .infinity)
        })
    }
}
struct TweetVieww_Previews: PreviewProvider{
    static var previews: some View{
        TweetVieww()
    }
}
extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
    func safeArea()->UIEdgeInsets{
        let null = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        guard let screen =
                UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return null
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return null
        }
        return safeArea
    }
}
