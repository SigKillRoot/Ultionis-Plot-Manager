#To install copy from below, paste in your terminal and hit enter.
#-----
cd ~

git clone https://github.com/SigKillRoot/Ultionis-Plot-Manager.git

cd ~/SigKillRoot/Ultionis-Plot-Manager/

chmod +x upm.sh

#-----
#To run

cd ~/SigKillRoot/Ultionis-Plot-Manager/

./upm.sh

#-----

Plot manager using MadMax's plotter.

Pulls chia keys on linux systems that have chia gui installed. 

Uses GUI elements to  input TEMP, TEMP2, DEST, THREADS, BUCKETS. 

Clears .tmp files from selected drives. 

Calculates drive space available against drive space required. 

Tells you that space and how many plots you can have plotting on each, 

And how many plots you can fit on your DEST drive. 

Clears .tmp on crashes and restarts plotting with your defined entries.

-----

-- Later update using my plot mover as a base

I'll write in the drive cycling, and write in the old plot mover.

Drive cycling changes destination drives when full.

Plot mover will wait in a destination drive for a plot to complete, 

then it will move it to your final storage. 

I do this so I can use my 3rd NVME as destination in plotter,

because it's much quicker writes.

Then the mover moves it to the final destination

to get out of the way of the plotting i/o
