//
//  Injecter.swift
//  WKJSON
//
//  Created by Ashwin Paudel on 2020-07-24.
//

import Foundation
import WebKit

extension WKWebView {
    /** Inject JSON in WKWebView using a String
     */
    public func JSONString(JSONString: String) {
        do {
            let text = JSONString
            WKContentRuleListStore.default().compileContentRuleList(forIdentifier: "ContentBlockingRules",encodedContentRuleList: text) { (contentRuleList, error) in
                print("JSON Working")
                if let error = error {
                    print(error.localizedDescription)
                    print("JSON failed: \(error.localizedDescription)")
                    return
                }
                self.configuration.userContentController.add(contentRuleList!)
            }
        } catch {
            print("JSON failed")
        }
    }
    /** Inject JSON in WKWebView using a File
     */
    public func JSONFile(filePath: String) {
        let path = Bundle.main.path(forResource: filePath, ofType: "json")
        do {
            let text = try String(contentsOfFile: path!, encoding: String.Encoding.utf8)
            WKContentRuleListStore.default().compileContentRuleList(forIdentifier: "ContentBlockingRules",encodedContentRuleList: text) { (contentRuleList, error) in
                print("JSON Working")
                if let error = error {
                    print(error.localizedDescription)
                    print("JSON failed: \(error.localizedDescription)")
                    return
                }
                self.configuration.userContentController.add(contentRuleList!)
            }
        } catch {
            print("JSON failed")
        }
    }
}
