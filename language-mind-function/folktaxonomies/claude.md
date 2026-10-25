
I had a chat with a Danish botanist (turned software engineer). He claimed that common weeds in gardening and farming had more seldom names that were common between Swedish and Danish, than more rare plants (that were more likely to be discussed when Scandinavian biologists met on conferences and the like). It sounds plausible, but is there data that supports it?

---------

I found no study that directly compares Swedish and Danish plant names against how common the plants are. But there is good indirect evidence, and it suggests a better explanation than conferences.

**The likely mechanism: folk names vs. book names**

Common plants have old vernacular names that grew up separately in each language's dialects. Rare plants mostly got names invented by the authors of floras, usually by translating the Latin binomial. Two languages translating the same Latin tend to arrive at similar results.

- **Swedish.** Sigurd Fries analysed the names in a standard Swedish flora. He found that the systematic names are closely related to the scientific nomenclature and have nearly all been coined by authors of floras, and that only 20% of the plant-names are natural names. He also notes that systematic names are comparatively few in the two oldest floras but predominate in Liljeblad's flora (1816). So most standard Swedish names are learned coinages from around 1800.
- **Danish.** The same programme was argued explicitly in Denmark. J. C. Tode, writing in 1793, listed plant names in Latin and Danish to show that Linnaean names are often used in the vernacular in slightly modified form, and much less ambiguously than one of the many Danish or Norwegian synonyms.

**The other half: common plants have more folk names**

There is quantitative support for this from neighbouring cases:

- **Estonian plants.** A study of 1,188 Estonian plant species found that the more widespread a species is in Estonia, the more different folk names it has.
- **English birds.** A study of folk names for British birds found a significant positive correlation between the number of recorded folk names for a species and a measure of ubiquity in the nineteenth century.

More competing folk names means more chance that Sweden and Denmark each settled on a different one when their standard names were fixed. The weed examples fit well:

| Plant | Swedish | Danish |
|---|---|---|
| Ground elder | kirskål | skvalderkål |
| Chickweed | våtarv | fuglegræs |
| Shepherd's purse | lomme | hyrdetaske |
| Dandelion | maskros | mælkebøtte |
| Fat hen | svinmålla | hvidmelet gåsefod |

There are counterexamples, though. Some very old names are shared cognates: nässla and nælde for nettle, tistel and tidsel for thistle, kvickrot and kvik for couch grass.

**On your friend's explanation**

The conference effect is probably weak. The convergence was mostly built into the names when they were coined, through shared Latin models, long before Nordic botanists met regularly. There is also a confound: both countries have standardised their name lists in recent decades. Danish names now often have hyphenated systematic forms like "ager-tidsel", which makes rare species look more uniform partly by policy.

**Testing it properly**

This would be a neat, small project, and well within your skills. Take the Swedish names from Dyntaxa and the Danish ones from the Danish species list (both are also in GBIF's vernacular-name data). Normalise them by stripping hyphens and the å/aa, ä/æ, ö/ø differences, then compute a string or cognate similarity. Regress that on frequency, for example the number of occupied grid squares in Artportalen or a Danish atlas. You would need to separate "identical", "cognate" and "unrelated" names, since nässla/nælde-type cases shouldn't count against the hypothesis.

If you want, I can sketch the data pipeline.

--------

Do you have references for those two studies on plants in Estonia and bird names in England?

--------

Yes, here are both.

**Estonian plants**

Joassoone, Mariliis (2016). *Eesti taimenimetuste kvantitatiivne analüüs* [A quantitative analysis of Estonian plant names]. Bachelor's thesis, Estonian University of Life Sciences (Eesti Maaülikool), Tartu. http://hdl.handle.net/10492/2685

The full text is open access as a PDF, in Estonian with an English abstract.

This is a bachelor's thesis, not a peer-reviewed article, so treat it as suggestive. Its data come from Gustav Vilbaste's *Eesti taimenimetused* (1993), a collection of Estonian folk plant names published posthumously. Joassoone counted 17,929 folk names for 1,188 species. She also found that species at the margin of their geographical distribution in Estonia have fewer folk names than species at the centre of their range. That fits the same pattern as the overall link between commonness and number of names.

**English birds**

Gosler, Andrew (2017). "The Human Factor: Ecological Salience in Ornithology and Ethno-ornithology." *Journal of Ethnobiology* 37(4): 637–662. doi:10.2993/0278-0771-37.4.637

The work was first presented at the 2016 Society of Ethnobiology conference as "Interaction of ecological and cultural salience in English folk-naming of British birds". This one is peer-reviewed. Its useful nuance is that species with documented significance to nineteenth-century English folk culture tend to carry more names than ecological ubiquity alone predicts. In other words, cultural importance can drown out the effect of commonness.

That nuance probably applies to plants too. A weed with herbal or magical uses would collect extra folk names beyond what its abundance explains.
