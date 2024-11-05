## THEORY
### 1. Linearity
The linearity property of DFT states that the DFT of a linear weighted combination of two or
more signals is equal to similar linear weighted combination of the DFT of individual signals.<br>
Let,<br>
DFT{x1(n)}=X₁(K) & DFT{x2(n)}=X2(K)<br>
then,<br>
DFT[a₁x₁(n)+a2x2(n)}=a₁X₁(K)+a2X2(K) where a, & a₂ are constants<br>
### 2. Convolution
The Circular Convolution of two N-Point Sequences x₁(n) & x2(n) is defined as,<br>
x₁(1) Θ x2(n) = Σ x₁(n) x2((n-m))N<br>
The Convolution Property of DFT says that, the DFT of circular convolution of two sequences
is equivalent to product of their individual DFTS. Let,<br>
DFT[x₁(n)}=X₁(K) and DFT(x2(n)}=X2(K)<br>
then, By Convolution property,<br>
DFT(x₁(n) Θ x2(n)}=X₁(K) X₂(K)
### 3. Multiplication
The Multiplication Property of DFT says that the DFT of product of two discrete time
sequences is equivalent to circular convolution of DFT's of the individual sequences scaled by
the factor of 1/N.If,<br>
DFT(x(n))=X(K)<br>
then,<br>
DFT(x,(n) x2(n)}=1/Ν[Χ₁(Κ)ΘΧ₂(Κ))
### 4. Parseval theorem
Let DFT(x₁(n)]=X₁(K) & DFT[x2(n))=X2(K) then by Parseval' theorem<br>
$$\sum_{𝑛=0}^{𝑁−1}$$ x1(n)x2*(n)=1/Ν 
$$\sum_{𝑘=0}^{𝑁−1}$$ Χ1(K) Χ₂*(K)
## OBSERVATIONS
![Screenshot (54)](https://github.com/user-attachments/assets/d8f098d4-5cf6-4a95-b308-1bc77e7503ed)
