# PageTabViewBug
There is a memory issue with TabView and when the configuration (tabViewStyle is used).

```swift
.tabViewStyle(PageTabViewStyle()) // Memory issue
```

If the tabViewStyle configuration is used, the tabs are swippable, when you swipe, you will notice that the memory is increasing at each time, it's never released.
If you removed the tabViewStyle configuration, no issues.
