# WKJSON
WKJSON is a macOS framework where you can inject a JSON file or string into WKWebview.

With just one line of code, WKJSON makes it easiler to load JSON files/String into your WKWebview

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

## Developed by Ashwin Paudel
