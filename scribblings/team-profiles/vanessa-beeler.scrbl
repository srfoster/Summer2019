#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-code-no-peeking.rkt"
          "../new-tactics/no-peeking.rkt"
          2htdp/image)

@(bio "Vanessa Beeler" 
      "vanessa_picture_new.png"
      "I started coding my senior year of high school in AP Computer Science. I just
       finished the intro series of CS classes during my freshman year at Cal Poly SLO.
       I know Python as well as a little bit of Java.")

@(define face (circle 100 "solid" "gold"))
@(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
@(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))

@blog{

@blog-post["Personal Philosophy"]{
I think coding should be used in the future to streamline the process of performing trivial
tasks in such a way that they no longer need to be done by humans. Once people are
no longer required to perform these time-consuming activities, they will be able to
focus their attention on more difficult tasks and solely focus on creating a better
society for everyone to live in. Personally, I would like to contribute to this process
as much as possible within my career. People should be able to focus on things that they
love instead of chore-like activities.
}
      
@blog-post["Day 1"]{
                    
Distributed Cognition

On our first day of the internship, we researched Distributed Cognition. To the
best of my understanding, DCog is the idea that each individual's mind is not
the full extent of their knowledge. Each person works together with their
environment to add to their own cognition and ideas. Currently, it
is possibly becoming less important to be able to remember everything yourself,
as it is becoming easier and easier to use the Internet or other resources to
look up any topics you are curious about or have learned about previously but
forgot.
Here are a few links that I used to learn about the topic:

@url{http://edutechwiki.unige.ch/en/Distributed_cognition}
@url{https://www.learning-theories.com/distributed-cognition-dcog.html}
}

@blog-post["Day 2"]{
Recognition vs. Recall vs. Fluency

Today, we learned about recall vs. recognition. We applied our knowledge of this
by playing an ASL memory game. We learned that we were able to recall symbols that
were either the most unique or relevant to use. Eventually, by playing the game
for a few rounds, we were able to recognize more symbols. We also learned about
how fluency is the highest level of recall.
}

@blog-post["Day 3"]{
Refactoring, Broca's Region, fMRI Studies

Refactoring is the process of reorganizing existing computer code without changing any external code. 
The Broca's Region is the area of the brain responsible for speech formation. It is located in the frontal
lobe of the dominant hemisphere. fMRI is a type of imaging that measures brain activity by detecting changes
related to blood flow.}


@blog-post["Day 4"]{
New Tactic

We made a variation of the Disintegrating Code tactic by requiring students to not look at their keyboards
while typing. This reinforces and strengthens a student's ability to type, which is clearly a very
important skill in the realm of coding. Other than this relatively small detail, the overall structure of
the tactic is the same as disintegrating code. 

DISINTEGRATING CODE (NO PEEKING VERSION)

@(no-peeking)
}

@blog-post["Day 5"]{
New Kata

Today we worked on making a new kata for the kids to work on, using the fundamentals language. Below is the code
for the kata that we made, which makes an emoji that is rolling its eyes.

@verbatim{(define face (circle 100 "solid" "gold"))
(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))
(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))}

@(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))
}

@blog-post["Day 6"]{
Today we worked with 2htdp/universe in order to animate our images.
}

@blog-post["Day 7"]{
Today we continued working with 2htdp/universe, making animations with objects of our choosing. Below is the code
that I wrote for a polygon that looks like a flower to continually change colors between those in the rainbow, which
travels in a circle.

@verbatim{(define (shape tick)
  (overlay/offset (pulled-regular-polygon 50 5 1 140 "solid" (find-color tick)) (find-x tick) (find-y tick)
              (square 400 "solid" "white")))

(define (find-color tick)
  (cond ((< (modulo tick 60) 10) "red")
        ((< (modulo tick 60) 20) "orange")
        ((< (modulo tick 60) 30) "yellow")
        ((< (modulo tick 60) 40) "green")
        ((< (modulo tick 60) 50) "blue")
        ("purple")))

(define (find-x tick)
  (* 100 (cos (* .1 tick))))

(define (find-y tick)
  (* 100 (sin (* .1 tick))))

(big-bang 0
  (on-tick add1)
  (to-draw shape))}
}
@blog-post["Day 8"]{
Today we worked on a coding interview question at the beginning of the day, and then Charbel and I started working on making
a snake game as a new kata. We planned out several intermediate katas before the final step of making the classic game Snake.
As for coding, we only got through the first and second snake katas today, and plan to do more on future days. Below is the
code for the first snake kata:

@verbatim{(define (create-snake time)
(place-image (square 30 "solid" "green")
            300 300
            (empty-scene 600 600)))

(big-bang 0
  (on-tick add1)
  (to-draw create-snake))}

This is the code for the second snake kata:

@verbatim{(define direction #t)

(define (spinning-rectangle state)
(if direction
(place-image
(square 30 "solid" "green")
(modulo (* 5 state) 200)
100
(empty-scene 200 200))
(place-image
(square 30 "solid" "green")
(- 200 (modulo (* 5 state) 200))
100
(empty-scene 200 200))))

(big-bang 0
(on-tick add1)
(to-draw spinning-rectangle 200 200))}

}

@blog-post["Day 9"]{
Today we started again with the coding interview questions from yesterday. The first one was "write code to remove
duplicates from a singly linked list," and the second question was "write code to find the kth-to-last element from
a singly linked list." I almost finished these questions yesterday, and finally got it all working today. I also
had the chance to write my code on the whiteboard as if I was in an actual coding interview. Below is the code that
I wrote in Python to answer both questions:

@verbatim{
class Node:
    def __init__(self, key):
        self.key = key
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def display(self):
        temp = self.head
        while temp:
            print(temp.key, end = " ")
            temp = temp.next

    def create_list(self, data):
        if data[0]:
            self.head = Node(data[0])
        temp = self.head
        for i in range(1, len(data)):
            temp.next = Node(data[i])
            temp = temp.next

    def kth_to_last(self, k):
        temp = self.head
        other = temp.next
        try:
            for i in range(k):
                other = other.next
        except:
            print("There are less than", k, "elements in the list.")
            return
        while other:
            temp = temp.next
            other = other.next
        print(temp.key)

    def remove_duplicates(self):
        temp = self.head
        if temp is None:
            return
        comp = temp.next
        i = 0
        j = 1
        while temp:
            while comp:
                if temp.key == comp.key:
                    comp = comp.next
                    new = self.head
                    index = 0
                    while index < j - 1:
                        new = new.next
                        index += 1
                    new.next = comp
                    j += 1
                else:
                    comp = comp.next
                    j += 1
            temp = temp.next
            try:
                comp = temp.next
            except:
                return
            i += 1
            j = i + 1
        return self

LL = LinkedList()
LL.create_list([1, 2, 5, 3, 6, 3])
LL.remove_duplicates()
LL.display()}

Additionally, me and Charbel finished the third kata today for our snake game. This kata involves the "snake" continually moving
in a certain direction, which can be changed by the arrow keys. The code is below:

@verbatim{(require 2htdp/image
         2htdp/universe)

(struct posn (x y))
(struct snake (dir posn))

(define starter-snake
  (snake "up" (posn 300 300)))

(define (add-posns p1 p2)
  (posn
   (+ (posn-x p1) (posn-x p2))
   (+ (posn-y p1) (posn-y p2))))

(define (update-direction s direction)
 (define newsnake (struct-copy snake
              s
              [dir direction]))
  (move-snake newsnake))

(define (change-dir s key)
   (cond
   [(key=? key "left")  (update-direction s "left")]
   [(key=? key "right") (update-direction s "right")]
   [(key=? key "up")   (update-direction s "up")]
   [(key=? key "down") (update-direction s "down")]
   [else s]))

(define (move-snake-in-direction s p)
  (struct-copy snake s
               [posn (add-posns p (snake-posn s))]))

(define (move-snake s)
  (define dir (snake-dir s))
  (cond
    [(string=? dir "up") (move-snake-in-direction s (posn 0 -4))]
    [(string=? dir "down") (move-snake-in-direction s (posn 0 4))]
    [(string=? dir "left") (move-snake-in-direction s (posn -4 0))]
    [(string=? dir "right") (move-snake-in-direction s (posn 4 0))]    
    [else s]))

(define (render s)
  (define p (snake-posn s))
  (place-image (circle 10 'solid 'red)
               (posn-x p) (posn-y p)
               (empty-scene 600 600)))

(big-bang starter-snake
  (on-tick move-snake)
  (on-key change-dir)
  (to-draw render))}
}

@blog-post["Day 10"]{
The wifi was out pretty much all day today, so we mostly worked on more coding interview challenges, and shared our work with
others. Along with learning a bit about programming in racket, we also worked on questions such as adding two numbers stored
as linked lists whose digits are reversed, and determining if two lists intersect. I finished the code for adding two numbers,
which is below:

@verbatim{
def add_digits(L1, L2):
    temp1 = L1.head
    temp2 = L2.head
    final = LinkedList()
    next_node_partial = 0
    while temp1 and temp2:
        digit = temp1.key + temp2.key
        new_node_key = digit % 10
        final.add_key(new_node_key + next_node_partial)
        next_node_partial = digit // 10
        temp1 = temp1.next
        temp2 = temp2.next
    while temp1:
        final.add_key(temp1.key + next_node_partial)
        next_node_partial = 0
        temp1 = temp1.next
    while temp2:
        final.add_key(temp2.key + next_node_partial)
        next_node_partial = 0
        temp2 = temp2.next
    final.display()}

For determining if two lists intersect, I was a little bit stumped at first, because I could think of an O(n^2)
implementation pretty easily by comparing every node, but Stephen said there was a better way. Eventually I realized that two
intersecting lists would have to have the same ending node. Then we were eventually given a hint that we could add a field
to the nodes which would say if the node had been visited or not, which made the challenge a lot easier. Here is my code:

@verbatim{
def intersect(L1, L2):
    if L1.head:
        temp1 = L1.head
        while temp1:
            temp1.visited = True
            temp1 = temp1.next
        if L2.head:
            temp2 = L2.head
            while temp2:
                if temp2.visited == True:
                    print("THEY INTERSECT")
                    return temp2
                temp2 = temp2.next
    print("THEY DO NOT INTERSECT")
    return False}                    
}

@blog-post["Day 11"]{
Today we worked on coding interview questions again for the first few hours of the day. After temporarily giving up yesterday on the binary tree depth traversal
challenge, I worked on and finished four easier challenges that Stephen had put up for today. The first one I put within the Linked List class, and the rest are
defined outside of any classes:

@verbatim{
   def average(self):
        if not self.head:
            return
        temp = self.head
        total = 0
        amount = 0
        while temp:
            total += temp.key
            temp = temp.next
            amount += 1
        return total / amount

def longest_string(list_strings):
    if list_strings == []:
        return
    longest = list_strings[0]
    cur_length = len(list_strings[0])
    for index in range(1, len(list_strings)):
        if len(list_strings[index]) > cur_length:
            longest = list_strings[index]
            cur_length = len(list_strings[index])
    return longest

def apple(list_strings):
    if list_strings == []:
        return
    for index in range(len(list_strings)):
        if list_strings[index] == "apple":
            return True
    return False

def range_func(num):
    if num <= 0:
        return
    counter = 0
    list_range = []
    while counter < num:
        list_range.append(counter)
        counter += 1
    return list_range}

After finishing these functions, I decided to go back to the Binary Search Tree traversal because I had some extra time. Eventually, I figured it out, although
I know that my implementation could definitely be improved upon.

@verbatim{
   def level_traversal(self):
        if not self.root:
            return
        temp = self.root
        q = Queue()
        q.enqueue(temp)
        temp.level = level = 0
        all_levels = []
        while q.items:
            cur_level = []
            while q.items and q.items[len(q.items) - 1].level == level:
                temp = q.dequeue()
                if temp.left:
                    temp.left.level = temp.level + 1
                if temp.right:
                    temp.right.level = temp.level + 1
                cur_level.append(temp.key)
                if temp.left:
                    q.enqueue(temp.left)
                if temp.right:
                    q.enqueue(temp.right)
            level += 1
            all_levels.append(cur_level)
        return all_levels}

During the last part of today (after lunch), I worked on a bonus problem that Stephen had on the board, which was to write a function returning the height of a
binary tree. Here is the code that I wrote:

@verbatim{
   def height(self):
        temp = self.root
        s = []
        s.append((temp, 0))
        cur_max_height = 0
        while len(s) != 0:
            temp = s.pop(
            if temp[0].left:
                s.append((temp[0].left, temp[1] + 1))
            if temp[0].right:
                s.append((temp[0].right, temp[1] + 1))
            if temp[1] > cur_max_height:
                cur_max_height = temp[1]
        return cur_max_height}
}

@blog-post["Day 12"]{
At the beginning of the day today we read an article about LISP, and then discussed it for a while and talked about the significance of macros within the language,
and programmed our own simple macro in Racket. After that, Charbel and I updated the main page of the games kata on the website so that its purpose is clearer to
new viewers. Once we finished organizing the page, I went back to a coding challenge that was written on the whiteboard, which was to write a function that sorts
numbers in a stack (without using any other data structures, except for more stacks). Here is my code for this challenge:

@verbatim{
def sort_stack(s):
    b = Stack()
    final = Stack()
    final.push(s.pop())
    while not s.isEmpty():
        cur_val = s.pop()
        if cur_val <= final.peek():
            final.push(cur_val)
        else:
            while final.peek() and cur_val > final.peek():
                b.push(final.pop())
            final.push(cur_val)
            while not b.isEmpty():
                final.push(b.pop())
    return final}
}

@blog-post["Day 13"]{
Today we started with a coding warmup, in which we had the choice between an easy, medium, and hard problem. Since I had done
all three of these challenges the week before, I simply updated my code from before and tried to make the implementation
better. I then went up and presented my code on the board. After lunch, we then chose new kata collections to work on in pairs,
and Drew and I chose to work on coding interview questions using lists/arrays from data structures and algorithms. Here is
my updated algorithm for determining where two linked lists intersect:

@verbatim{
def intersect(L1, L2):
    visited = []
    if L1.head:
        temp1 = L1.head
        while temp1:
            visited.append(temp1)
            temp1 = temp1.next
        if L2.head:
            temp2 = L2.head
            while temp2:
                if temp2 in visited:
                    return temp2
                temp2 = temp2.next
    return}
}

@blog-post["Day 14"]{
Today we started with warmup coding interview questions, like usual, and I worked on a better algorithm for the intersecting
nodes function. While the code itself may be longer, it has a runtime of O(n) instead of O(n^2):

@verbatim{
def intersect_better(L1, L2):
    if L1.head and L2.head:
        temp1 = L1.head
        temp2 = L2.head
        len1, len2 = 1, 1
        while temp1.next:
            temp1 = temp1.next
            len1 += 1
        while temp2.next:
            temp2 = temp2.next
            len2 += 1
        i, j = 0, 0
        if len1 > len2:
            i = len1 - len2
        elif len1 < len2:
            j = len2 - len1
        temp1 = L1.head
        temp2 = L2.head
        while i > 0:
            temp1 = temp1.next
            i -= 1
        while j > 0:
            temp2 = temp2.next
            j -= 1
        while temp1 and temp2:
            if temp1 == temp2:
                return temp1.key
            temp1 = temp1.next
            temp2 = temp2.next
    return}

We were also asked to write one line of code for the "easy" task today, which was to add corresponding elements of lists of
the same size to create one list with the all of the additions. For this, I used list comprehension:

@verbatim{
newlist = [list1[index] + list2[index] for index in range(len(list1))]}

After finishing these warmup problems, we began working on our kata collections again. We made some progress with updating the
main scribble files to include the interview katas, and added a few kata examples. 
}

@blog-post["Day 15"]{
Today we had no wifi, so we did several extra coding challenges. Below is some of my code from the day:

@verbatim{
def reachable(graph, node1, node2):
    q = Queue()
    visited = []
    q.enqueue(node1)
    while not q.isEmpty():
        first = q.dequeue()
        if first == node2:
            return True
        visited.append(first)
        for i in graph[first]:
            if i not in visited:
                q.enqueue(i)
    return False
    
def print_reachable_nodes(graph, node1):
    q = Queue()
    visited = []
    q.enqueue(node1)
    while not q.isEmpty():
        first = q.dequeue()
        visited.append(first)
        for i in graph[first]:
            if i not in visited:
                q.enqueue(i)
    return visited

def sum(list1):
    cur_sum = 0
    for sub in list1:
        for i in sub:
            cur_sum += i
    return cur_sum

def sum_better(list1):
    return reduce(lambda x, y: x + y, reduce(lambda x, y: x + y, list1))

def jump(graph, node1, dist):
    q = Queue()
    q.enqueue((node1, 0))
    while q and q.peek()[1] < dist:
        node = q.dequeue()
        for j in graph[node[0]]:
            q.enqueue((j, node[1] + 1))
    final = []
    while not q.isEmpty():
        nextnode = q.dequeue()
        if nextnode[0] not in final:
            final.append(nextnode[0])
    return final}
}

@blog-post["Day 16"]{
Today we did more coding challenges, some of which are below. After completing the coding challenges, we continued working on
our kata collection projects.

@verbatim{
class sector:
    def __init__(self, watered, seeds = 0):
        self.watered = watered
        self.seeds = seeds
        self.visited = False

class field:
    def __init__(self, sectors):
        if sectors == []:
            self.sectors = [[None]*columns]*rows
        else:
            self.sectors = sectors

    def largest_patch(self):
        q = Queue()
        biggest = 0
        for i in range(len(self.sectors)):
            for j in range(len(self.sectors[0])):
                if self.sectors[i][j].visited == False and self.sectors[i][j].watered == False:
                    q.enqueue((self.sectors[i][j], i, j))
                    self.sectors[i][j].visited = True
                    cur_patch = 0
                    while not q.isEmpty():
                        cur = q.dequeue()
                        cur_patch += 1
                        try:
                            if self.sectors[cur[1] + 1][cur[2]].watered == False and self.sectors[cur[1] + 1][cur[2]].visited == False:
                                q.enqueue((self.sectors[cur[1] + 1][cur[2]], cur[1] + 1, cur[2]))
                                self.sectors[cur[1] + 1][cur[2]].visited = True
                        except:
                            continue
                        try:
                            if self.sectors[cur[1] - 1][cur[2]].watered == False and self.sectors[cur[1] - 1][cur[2]].visited == False:
                                q.enqueue((self.sectors[cur[1] - 1][cur[2]], cur[1] - 1, cur[2]))
                                self.sectors[cur[1] - 1][cur[2]].visited = True
                        except:
                            continue
                        try:
                            if self.sectors[cur[1]][cur[2] + 1].watered == False and self.sectors[cur[1]][cur[2] + 1].visited == False:
                                q.enqueue((self.sectors[cur[1]][cur[2] + 1], cur[1], cur[2] + 1))
                                self.sectors[cur[1]][cur[2] + 1].visited = True
                        except:
                            continue
                        try:
                            if self.sectors[cur[1]][cur[2] - 1].watered == False and self.sectors[cur[1]][cur[2] - 1].visited == False:
                                q.enqueue((self.sectors[cur[1]][cur[2] - 1], cur[1], cur[2] - 1))
                                self.sectors[cur[1]][cur[2] - 1].visited = True
                        except:
                            continue
                    if cur_patch > biggest:
                        biggest = cur_patch
        return biggest}
}

@blog-post["Day 17"]{
Today we did another coding warmup at the beginning of the day, and then spent the rest of the time finalizing our kata
projects. Here is my code from the challenge problems:

@verbatim{
def fibonacci(n):
    if n <= 0:
        return 0
    if n == 1:
        return 1
    return fibonacci(n - 1) + fibonacci(n - 2)

def math_fibonacci(n):
    return int(((.5 + .5*(5**.5))**n - (.5 - .5*(5**.5))**n)/(5**.5))

def multiples(n):
    sum = 0
    for i in range(n):
        if i % 3 == 0:
            sum += 1
    return sum

def multiples_better(n):
    return int(1.5*(n//3)*(n//3 + 1))}
}
}
