.so ../margin-notes.ms
.MNinit symmetric 3c 4c 1n BrillR 8z 9.6p black ""
.NH 1
Functions in Philosophy of Language and Speech-Acts
.NH 2
Functions
.NH 3
Seminar 1:
Functional explanation and analysis
.LP
\f[I]What is the point of ascribing functions?
What theoretical work are they supposed to do?\f[P]
Functional analysis by
.[ 
#
Cummins functional analysis
.]
.LP
.MN right
p. 741
.MN
Functional analysis starts with Hempel and Nagel, sais Cummins.
(A) The reason for functional characerization in science is to explain the presence of an item $i$ in a system $s$.
(B) For something to perform its function is for it to have certain function in $s$.
Now we can say that presence of $i$ in $s$ characterized since $i$ is present in $s$
.BI because
it has certain effects on $s$.
.LP
Something is wrong,
in particular with (A) above.
.QP
.MN right
p. 745
.MN
.vs 12
.ps 10
An attempt to explain the presence of something by appeal to what it does\[em]its function\[em]is bound to leave unexplained why something else that does the same thing-a functional equivalent-isn't there instead.
.LP
Are functional explanations and teleological explanations of the same kind?
.PP
Are functional explanations relative to explanatory interests?
.PP
What different kinds of accounts of function are there? Do they have the same explanatory aims?
.[
cummins 1975
.]
.[
davies 2001
.]
.LP
The short version: both traditions start from Hempel's verdict that functional ascriptions can't explain why an item is present, and they react in opposite ways. Cummins accepts the verdict and changes the question. Wright and Millikan reject it and supply the causal history Hempel thought was missing.
.NH 4
Hempel's problem
.LP
In \f[I]The Logic of Functional Analysis\f[P] (1959),
Hempel asks whether \[oq]the heart beats in order to circulate the blood\[cq] can be turned into a deductive-nomological explanation of why organisms have hearts.
The natural reconstruction is:
.IP 1.
System $s$ functions adequately in setting $c$.
.IP 2.
$s$ functions adequately only if condition $n$ (circulation) is met.
.IP 3.
If trait $i$ (a heart) were present, $n$ would be met.
.IP 4.
Therefore $i$ is present.
.LP
That is affirming the consequent.
To make it valid, premise 3 would have to say that $i$ is
.I necessary
for $n$.
.MN left
\s[+24]\[u261E]\s[-24]
.MN
But there are functional equivalents: other circulatory arrangements, an artificial heart.
So the most you can validly derive is that some member of a class of functional equivalents is present.
Functional analysis therefore has heuristic value but no explanatory force for the item itself.
.LP
Two features of Hempel's framing matter for what follows:
.IP -
The explanandum is assumed to be the presence of the item.
.IP -
Explanation is assumed to mean subsumption of the explanandum under laws.
.NH 4
Cummins: functional explanation (causal role)
.LP
Cummins ("Functional Analysis", 1975) accepts Hempel's verdict and drops both assumptions.

- **A different explanandum.** Function ascriptions don't explain why the heart is there. They explain how the containing system has some capacity, such as the circulatory system's capacity to transport nutrients.
- **A different form of explanation.** The explanation is *analytic*. You decompose a system's capacity into the capacities of its components and their organization. The function of *x* is whatever *x* contributes to the capacity being analysed, relative to that analysis. This explains a disposition by its constitution, not an event by a law. Cummins contrasts this with the "transition theories" (explaining changes of state) on which the DN model was built.
- **Synchronic and history-free.** What the heart did for ancestors is irrelevant. What matters is what it does now in the system under analysis.

The costs follow directly:
- **Liberality.** Anything contributing to any capacity we choose to analyse has a function. The heart's function relative to "producing sounds a stethoscope can detect" is to thump.
- **No room for malfunction.** A heart that doesn't pump contributes nothing, so on this account it has no pumping function, rather than having one it fails to perform.

.NH 4
Wright and Millikan: teleological explanation (etiology)
.LP
Wright (1973) and, more rigorously, Millikan (*Language, Thought, and Other Biological Categories*, 1984; "In Defense of Proper Functions", 1989) keep Hempel's explanandum. They hold that a function ascription really does explain why the item is there, and that Hempel's reconstruction failed because it looked at the wrong effects.

- Wright: the function of *X* is *Z* if *X* is there because it does *Z*, and *Z* is a consequence of *X*'s being there.
- Millikan's *proper function*: an item has proper function *F* if it is a reproduction (copy) of earlier items that performed *F*, and that performance is part of the causal explanation of why the current item exists. In biology, this means it was selected for *F*.

