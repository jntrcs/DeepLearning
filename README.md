# DeepLearning
Projects for the CS501 Deep Learning class

Lab4-- This lab we were given images of cells (see example in .ipynb) where some were cancerous and some were normal. A radiologist 
had gone through and identified the cancerous cells. The output of our network was a tensor indicating the probability that each pixel
in the image was cancerous or not.

Lab 5--This lab we attempted to do style transfer where we took the style of a piece of art, and applied it to another image. The idea is that by creating a loss function that mixes "style loss" from one image and "content loss" from another, we can get an image close to both. The results in practice were just okay. If I started with a completely white image, I could get it to form the image that clearly showed the houses and some of the "starry night" sky that I was going for, but if I started with the content image it didn't seem to pick up any of the style no matter how long I trained. I needed more time than I had to make sure I was getting the gram matrix for the style loss function right.
