.LP
Biologists often claim a trait endowing a function to an organism has been established and later maintained through Natural Selection.
I will demonstrate this through an analysis of the concept of Evolutionarily Stable Strategies, ESS.
.QS
.LP
.vs 12
.ps 10
A \[oq]strategy\[cq] is a behavioural phenotype;
i.e., it is a specification of what an individual will do in any situation in which it may find itself.
An ESS is a strategy such that,
if all members of a population adopt it,
then no mutant strategy could invide the population under the influence of natural selection.
.[
Maynard Smith evolution theory games
.]
.QE
Hence, an ESS is characterised by that when a strategy is adopted by a majority of a population no mutant is able to invade that population when rare.
Here we see how the properties of few individuals are having crucial importance of the fate of the many,
even when they occur in hardly detectable numbers.
.LP
In terms of dynamical systems,
the ESS is an equlibrium state which is not invasible or susceptibility to evolutionary change.
Dynamical systems theory meets modality and possibilities and necessities.
.LP
The analysis below is inspired by.
.[ 
#
Reed Stenseth
.]
Assume that we have a population with a trait $T$ which corresponds to a function $x$.
Let the trait $T$ be evolutionarily stable when the function assumes the value $x = x *$.
.PP
This population grows according to some law $F$ such that its population changes from $N sub t$ one year to $N sub t+1$ the year after.
.EQ I (1)
N sub t+1 = N sub t left ( 1 + F( x , N sub t ) right )
.EN
Further,
let $AA$ the be dominating genotype in the population,
i.e. its wild type.
The mutant has a variation of the $A$ gene which we call $a$.
As long as the mutation is rare,
that gene occurs in individuals with the genotype $Aa$.\**
.FS
Most plants and animals are diploid,
which means that they have two genes of the same type.
We say that they have two possible alleles,
we call them $A$ and $a$ respectively.
.FE
Thus, assume that the $AA$ have that specific value of $x = x *$,
and that the reproductive rate is affected by the value of $x$
.PP
Now, further assume that the $A$ gene occasionally mutates $A -> a$ and that the bearers of the allele $a$ ($Aa$) have a phenotype that deviates from $x$.

Also, if the frequence of the $a$ allele $q approx M / 2 N$ is small in comparison with that of the $A$ allele which is $p = 1 - q$ and that,
according to Hardy-Weinberg law the frequencies of $AA$ is $p sup 2 approx 1$,
$Aa$ is $2 p q approx 2 q << 1$ and $aa$ is negligible $q sup 2 approx 0$.
.PP
Assume that the mutants with genotype ($Aa$) have a modified trait where $x = x hat + delta x$.
Let the number of wild type individuals ($AA$) be $N sub t$ and mutants ($Aa$) $M sub t$.
.EQ I (2a)
N sub t+1 = N sub t left ( 1 + F ( x * , N sub t , M sub t ) right )
.EN
.EQ I (2b)
M sub t+1 = M sub t left ( 1 + F ( x * + delta x , N sub t , M sub t ) right )
.EN
.LP
Clearly, $M sub t+1 > M sub t$ when $F ( x * + delta x , N sub t , M sub t ) > 0$.
Given that the mutant is rare ($M sub t $ is close to zero) and $delta x$ is small we can calculate $F$ through a series expansion
.EQ I (3)
F ( x * + delta x , N sub t , 0 ) = diff(F,x) delta x + diff2(F, x) delta x sup 2 + ...
.EN
So, since the population is stable and the mutant unable to invade,
.EQ I (4)
left {
lpile {
{diff(F,x) = 0 }
above 
{ "  " }
above
{ diff2(F, x) < 0 }
}
right ""
.EN
are sufficient conditions for that.
This means that $F$ is at an extreme value with respect to $x$ and because of the second derivative that value must be at a maximum.
Hence, $x$ has the function to
.LP
Causation is causal dependence with transitivity.
.[\& (
Lewis causation
.], p. 563)
Here we will see how evolutionary stability causes that a function is the best one.
