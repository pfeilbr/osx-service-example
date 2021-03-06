## Sample Mac OS X Service

Example Mac OS X service as described in Apple's [Services Implementation Guide](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/SysServices/introduction.html#//apple_ref/doc/uid/10000101-SW1)

This is built as standard osx .app from an Xcode Cocoa app project.  The Info.plist is modified to make it a service and it's product, MacTestApp03.app, is copied to the `~/Library/Services` directory

### Install

Copy this .app build product to `~/Library/Services`

Run the following from Terminal to reload all services

    /System/Library/CoreServices/pbs -dump_pboard

Open TextEdit.  Highlight text.  Visit `TextEdit | Services | My Test Service 02`.  A sound will play

### Technical Details

Refer to Info.plist [NSServices](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/SysServices/Articles/properties.html) key

### Notes

There are two ways to implement a service.  This example as a .app and also as a standalone `.service` bundle.  Please see [Writing a .service bundle](http://www.notesfromandy.com/2013/04/05/writing-a-service-bundle) post for details on a `.service` bundle.