This dissolves Hempel's problem, because the teleological "in order to" is backed by ordinary forward causation. It is not the current heart's pumping that explains the current heart. It is the pumping of ancestral hearts, through differential reproduction. Functional equivalents also stop mattering. We are not deducing the heart from the need for circulation. We are giving the actual causal history, and an artificial pump that could have done the job was never part of it.

The approach also earns normativity. A defective heart still has the proper function of pumping, because the function is fixed by its lineage, not its performance. That is why Millikan can use proper functions to ground representation and meaning, where misrepresentation needs the same structure as malfunction. The well-known costs:
- Swampman: an atom-for-atom duplicate with no history has no proper functions.
- Function ascriptions become hostage to evolutionary facts we often don't know.

Millikan's answer to the second is that she is giving a theoretical definition, not an analysis of what speakers mean by "function".

.TS
allbox center tab(;);
lp10v12 lp10v12 lp10v12 lp10v12.
T{
Direct Proper functions
T};Relational:;T{
Supposed to produce a specific relation to something else
T}
;Adapted;T{
Relational with respect to some feature of the environment
T};T{
Output adapted devices
T}
T{
Derived proper function
T}
;;T{
Functions which something has as a result of being produced as an adapted device
T}
.TE
.PS 5c 8c
.ps 9
.vs 11
scale=2.54
boxwid = 1.5; boxht = 0.5
R:   box "Proper functions"
D:   box "Direct" "(members of REFs)" with .n at R.s + (-1.7,-0.6)
Der: box wid 2.2 ht 0.7 "Derived" "(adapted devices, intentions," \
         "artefacts, speaker purposes)" with .n at R.s + (2.0,-0.6)
I:   box "Invariant" with .n at D.s + (-1.7,-0.6)
Rel: box "Relational" with .n at D.s + (0,-0.6)
S:   box "Stabilising" "(language devices)" with .n at D.s + (1.7,-0.6)
A:   box "Adapted" with .n at Rel.s + (0,-0.8)
arrow from R.s to D.n
arrow from R.s to Der.n
arrow from D.s to I.n
arrow from D.s to Rel.n
arrow from D.s to S.n
arrow from Rel.s to A.n "  applied to" ljust "  an adaptor" ljust
line dashed from A.e to (Der.x, A.y)
arrow dashed to Der.s
"adapted devices have" "derived functions" at (A.e.x + Der.x)/2, A.y + 0.25
.PE
.NH 4
How each breaks with Hempel
.LP
.TS
allbox center tab(;);
lb lb lb ;
lp10v12 lp10v12 lp10v12 .
.ps 10
.vs 12
;Cummins;Wright / Millikan
Explanandum;T{
a capacity of the containing system
T};T{
the presence of the trait
T}
Direction;synchronic, part-to-whole;diachronic, historical-causal
Form;analysis / decomposition, not laws;selection history, a causal narrative
Hempel's verdict;T{
accepted: functions don't explain presence, but they explain something else
T};T{
rejected: they explain presence, through past tokens' effects
T}
Normativity;none;yes (malfunction possible)
.TE
Both abandon the idea that explanation must be DN subsumption. Cummins does so openly, since capacity analysis isn't nomological at all. Millikan's selection explanations are causal but historical and token-lineage based, not derivations from general laws.

The terminology isn't fixed. Some authors call both "functional" and reserve "teleological" for the etiological view; others (Godfrey-Smith's "modern history" theory, Kitcher's design-based unification) try to bridge them. The working rule is: Cummins = *what it does in the system*; Millikan = *what it was selected for*.

