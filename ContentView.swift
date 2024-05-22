import SwiftUI

struct ContentView: View {
    var timer: Timer {
        //MARK: Stretch #3 - Part I
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            progressTime += 1
        }
    }
 
    var minutes: String {
        //MARK: Stretch #3 - Part II
        let time = (progressTime % 3600) / 60
        return time < 10 ? "0\(time)" : "\(time)"
    }
    
    var seconds: String {
        //MARK: Stretch #3 - Part III
        let time = progressTime % 60
        return time < 10 ? "0\(time)" : "\(time)"
    }
    
    //MARK: Stretch #3 - Part IV
    
    
    
    
    @State private var progressTime = 0
    @State var myTimer:Timer?

    var body: some View {
        HeaderView()
        NavigationStack {
            //MARK: Stretch #3 - Part V
            Text("\(minutes):\(seconds)")
                .font(.system(size: 100))
                .toolbar { 
                    //MARK: MVP
                    
                    Button("Start"){
                        
                        self.myTimer = timer
                        self.myTimer?.fire()
                    }
                    
                    
                    
                    //MARK: Stretch #1
                    
                    Button("Stop"){
                      
                        self.myTimer?.invalidate()
                       
                        
                        
                    }
                    
                    
                    
                    
                    //MARK: Stretch #2
                    Button("Reset"){
                        
                        self.progressTime = 0
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                }
        } 
        FooterView()
    }
}
