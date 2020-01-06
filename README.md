# SwiftEssentials

## Features:
- [x] Easily load views and view controllers programmticly
- [x] Directly manipulate extended view propertys in the storyboard
- [x] Easily outsource views and reuse them in the storyboard 
- [x] Organize your code with a simple MVP architecture

#### Add SwiftEssentials to your podfile.
```ruby
pod 'SwiftEssentials', :git => 'https://github.com/Limoo/SwiftEssentials.git'
```

#### Import SwiftEssentials.
```swift
import SwiftEssentials
```

#### Easily load views and view controller with their IBOutlet's.
```swift
//Load a view controller from the main storyboard
let customViewController = MyCustomViewController.loadFromStoryboard()

//Load a view controller from a custom storyboard called 'Settings'
let settingsViewController = SettingsViewController.loadFromStoryboard(identifier: "Settings")

//Load a view. Important to give the variable the explicit type. In this case CustomView
let customView: MyCustomView = MyCustomView.loadFromNib()
```

#### Directly manipulate attributes like corner radius and shadows in the storyboard designer. 
Create a new view in the storyboard and assign one of the current supported UI elements.

```swift
EssentialView
EssentialButton
EssentialImageView
EssentialLabel
EssentialMapView
EssentialTextField
```

#### Reuse views in the storyboard with a single code base.
```swift
@IBDesignable class MyCustomView: ReusableView {
  
    override func nibNameForView() -> String {
        return "CustomView"
    }

}
```

#### Structure your project with a very basic MVP architecture.
```swift
class MyCustomPresenter : BasePresenter { }

class MyCustomViewController: BaseViewController<MyCustomPresenter> {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}
```
