Welcome to the Machine Learning Challenge

" Learn multipulsed clicks to estimate the range of a cetacean from only one hydrophone "

Detecting and localizing the echolocation clicks of cetacean provides insight
into its behavior, but usual methods are limited in range, or costly.
In summer 2018, DYNI LIS CNRS Toulon univ., demonstrated the first 3D tracking
of deep diving cetacean from a five-channel small-aperture hydrophone array
fixed under a moving autonomous surface vehicle (the ASV Sphyrna, SeaProven SA).
The resulting 3D tracks depict the behavior of the cetacean in the abyss
(−1.2 km deep) during 3 hours, with one position at each pulsed emission of the
cetacean (Poupard et al ICASSP 2019).

Based on this unique data set, we propose to train and test original
mono-channel transient analysis model, that may be adapted to code a sequence of
pulses of the biosonar of the whale.

Then the task is to predict with only one channel (sampling rate is 300 kHz,
16 bits) the range of the cetacean for each emitted click. Any kind of machine
learning is allowed. The training set has around 4000 clicks. The test set has
around 2000 clicks.

All the clicks (train and test) are pre-detected and given in wave form in a
matrix (a row = a click).  The annotation for each click of the
train set = [ clickId, x, y, z, and range of the whale ].
All this information can be used during the training.

Your prediction will be formatted into a .csv matrix,
each raw = [ clickId, estimated range of the whale ].
Your scripts will be sent with your prediction (in Python, Matlab, C...).
This will allow to check that the model is full automatic.
Up to three runs are allowed per challenger.
Ranking of the runs will be based on MSE of the ranges.

Deadline : 12th of May, 22:00, Paris time.
Data, details, updates :
http://sabiod.univ-tln.fr/workspace/challenges/learn_from_clicks

Content :
- the acoustic data i.e. the click waveform, one per line, centered, high pass
filter : waveform_of_the_clicks_TRAIN_TEST_sets.mat
(matlab v7 format, 6036 clicks, 1.5 Go).
- this README.txt.
- the  ICASSP paper 2019 describing the experiment.
- the annotations.txt gives for each click of the training set :
click Id, x, y, z, range of the click.
- private files : rando.mat (shuffle) and the annotation of the test.

Contact & Submission : herve.glotin@univ-tln.fr
Organizers : Herve Glotin, Maxence Ferrari, Marion Poupard, Pascale Giraudet,
DYNI LIS CNRS Toulon university, FR.
We thank SeaProven, CNRS EADM and SABIOD groups, and NanosSpike and SMILES ANRs.
