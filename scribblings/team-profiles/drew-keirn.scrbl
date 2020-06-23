#lang scribble/manual
@(require "common.rkt"
          2htdp/image)

@(bio "Drew Keirn"
      "drew-keirn.jpg"
      "I'm a rising sophomore in computer science at Purdue and I like Batman.")

@blog{
 @blog-post["Day 1 - 2htdp/image (7/15/19)"]{
  Today I learned how to create images using the 2htdp/image library. Below is the first image I created, the Green Lantern.
  The Batman logo is beyond my abilities lol.
 }
}

@(define (circle-part)
   (overlay
    (circle 28 "solid" "white")
    (circle 50 "solid" (make-color 56 176 72))))
@(define (top-bottom-thingies)
   (overlay
    (rectangle 100 75 "solid" "white")
    (rectangle 100 120 "solid" (make-color 56 176 72))))

@(define (outline)
   (circle 82 "outline" (make-color 56 176 72)))
   
@(overlay
  (overlay
   (circle-part)
   (top-bottom-thingies))
  (outline))

@codeblock{(define (circle-part)
 (overlay
 (circle 28 "solid" "white")
 (circle 50 "solid" (make-color 56 176 72))))

 (define (top-bottom-thingies)
 (overlay
 (rectangle 100 75 "solid" "white")
 (rectangle 100 120 "solid" (make-color 56 176 72))))

 (define (outline)
 (circle 82 "outline" (make-color 56 176 72)))
   
 (overlay
 (overlay
 (circle-part)
 (top-bottom-thingies))
 (outline))}

@blog{
 @blog-post["Day 2 - Intro to Software Engineering (7/16/19)"]{
  Today was my introduction to software engineering. Coding is the first step to software engineering,
  but it is not as important as communication or collaboration.
 }
 @blog-post["Day 3 - Software Engineering Management (7/17/19)"]{
  Today I dove more into the management side of things. I practiced delegating tasks to other engineers
  to maximize efficiency on a project. Also, it helps teach others how tasks are to be accomplished in the future.
 }
 @blog-post["Day 4 - Using Functional Programming for Data Science (7/18/19)"]{
  Today I explored the applications of Racket regarding data science. Specifically, I began teaching myself
  Racket's "plot" library to make graphs.
 }
 @blog-post["Day 5 - More Software Engineering Management (7/19/19)"]{
  Today we continued to assign tasks to the other engineers to contribute to the project.
  I created tickets for the specific tasks that I wanted to get done short-term. I made some dank
  memes using the meme asset library using 2htdp/image so that there is an easy-to-use template for future memes.
 }
 @blog-post["Day 6 - Creating Katas (7/29/19)"]{
  Today I contributed to the repo by creating more game katas. We made a number guessing game
  which guesses what number that the user is thinking of.
 }
 @blog-post["Day 7 - Interview Prep (7/30/19)"]{
  Today we practiced what to do in a coding interview and went over a common interview question. I went up in front
  of the group and attempted the problem interview-style.
 }
 @blog-post["Day 8 - More Interview Prep (7/31/19)"]{
  Today we went over more methods to solve the interview question from yesterday. I also created some fire new memes
  after I fixed the meme kata examples.
 }
 @blog-post["Day 9 - Intro to Scrum (8/1/19)"]{
  Today we did our first stand-up meeting to catch each other up with what we were working on.
  I practiced another interview question on the board.
 }
 @blog-post["Day 10 - AMA (8/2/19)"]{
  Today Stephen held an AMA so that we could ask him questions about software engineering in general
  or pretty much anything we want to know. It was many people's last day so we cleaned up the repo
  so that future project weeks can follow our vision.
 }
 @blog-post["Day 11 - Interview Katas (8/12/19)"]{
  Today we spent the first part of the day review interview questions on the whiteboard.
  Later, we added the solutions to a kata collection.
 }
 @blog-post["Day 12 - More of the same (8/13/19)"]{
  Today was very similar to yesterday. We started off by going over interview questions
  on the whiteboard then worked on some katas after lunch.
 }
 @blog-post["Day 13 - No Internet (8/14/19)"]{
  We didn't have internet today, so we just talked about data structures all day.
 }
 @blog-post["Day 14 - Sick Day (8/15/19)"]{
  I didn't come in today.
 }
 @blog-post["Day 15 - Last Day (8/16/19)"]{
  Today we practiced a couple interview problems then finished up working on katas.
 }
}