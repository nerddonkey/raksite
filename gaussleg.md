---
layout: page
title: <b>Improving Gauss-Legendre</b>
menutitle: Tech Note 01:<br> <b>Improving Gauss-Legendre</b>
author: Rod Kennedy
date: 12 Jul 2015
menuranking: 1001
published: yes
---

- signals on $$\mathbb{S}^2$$ always **bandlimited** to $$L$$, i.e., beyond $$\ell\in\{0,1,\dotsc,L-1\}$$ the harmonics are zero
- natural Gauss-Legendre uses $$L$$ samples along co-latitude ($$\theta$$) taken as the roots of the Legendre polynomial of degree $$L$$, $$P_{L}(\theta)$$ -- denote these roots as $$\theta^{\,r}_L$$, $$r=1,2,\dotsc,L$$.
- when coupled with $$2L-1$$ samples along longitude ($$\phi$$) for each co-latitude sample, this sampling set is denoted $$\mathfrak{S}_{\mathrm{GL}}$$ and its cardinality is $$\lvert\mathfrak{S}_{\mathrm{GL}}\rvert=L(2L-1)$$

$$
\begin{align*}
  \mathfrak{S}_{\mathrm{GL}} &= \Theta_L \times \Phi_{2L-1}, &\lvert\mathfrak{S}_{\mathrm{GL}}\rvert &= L(2L-1) \\
  \mathfrak{S}_{\mathrm{EGL}} &= \{\Theta_{L-1} \times \Phi_{2L-1}\} \cup \{(0,0)\},
		&\lvert\mathfrak{S}_{\mathrm{EGL}}\rvert &= (L-1)(2L-1)+1
\end{align*}
$$

---
