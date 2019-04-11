#================ Combinations & Permutations =====================
#---- Combinatorics---------
#Following R functions can be used to get combinations in R
#1. choose(): Choose 2 out of 6 i.e. 6C2
choose(6,2)
#2. nsamp(): from 'prob' package. If used without order attribute,
#it act as a combination function.
library(prob)
nsamp(6,2)

#---- Permutations ----------
#Following are the functions to get permutations in R:
#1. No inbuilt function in R by default. So creating one:
permutate <- function(n,k){choose(n,k) * factorial(k)}
permutate(6,2)

#2.nsamp(): from 'prob' package. If used with order attribute,
#it act as a permutation function. 
#Can be used with replace as well.
library(prob)
nsamp(6,2, ordered = TRUE)


#====================== EXAMPLES =========================
#Problem Statement1: 
#--> Total 52 cards in a deck
#--> 13 cards of diamond  (red)
#--> 13 cards of heart    (red)
#--> 13 cards of club     (black)
#--> 13 cards of spade    (black)

#--> Total 16 face cars in a pack of 52
#--> 4 Aces (one in each type)
#--> 4 Kings (one in each type)
#--> 4 Queens (one in each type)
#--> 4 Jacks (one in each type)

#1. If one card is drawn at random from the pack of 52,
# what is the probability of picking a black card ?
#Sol: 
# Probability = (Sum of observations)/(Total Possibility)
# Sum of observation = 1 black card
# Total Possibility = 13 black cards + 13 black cards = 26 black cards
probab = 1/26
probab

#2. 