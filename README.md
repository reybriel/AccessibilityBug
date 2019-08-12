# AccessibilityBug

This project was created to reproduce a bug in Apple VoiceOver.

VoiceOver is unable to read through titles inside table view cells in a bottom to top way, when a disabled person uses rotor for navigation through titles (with swipe down and swipe up gestures) VoiceOver is able to navigate from the top most title to the bottom most one, but it's not able to read the titles backwards.

This project was created for presenting to Apple accessibility engineers at WWDC19.
