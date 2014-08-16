iOS-8-Self-Sizing-Collection-View-Cell-Demo
===========================================

An implementation of the self-sizing collection view cells demo seen in the WWDC 2014 talk 226: "What's New in Table and Collection Views".

Uses [Masonry](https://github.com/Masonry/Masonry/) for sugaring auto-layout and [TLIndexPathTools](https://github.com/wtmoose/TLIndexPathTools) for sugaring collection view code.
Uses **[Cocoapods](http://cocoapods.org)** to manage these dependencies, so make sure you have it installed.



How to run
--------------

Check out this repo into a directory of choice, and do:

```bash
pod install
open SelfSizingExperiments.xcworkspace
```

Notes
-----------

I have found that in Xcode 6 beta 5, setting the intrinsic size of the labels to 'Placeholder' doesn't really seem to do anything.
