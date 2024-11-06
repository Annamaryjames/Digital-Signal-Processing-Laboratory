## Theory
#### 1.  Linearity Property 
The linearity property of the DFT states that if you have two sequences x1[n] and x2[n], and their 
corresponding DFTs are X1[k] and X2[k], then for any scalar a and b: <br>
DFT{a⋅x1[n]+b⋅x2[n]} = a⋅DFT{x1[n]}+b⋅DFT{x2[n]} 
#### 2.  Parseval's Theorem 
Parseval's theorem states that the total energy of a signal in the time domain is equal to the total energy 
in the frequency domain. For a sequence x[n] and its DFT X[k]: <br>
$$\sum_{𝑛=0}^{N-1}$$ 𝑥[𝑛]<sup>2</sup>=1/𝑁
$$\sum_{𝑛=0}^{N-1}$$ 𝑋[𝑘]
#### 3. Convolution Property 
The convolution property of the DFT states that the circular convolution of two sequences in the time 
domain is equivalent to the element-wise multiplication of their DFTs in the frequency domain:<br>
DFT{x1[n]⊛x2[n]}=DFT{x1[n]}⋅DFT{x2[n]} 
#### 4. Multiplication Property 
The multiplication property of DFT states that pointwise multiplication in the time domain corresponds 
to circular convolution in the frequency domain:<br> 
DFT{x1[n]⋅x2[n]} = (DFT{x1[n]}⊛DFT{x2[n]} )/N
## OBSERVATIONS
![Screenshot (232)](https://github.com/user-attachments/assets/15555cbf-9ba0-4ae4-a2f3-2ade4637a275)
