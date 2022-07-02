//
//  InfoPage.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.userContentController.add(WebInterfaceDialogs(), name: "alert")
        
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context)  {
        let url = URL(string:
            "https://firtman.github.io/coffeemasters/webapp"
        )
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    func exectuteJavascript(webView: WKWebView) {
        webView.evaluateJavaScript("alert('hello from Swift')")
    }
    
}

struct InfoPage: View {
    var body: some View {
        HStack {
            WebView()
            Button("click") {
                
            }
        }
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
