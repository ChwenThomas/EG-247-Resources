# Week 7: Lab 6: Convolution

## Acknlowedgements

These examples have been adapted from Chapter 6 of <a href="http://site.ebrary.com/lib/swansea/docDetail.action?docID=10547416" target="_blank">Stephen Karris, Signals and Systems : With MATLAB Computing and Simulink Modeling (5th Edition)</a>.

## Matlab/Simulink Concepts Introduced

In this lab you will:

* Explore convolution and Fourier series with the aid of interactive Matlab "apps"
* Use the `int` and `heaviside` functions from the <strong>Symbolic Toolbox</strong> to perform symbolic computation of convolution integrals and the coefficients of trigonometric Fourier series.
* Use `laplace` and `ilaplace` to solve convolution problems.
* Use `ezplot` to plot symbolic functions.
* 
## Preparation

Before we start today's lab you will need to download and install the <a href="http://www.mathworks.co.uk/matlabcentral/fileexchange/25199-graphical-demonstration-of-convolution" target="_blank">Graphical demonstration of convolution app</a>.

To install, right-click button of link as appropriate and save as to your week7/lab6 folder. Double click the downloaded zip files to unpack.

Open and run `convolutiondemo.m`.

If Matlab issues a message about the need to change the working directory or add a folder to the Matlab path. Accept the choice given.

## Lab Exercise 15: Graphical Demonstration of Convolution

In this lab exercise we will use the `convolutiondemo` app demonstrated in class as an aid to understanding and setting up the convolution integral for various systems including the step-response of an RL circuit.

### Part 1

Set up the `convolutiondemo` app as described in the notes for the computation of the Convolution Integral for Example 6.4 from the textbook illustrated below. (Refer to Example 1 in [Week 5: Contact Hour 9](href="http://cpjobling.github.io/EG-247-Resources/blob/week5/convolution.html) for the Matlab settings).

![Example 6.4](https://raw.githubusercontent.com/cpjobling/EG-247-Resources/master/portfolio/lab6/2014-03-03_1228.png)

Use the tool to confirm the convolution result given by this Matlab script: <a href="https://raw.github.com/cpjobling/EG-247-Resources/portfolio/lab6/exercise15.m" target="_blank">exercise15.m</a></p>

### Part 2

<p>Taking the script <a href="https://raw.github.com/cpjobling/EG-247-Resources/master/week6/lab5/exercise15.m" target="_blank">exercise15.m</a> as a model. Use the <em>convolutiondemo</em> tool as an aid to defining the integration limits needed to find and plot the convolution integral for the example shown below (Example 6.5 from the textbook).</p>
<p><br /> <img src="https://blackboard.swan.ac.uk/bbcswebdav/pid-1479689-dt-content-rid-1424257_2/xid-1424257_2" alt="Example 6.5" width="50%" /></p>
<p><strong>Part 3</strong></p>
<p>Repeat the procedure for example 6.6 from the textbook</p>
<p><img src="https://blackboard.swan.ac.uk/bbcswebdav/pid-1479689-dt-content-rid-1424258_2/xid-1424258_2" alt="Example 6.6" width="50%" /></p>
<p><strong>Part 4</strong></p>
<p>Adapt your procedure to determine the step response of the RC circuit given as Example 6.7 in the textbook</p>
<p><img src="https://blackboard.swan.ac.uk/bbcswebdav/pid-1479689-dt-content-rid-1424259_2/xid-1424259_2" alt="Example 6.7" width="50%" /></p>
