# Worm-align
Worm-align is a FIJI script, that can be used to generate montages of user-selected, straightened and aligned worms from raw image data of C. elegans. These montages facilitate the visual inspection of worms, their classification and representation, which is often challenging as populations of worms tend to cross and cluster. This problem is aggravated with increasing density of worms, and creates challenges for imaging and quantification. The output of Worm-align can also be used for subsequent quantification of fluorescence intensity in single worms, either in FIJI directly, or in other image analysis software platforms. 

This GitHub repository contains:
* Worm-align.ijm = the Worm-align macro for use in FIJI
* Worm-check.ijm = an example of a FIJI macro that uses the Worm-align output to analyse fluorescence intensity in user-selected individual worms
* Worm_CP.cpproj = an example of a CellProfiler pipeline that uses the Worm-align output to analyse fluorescence intensity in user-selected individual worms
* Various example images to be used in Worm-align
* An example of Worm-align output, which can be used for quantification of fluorescence intensity in selected worms using Worm-check or Worm_CP

Worm-align requires ImageJ version 1.52a or later.
The Worm_CP.cpproj pipeline was constructed using CellProfiler 2.2.0.


Instructions on how to use this workflow can be found in our JOVE publication: 
Worm-align and Worm_CP, two open-source pipelines for straightening and quantification of fluorescence image data obtained from Caenorhabditis elegans.
Okkenhaug, H.1; Chauve, L1; Masoudzadeh, F1; Okkenhaug, L. and Casanueva, O. 1
1 Babraham Institute, Cambridge, UK


