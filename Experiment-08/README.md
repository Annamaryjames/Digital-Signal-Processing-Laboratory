## Theory 
Both the Overlap-Save and Overlap-Add methods are techniques used to compute the convolution of 
long signals using the Fast Fourier Transform (FFT). The direct convolution of two signals, especially 
when they are long, can be computationally expensive. These methods allow us to break the signals into 
smaller blocks and use the FFT to perform the convolution more efficiently. 
#### Overlap-Save Method 
The Overlap-Save method deals with circular convolution by discarding the parts of the signal that are 
corrupted by wrap-around effects. Here's how it works: <br>
1. Block Decomposition: The input signal is divided into overlapping blocks. If the filter has length and 
we use blocks of length, the overlap is  samples, so each block has  new samples and  samples from the 
previous block. <br>
2. FFT and Convolution: Each block is convolved with the filter using FFT. However, because of 
circular convolution, the result contains artifacts due to the overlap.<br> 
3. Discard and Save: We discard the first samples from each block (the part affected by the wrap-around) 
and save the remaining samples. This gives us the correct linear convolution. 
 
#### Overlap-Add Method 
The Overlap-Add method, on the other hand, handles circular convolution by adding overlapping 
sections of the convolved blocks. Here’s how it works:<br>
1. Block Decomposition: The input signal is split into non-overlapping blocks of size. Each block is 
then zero-padded to a size of , where  is the length of the filter.<br> 
2. FFT and Convolution: Each block is convolved with the filter using FFT. Since the blocks are zero
padded, the convolution produces valid linear results, but the output blocks overlap.<br> 
3. Overlap and Add: After convolution, the results of each block overlap by samples. These overlapping 
regions are added together to form the final output.
## OBSERVATIONS
![Screenshot (233)](https://github.com/user-attachments/assets/a6c5aced-0ac5-445c-bf5e-2a0121905df7)
