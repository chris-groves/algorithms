# Algorithmic Complexity

This repo details my workings through the Algorithmic Complexity material from the Makers Academy course (https://github.com/makersacademy/course/tree/master/algorithmic_complexity)

## Timing

The first section involves timing how long the following Ruby methods take to run:

- last
- reverse
- shuffle
- sort

I did this by using ```Benchmark``` in Ruby, running the methods against an array populated with random numbers between 1 and 9. The code can be found in the 'code-timer.rb' file.

I then moved onto testing each of these methods on different length arrays, ranging from 50000 to 100000 in increments of 50000. The code can be viewed in the files named with the respective methods in the lib folder. This provides a picture of how the length of time to run the method is impacted by the length of the array.

To get the best possible timings, each of the four methods were timed 100 times for each array length. The highest and lowest five times were removed and then an average calculated for the remaining times.

The image below shows this represented in a line graph. The vertical axis shows the time taken to run the method in seconds and the horizontal axis the length of the array used.

![](Timings.png)

## Writing My Own Algorithms

This step involves me writing my own algorithms for the following:

- Shuffling an array

- Reversing an array

- Finding dupicates in a list of words

- Finding the most frequent words in a list of words

- Sorting an array of 0s and 1s

- Sorting an array

- Fibonacci - create an array of the first x numbers in the fibonacci sequence

- Create all possible pairings from a list of students

- Sub-sequence sum - given an array of integers and a target number, find if there exist a sequence of numbers that sum up to the target.

The code can be found in the 'Own-Algorithms' folder.

## Timing My Own Algorithms

I am currently on this step and beginning with measuring my sort method. The challenge has been finding a way to feed an array  into the Sorter class (which contains my sort method), remembering to shuffle the array before sorting.