The split maps neatly onto your old field. Ecosystem "function" (nutrient cycling, a species' role in a food web) is Cummins-style. Ecosystems aren't units of selection, so there are no etiological functions at that level. Organism-level traits get both kinds of ascription. That is one reason the "ecosystem function" debate in philosophy of ecology keeps turning on exactly this distinction.
.NH 3
Seminar 2
.LP
What are 'direct proper functions'? What are they supposed to explain?
.QP
.vs 12
.ps 10
A function $F$ is a direct proper function of $x$ if $x$ exists having a character $C$ because by having $C$ it can perform $F$.
(Notice how close this is to the idea that $x$ exists in order to perform $F$.)
First interpret \[oq]because by having $C$ it can perform $F$\[cq] to mean \[oq]because there were things that performed $F$ in the past due to having $C$.\[cq]
But how could it be because $F$ was performed in the past by $C$ as opposed to, merely, because $F$ was performed in the past by something or other, that $x$ was produced?
Consider a motor idling.
A cyclical process is involved here.
.EQ
C x ~ \(AN ~ [ ~ \(te y ~ ( A(y,x) ~ \(AN ~ C y ~ \(AN ~ ( C y ~ \[u25B7] ~ F y ) ) ~ \[u25B7] ~ C x ~ ]
.EN
.LP
What are 'Normal explanations'?

What are derived proper functions and what is their role in the theory?

What is the difference between the Generalized Selected Effects theory of function and Millikan's?

Are etiological theories of function too liberal in ascribing functions?
.[
Millikan 1984
.]
.[
Garson 2017
.]
.NH 3
Seminar 3
.LP
What is the indeterminacy problem?
.QP
.vs 12
.ps 10
While teleosemantics is widely regarded as one of the most attractive approaches to the naturalization of intentionality,
many,
perhaps all,
teleosemantic theories on offer are subject to an embarrassing indeterminacy problem:
they are not able to make univocal predictions as regards the content of mental states.
.LP
But why should we expect that the content of our minds should be possible to explain teleologically?
.LP
Why is the possibility of malfunctioning relevant for functional classification? Is an etiological approach necessary for explaining this possibility?
.PP
How do 'by'-relations help solve indeterminacy problems?
.PP
Why are vestigial traits a problem for etiological approaches?
.PP
Can etiological functions explain properly explain malfunctioning? Can systemic functions do so?
.[
Neander 1995
.]
.[
Davies 2001
.]
.NH 3
Seminar 4
.LP
Can the notion of function be thought of in terms of 'design'?
.LP
What is the difference between an 'initial presence' and a 'maintenance' view of etiological functions?
.QP
.vs 12
.ps 10
Biological functions are dispositions or effects a trait has which explain the
recent maintenance of the trait under natural selection. This is the "modem
history" approach to functions. The approach is historical because to ascribe a
function is to make a claim about the past, but the relevant past is the recent past
.[
Godfrey-Smith 1994
.]
.LP
Does 'design' provide a way to unify other perspectives on function?
.LP
What distinguishes a 'recent history' view?
.LP
Are etiological functions and system functions notions which figure in different kinds of explanations?
.LP
Should we expect or aim for a unified theory of functions or accept pluralism about the notion?
.[
Kitcher 1993
.]
.NH 3
Seminar 5
.LP
[In Millikan, the discussion on Gricean intentions is not of main importance for the course. Neither are the appendices of Ch. 4. For the Martinez paper, focus on the ideas of the argument and don't worry too much about the formalisms.]
.LP
What are stabilizing functions of language devices?
.QP
.vs 12
.ps 10
Given our speculations about the relation of specific speaker and hearer purposes to the stabilizing functions of language devices, we can easily construct an explicit theory concerning the general kinds of failure we should expect to find of language device tokens that do not perform their stabilizing functions.
We will then be satisfied when these kinds of actual token performances do not fit our descriptions of the stabilizing functions of the indicative and imperative moods rather than casting about trying to fit these kinds in somewhere.
Let us begin then by constructing such a theory.
.QP
.vs 12
.ps 10
Cases of language device tokens that do not perform their stabilizing functions should divide into the following four kinds:
(1) cases in which the speaker purposes the stabilizing function but the hearer does not;
(2) cases in which the hearer purposes the stabilizing function but the speaker does not;
(3) cases in which neither the speaker nor the hearer purposes the stabilizing function;
(4) cases in which both the speaker and the hearer purpose the stabilizing function but this function fails to be performed nonetheless.
.[
Millikan 1984
.]
.LP
Case (2) is where lying belongs: the hearer purposes the stabilizing function (belief formation), but the speaker does not. That is Millikan’s counterpart to the cheating problem in Maynard Smith and Harper’s paper.
.LP
How do they relate to the 'literal use' of language devices?
.QP
.vs 12
.ps 10
Whether the use of a language device is literal or not depends upon the speaker’s purpose.
It is not necessary however that the speaker should purpose that its stabilizing function actually be performed.
For example, when a speaker uses the indicative mood in lying, he may speak literally but he does not purpose that it fulfill its stabilizing function of producing a true belief.
And a speaker who uses an imperative intending that his hearer should try to comply but fail may still use that imperative literally.
A literal use is a use that is intended to be taken literally.
The literal speaker proposes that his hearer’s reaction should be to purpose, or that his hearer’s reaction should have as a proper function, the function that is the stabilizing function of the words the speaker utters.
In literal use of the imperative the speaker purposes that the hearer form an intention that corresponds to (that has the same proper function as—see Chapter 8) the sentence he utters.
In literal use of the indicative, the speaker purposes that the hearer correctly interpret and believe the sentence uttered, even though the speaker may know that this interpreting and believing will not result in performance of the full proper function of the indicative mood\[em]in the production of a
.I true
belief.
.LP
This passage also bears on the lying point from before.
The liar speaks literally because he intends the utterance to be taken literally, that is, believed.
He just doesn’t purpose that the full proper function, a true belief, gets performed.
That is Millikan’s case (2 above) again, now with an account of why lying counts as literal use and not as a non-literal one.
.LP
What is the connection between a speaker's purpose of utterance and its function?

How do functions relate to meaning on Millikan's view?

How do teleosemantic approaches aim to provide a basis for representational views of meaning? Why might one be sceptical of such attempts?
.[
Millikan 1984
.]
.[
Martinez 2013
.]
.NH 3
Seminar 6
.LP
What sense of function is Sellars appealing to?
.QP
.vs 12
.ps 10
Just as micro-physical theories have typically made use of conceptually
independent models at the perceptual level,
so,
I shall argue,
the explanatory function of 'inner conceptual episodes' can be construed as resting upon an autonomous proto-psychologial framework in which linguistic activity is described,
explained and evaluated without reference to the framework of 'mental acts' which it supports.
With these qualifications,
then,
the enterprise in which I am engaged is the construction of a 'level 1 theory of meaning' in Harman's sense of this phrase.
I shall refer to what he calls'thinking in words' as thinking-out-loud.
On the assumption that such a proto-psychological framework can be isolated,
I shall present it in the guise of a claim that thinking at the characteristically human level simply is what is described by this framework.
I shall refer to this claim as Verbal Behaviorism.
It is not intended to be an adequate account of thinking;
it is,
indeed,
radically oversimplified.
But I believe that it will provide a useful means of clarifying certain key issues in 'the philosophy of language.
.LP
How does Sellars view lend itself to avoiding
.QP
.vs 12
.ps 10
It should be stressed that the uniformities involved in meaningful
verbal behavior include
.I negative
uniformities, i.e. the avoidance of certain combinations, as well as
.I positive
uniformities, i.e. uniformities of concomitance.
Indeed, negative uniformities play by far the more important role,
and the rules which govern them are to be construed as constraints rather than incentives.
.[
Sellars 1973
.]
.LP
What is an EMU and what theoretical work are they supposed to do?
.QP
.vs 12
.ps 10
To see whether pragmatism can accommodate expressivist insights, we have
to ask what is involved in giving an explanation of meaning in terms of use
(an EMU).
.[
Williams 2013
.]
.LP
What sense of function is Williams discussing?
.QP
.vs 12
.ps 10
All vocabularies\[em]semantic vocabulary included\[em]are to be characterized (or explained) functionally,
in terms of their use properties.
Oversimplifying a bit,
meaning does not explain use: use explains meaning.
.LP
Can inferential role be considered functionally?
.LP
Is Williams sketching a view of how to relate two different senses of 'linguistic function' to each other?
.NH 3 
Seminar 7
.LP
What notions of function are Cappelen willing to entertain? How do they relate to the approaches we've looked at so far?

Why does Cappelen think that 'function' is a flawed notion for investigating language?

How does Thomasson answer that criticism? Is she successful?

How should we categorise Thomasson's notion of function?

Are functional considerations relevant for conceptual engineering/ethics? In which ways?
.[
Cappelen 2018
.]
.[
Thomasson 2020
.]
.NH 3
Seminar 8
.LP
What are the intuitions which support conventionalism and intentionalism about speech-acts?

Why might one be sceptical about the possibility that all speech-acts can be characterised in terms of conventions?

What resources are available to a conventionalist for responding to such criticism?

Which approach seems more promising?
.[
Harris Fogal Moss 2018
.]
.[
Strawson 1964
.]
.[
Harris 2016
.]
.NH 3
Seminar 9:
.LP
How does Millikan analyse conventions? Does it relate to her views on function?

How does Millikan propose to bridge the gap between conventionalism and intentionalism?

What characterises 'co-operative proper functions'? Why does Millikan think that these characterise speech-acts?

How does communicative function relate to conversational score?

Are Murray and Starr using the same notion of function as Millikan? Does this generate a distinct kind of functionalism?
.[
Millikan  Language Conventions Made Simple
.]
.[
Millikan Function and Convention in Speech Acts 2005
.]
.[
Force and Conversational States
.]
.NH 3
Seminar 10
.LP
Each of the readings suggests an analysis of a particular speech-act in terms of its function. In what sense of function are they best understood?

Is it plausible that these speech-acts have only a single function? If not, how does that interact with a functionalist approach to characterising speech-acts?
