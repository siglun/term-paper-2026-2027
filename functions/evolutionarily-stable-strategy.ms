.LP
In Evolution we see how a function can be established or be maintained through Natural Selection.
.PP
We can see this through an analysis of the concept of Evolutionarily Stable Strategy, ESS.
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
Hence, an ESS is characterised by that when a strategy is adopted by a majority of a population no rare mutant is able to invade that population.
Here we see how the properties of few individuals are having crucial importance of the fate of the many.
Or in terms of a dynamic system,
is the equlibrium state of the system invasible or susceptibility to change.
Here is where dynamical systems theory meets modalities such as possibility and necessity.
Causation is causal dependence with transitivity.
.[\& (
Lewis causation
.], p. 563)
Here we will see how evolutionary stability causes that a function is the best one.
The analysis below is inspired by.
.[ 
#
Reed Stenseth
.]
.PP
Assume that we have a population growing according to some law $f$ and that its population changes from $N sub t$ one year to $N sub t+x$ the year after.
.EQ I (1)
N sub t+1 = N sub t left ( 1 + F( x , N sub t ) right )
.EN
Further,
let $AA$ the dominating genotype in the population,
i.e. its wild type.
This $A$ gene manifests itself on some trait called $x$.
In particular, let the $AA$ have the specific value of $x = x *$,
and that the growth rate is affected by the value of $x$
.PP
Assume that the $A$ gene occasionally mutates $A -> a$ and that the bearers of the allele $a$ ($Aa$) have a phenotype that deviates from $x$.
Assume that the mutants with genotype ($Aa$) have a modified trait where $x = x hat + delta x$.
Let the number of wild type individuals ($AA$) be $N sub t$ and mutants ($Aa$) $M sub t$.
Also, if the frequence of the $a$ allele $q approx M / 2 N$ is small in comparison with that of the $A$ allele which is $p = 1 - q$ and that,
according to Hardy-Weinberg law the frequencies of $AA$ is $p sup 2 approx 1$,
$Aa$ is $2 p q approx 2 q << 1$ and $aa$ is negligible $q sup 2 approx 0$.
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
