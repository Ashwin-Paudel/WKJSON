# WKJSON
WKJSON is a macOS framework where you can inject a JSON file or string into WKWebview.
With just one line of code, WKJSON makes it easiler to load JSON files/String into your WKWebview

This is a really helpful framework for people who are developing a web browser

# What you can use it for
- Content blockers
- Extensions
- More
# How to use
### Add this code somewhere in the viewDidLoad

```Swift
JSONFile(filePath: String, webView: WKWebView)
// Load a JSON file
```

or 
```Swift
JSONString(JSONString: String, webView: WKWebView)
// Load a JSON String
```
# Contributing
## Developed by Ashwin Paudel (Searche Developer)
If you would like to help me in developing a cocoa web browser using WKWebview, contact me ashwinpdl123@gmail.com
