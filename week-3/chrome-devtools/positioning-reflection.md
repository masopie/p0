# POSITIONING REFLECTION!

![Exercise 1](imgs/Exercise 3.4.1 change the colors Screen Shot 2015-11-05 at 12.26.19 PM.png "change the colors!")
![Exercise 2](imgs/Exercise 3.4.2 column Screen Shot 2015-11-05 at 12.35.35 PM.png "column!")
![Exercise 3](imgs/Exercise 3.4.3 row Screen Shot 2015-11-05 at 12.39.16 PM.png "row!")
![Exercise 4](imgs/Exercise 3.4.4 make equidistant Screen Shot 2015-11-05 at 12.51.39 PM.png "make 'em equidistant!")
![Exercise 5](imgs/Exercise 3.4.5 squares Screen Shot 2015-11-05 at 12.56.03 PM.png "squares!")
![Exercise 6](imgs/Exercise 3.4.6 footer Screen Shot 2015-11-05 at 1.09.35 PM.png "footer!")
![Exercise 7](imgs/Exercise 3.4.7 header Screen Shot 2015-11-05 at 1.19.04 PM.png "header!")
![Exercise 8](imgs/Exercise 3.4.8 sidebar Screen Shot 2015-11-05 at 1.27.24 PM.png "sidebar!")
![Exercise 9](imgs/Exercise 3.4.9 get creative Screen Shot 2015-11-05 at 1.35.53 PM.png "get creative!!!!!!!!!!!!!!!!!!!!!!!!!!!!")


- How can you use Chrome's DevTools inspector to help you format or position elements?
  - Google DevTools lets you look at the "box model" of each element you're playing with so you can expand your understanding of the cause/effect happening with your code minutiae. Plus, it ... well, if I'm remembering correctly here... helps you not screw up multiple elements accidentally by only giving you control over editing & toggling on/off the styling for the HTML element you've selected.

- How can you resize elements on the DOM using CSS?
  - You'd just select the HTML element ("node" in the case of DOM?), click into the frame with its editable/toggleable CSS, and create some *properties* and *values* expressing a size increase or decrease. For example, with a box shape on the page, you'd enter a *height* value of *whatever* and a *width* value of some other *whatever.*

- What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?
  - I'll just go off memory here and not consult my notes.
    - **Absolute:** The element's position is determined based on the edge of the screen. *(OK i actually came back after looking at my notes to add to this. Apparently it's more accurate to say that it positions in relation to its 1st **[?? does this mean, going back upstream from this element, the first one you hit... like, the latest one you typed??]** parent element that DOESN'T have position: static)*
    - **Fixed:** The element stays in its position regardless of what other elements do *or where you go in the window - scrolling and everything!* I found this easiest because it just stuck in my memory instantly - it felt like we were getting secret access via a very easy value to a *super* advanced styling tool with this one.
    - **Static:** The default position the element would take (and where it would be if you DIDNT have positioning!), freed from other element positions.
    - **Relative:** The element's position is based on where it... would have been? This was the hardest for me to grasp and I'm still a little confused about it.

- What are the differences between margin, border, and padding?
  - Starting at the innermost nougat of the "candy bar" of, without exception, *every single HTML element's box shape,* the padding is the caramel that surrounds the content, the border is the chocolate enveloping the content nougat and padding caramel, and the margin is the air & wrapper between one element candy bar and another! *(ok maybe that was a shitty analogy. i'll have to work on that...)*

- What was your impression of this challenge overall? (love, hate, and why?)
  -Love-hate relationship for SURE. However, that may be some fault of my own. **Full disclosure: my partner and I never once reset the code between the challenges' exercises.** Whoops. So I think my "hate" came from often getting SUPER lost in how we found the solutions - what we toggled on/off, what we changed, etc. I did love it though because, as I mentioned in my first answer, we eventually prevailed and after a little review, most of our actions felt intelligible (and I feel like I'm not totally in the dark).