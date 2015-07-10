---
layout: post
title: Fourier Synthesis with MATLAB
author: Rod Kennedy
published: yes
---

Here is a bit of <abbr title="MATLAB&reg; is a high-level technical computing language"> MATLAB&reg;</abbr> code that does Fourier *synthesis*. That is, it constructs (and plots) a signal from a set of hard-wired Fourier series coefficients

$$
\begin{equation*}
	c_k = T\,a_k^2 \quad\text{where}\quad
	a_k = \frac{\sin(k\,\pi/4)}{k\,\pi} e^{-j\,k\,\pi/4}
\end{equation*}
$$

Or this

$$
\begin{align*}
	c_k &= T\,a_k^2 \\
	a_k &= \frac{\sin(k\,\pi/4)}{k\,\pi} e^{-j\,k\,\pi/4}
\end{align*}
$$

But it serves as an illustration of a lot of aspects of coding in <abbr title="MATLAB&reg; is a high-level technical computing language">MATLAB&reg;</abbr>.

{% highlight matlab %}
function foursynth( kmax, T )
    k=[-kmax:kmax]; % Fourier coefficient index span
    omega0=2*pi/T; % fundamental frequency (rad/sec); T - period

    k=k+0.0001; % lazy way to handle sinc at zero
    ak=sin(k*pi/4)./(k*pi).*exp(-j*k*pi/4);
    ck=T*ak.*ak;

    t=T*[-2.5:0.01:2.5]; % time scan for plot (5 periods)
    ekt=exp(j*omega0*kron(k,t')); % k horz; t vert

    yt=ck*ekt.'; % sum the series; .' means non-conjugate transpose

    plot(t,real(yt)); shg
end
{% endhighlight %}
