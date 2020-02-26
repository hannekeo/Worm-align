// Worm-check
// Using the Worm-align output (line ROIs) to quantify fluorescence intensity in selected individual worms 
// Hanneke Okkenhaug, Feb2020
// Babraham Institute, Imaging Facility
// Written for processing image data from C. elegans, from Olivia Casanueva's group, Epigenetics ISP, Babraham Institute

macro "Worm-check"{

// Listing all folders
input = getDirectory("Please select the Worm-align output folder"); 
CP = input+File.separator+"CellProfiler";
list = getFileList(CP); 
data = input+File.separator+"data";
File.makeDirectory(input+"quant");
quant = input+File.separator+"quant";

for (i=0; i<list.length; i++){
	showProgress(i/list.length);
	if (matches(CP+File.separator+list[i],".*riginal_.*")==true){
		open(CP+File.separator+list[i]);
		original = getTitle();
		name=File.nameWithoutExtension();	
		getDimensions(width, height, channels, slices, frames);
		name2=replace(name, "Original_", "");
		open(data+File.separator+name2+"_ROIs.zip");

		roiManager("Show All");
		roiManager("Set Line Width", 10);
		roiManager("multi-measure measure_all");
		roiManager("Delete");
		
		selectWindow("Results");
		saveAs("Results", quant+File.separator+name2+".csv"); 
		run("Close");
		run("Close All");

}}

showMessage("The macro is finished.");}
