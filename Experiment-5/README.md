## THEORY
Performing Linear Convolution Using Circular Convolution. <br>
1. Zero-Padding:  <br>
Pad both sequences x[n] and h[n] with zeros to a length of at least 2N-1,where N is the 
maximum length of the two sequences. This ensures that the circular convolution will not wrap 
around and introduce artificial periodicity.  <br>
 
2. Circular Convolution:  <br>
Perform circular convolution on the zero-padded sequences.  <br>
 
3. Truncation:  <br>
Truncate the result of the circular convolution to the length N1 + N2 - 1, where N1 and N2 are 
the lengths of the original sequences x[n] and h[n], respectively.  <br>

Performing Circular Convolution Using Linear Convolution.  <br>
1. Zero-Padding:  <br>
Pad both sequences x[n] and h[n] to a length of at least 2N-1, where N is the maximum length 
of the two sequences.  <br>

2.  Linear Convolution:  <br>
Perform linear convolution on the zero-padded sequences.  <br>
 
3.  Modulus Operation:  <br>
Apply the modulus operation to the indices of the linear convolution result, using the period N. 
This effectively wraps around the ends of the sequence, making it circular.

## OBSERVATION
![2024-11-05 (8)](https://github.com/user-attachments/assets/17d1046a-8de9-43ce-9f19-cffd2f648b41)

