# _Traveling Salesman Problem_

Implemention a quick solution on SQL to achieve results of Traveling Salesman Problem

Given a finite number of "cities" along with the cost of travel between each pair of them, find the cheapest way of visiting all the cities and returning to your starting point. (on image Proctor and Gamble company ran a contest in 1962.  The contest required solving a TSP on a specified 33 cities.  There was a tie between many people who found the optimum.  An early TSP researcher, Professor Gerald Thompson of Carnegie Mellon University, was one of the winners.)

The travel costs are symmetric in the sense that traveling from city X to city Y costs just as much as traveling from Y to X; the "way of visiting all the cities" is simply the order in which the cities are visited. To put it differently, the data consist of integer weights assigned to the edges of a finite complete graph; the objective is to find a hamiltonian cycle (that is, a cycle passing through all the vertices) of the minimum total weight.  In this context, hamiltonian cycles are commonly called tours.

The origins of the TSP are obscure. In the 1920's, the mathematician and economist Karl Menger publicized it among his colleagues in Vienna. In the 1930's, the problem reappeared in the mathematical circles of Princeton. In the 1940's, it was  studied by statisticians (Mahalanobis (1940), Jessen (1942), Gosh (1948), Marks (1948)) in connection with an agricultural  application and the mathematician Merill Flood popularized it among his colleagues at the RAND Corporation.  Eventually,  the TSP gained notoriety as the prototype of a hard problem in combinatorial optimization: examining the tours one by one  is out of the question because of their large number, and no other idea was on the horizon for a long time.
## Exercise 00 - Classical TSP

SQL statement that returns all tours (aka paths) with minimal traveling cost if we will start from city "a".

The sample of output data.

| total_cost | tour |
| ------ | ------ |
| 80 | {a,b,d,c,a} |
| ... | ... |

## Exercise 01 - Opposite TSP

Added a possibility to see additional rows with the most expensive cost to the SQL from previous exercise.

| total_cost | tour |
| ------ | ------ |
| 80 | {a,b,d,c,a} |
| ... | ... |
| 95 | {a,d,c,b,a} |


