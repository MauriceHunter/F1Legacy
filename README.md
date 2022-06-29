# F1Legacy
For the time being this will be my Dev journal.

June 23, 2022:
Initial code has been pushed to GitHub. I find it easier to have something uploaded and ot modify it over time than to publish just one finish product.
Challenges: Initial code has absolutely everythign hardcoded. The primary reason for this is i've wasted enough time trying to figure out the more efficeint way.
As i figure out how to reuse my components i will refactor the code to make it cleaner. I already have a few areas i know i can improve on.

June 27, 2022:
A HUGE success for me in the refactor front. I've struggled for about 2 weeks to figure out how to reuse my PhotoStyling struct. It is a tweak on the Photo Tineted
Shadows code written by Philip Davis (Twt: @philipcdavis). I loved the effect and it was important to me to figure out how to reuse the component for my own needs.
Ultimately it took 2 resources to figure out:
Youtube: "Decoupling SwiftUI Views for Reusability" by azamsharp https://www.youtube.com/watch?v=JTSIb_atM1A
Stackoverflow: Answer by Asperi on the question "Swiftui How to pass a view that takes a parameter to another view that will set the parameter when calling the view" https://stackoverflow.com/questions/65467161/swiftui-how-to-pass-a-view-that-takes-a-parameter-to-another-view-that-will-set
Once i figured out how to reuse the component it was as simple as creating a ForEach loop to create my image. ForEach touchup knowledge was learned from HackingWithSwift https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-views-in-a-loop-using-foreach.

With all great success comes struggle. After i finished my first big refactor i was hit with merge conflicts when trying to push the changes to GitHub.
After struggling for quite a long while to resolve my conflict i ultimately settled on deleting my respository and creating a new one.
Lessons learned from that is to make sure you have a .gitignore file setup when you create your repository. In theory my conflicts should be a nonissue moving forward.

June 28, 2022:
Struggled to figure out exactly how to create the on tap tab view while creating the image. My first thought is ot just make it as part of the loop but my initial attempts have not been successful. I havent figured out how to reference the dictionary by the key yet. Will further explore that during tomorrows efforts.
