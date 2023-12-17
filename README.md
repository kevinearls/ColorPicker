#  README for module 2 of Kodeco iOS BootCamp
Kevin EARLS
11 December 2024

a) Describe the two size classes in iOS.
  horizontalSizeClass and verticalSizeClass
b) What is Continuous Learning, and why is it important in mobile development?
  Continuous Learning means regularly studying and learning new technologies, or re-learning old ones.  It is extremely important as technology is constantly changing and it is important to stay abreast of changes.  It is also useful to retain things you already know but may be getting rusty on.
c) How can you find out what modifiers a View has?
  You can read the Apple Developer Documentation, or just type a period after the view in the debugger and see what options xcode gives you.
d) What is a breakpoint?
  If you are running an app in the debugger, a breakpoint is somewhere in the code where you want the debugger to stop so you can examine things before continuijng.
e) How can you access environment values in your App?
  Use @Environment.  For example to get the horizontalSizeClass: @Environment(\.horizontalSizeClass) private var horizontalSizeClass
f) How can you determine, in code, if the App is in Dark or Light Mode?
  Use the colorScheme environment variable, i.e.: @Environment(\.colorScheme) var colorScheme
g) Why are magic numbers an issue, and how should you avoid them?
  Magic numbers are an issue because they make code more difficult to update and perhaps understand
h) How can you view your App in Light and Dark Modes simultaneously?
  Define a second preview section with preferredColorScheme(.dark)
  
  #Preview {
  ContentView()
    .preferredColorScheme(.dark)
}

i) Below is an image of the Canvas from Xcode. The Canvas is in selectable mode. Can you explain why the red background does not cover the entire button area?
  Because the background/color was added before the padding()
j) Modifier padding(10) adds padding to the view's top, bottom, left, and right sides. How could a padding of 10 be added to only the left and right sides of the view? The answer for this question should be a short section of code.

          Button {
            // do something here
          } label: {
            Text("Hello")
          }
          .padding(.horizontal, 10)
          .background(.blue)
          
k) Provide two reasons why you would want to extract views.
  To cleanup code and make it easier to read, or to create views that are reusable
l) How can you determine, in code, if the device is in Portrait or Landscape mode?
  By using the Size classes, i.e.:
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    if verticalSizeClass == .regular && horizontalSizeClass == .compact {  // If true we are in portrait mode?

m) What is a literal value?
  A number or string used directly, such as "hello" in Text("hello") or 42 in .frame(width: 42) are literals.
o) What are the safe areas?
  Areas on the iPhone screen that an application normally shouldn't write to, such as the notch
p) This line of code was in the lesson on animation. Can you state in English what the line means?
.frame(width: wideShapes ? 200 : 100)
  If the value wideShapes is true the frame width will be set to 200, otherwise it will be set to 100
q) Describe the two transitions you were introduced to in this week’s lesson.
  When the leaderboard comes on and off the screen, and when the dialog opens (ad closes) after clicking on the HitMe button
r) In Bullseye, the Game struct is what type of object?
  A model object
s) What are SFSymbols?
    SFSymbols is a collection of images provided by Apple which can be used in SwiftUI just by specifying the image name in certain function calls.
t) What is the difference between “step into” and “step over " in the debugger?”
    If your app is at a point where it is going to call a function, step into will enter the function and stop at the first line of code.  Step over will execute the function and leave you at the next line after it is called.
u) Name some items you would place in the Asset Catalog (Assets.)
     Colors your want to use in the app, an icon for it, and images
v) How do you change the Display Name of your app?
     In xCode in the project navigator click on the project name, then click on the project name under targets.  Select the general tab, and then set the name in the DisplayName field. 



