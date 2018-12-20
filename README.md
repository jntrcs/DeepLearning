# DeepLearning
Projects for the CS501 Deep Learning class

Lab4-- This lab we were given images of cells (see example in .ipynb) where some were cancerous and some were normal. A radiologist 
had gone through and identified the cancerous cells. The output of our network was a tensor indicating the probability that each pixel
in the image was cancerous or not.

Lab 5--This lab we attempted to do style transfer where we took the style of a piece of art, and applied it to another image. The idea is that by creating a loss function that mixes "style loss" from one image and "content loss" from another, we can get an image close to both. The results in practice were just okay. If I started with a completely white image, I could get it to form the image that clearly showed the houses and some of the "starry night" sky that I was going for, but if I started with the content image it didn't seem to pick up any of the style no matter how long I trained. I needed more time than I had to make sure I was getting the gram matrix for the style loss function right.

Lab 6--GRU to predict character by character from a given priming stream. Trained on the A words in the dictionary as well as the text of the Book of Alma in the Book of Mormon.

Lab 7--NOT MY NETWORK. This file was created by Alexander Rush to do machine translation, the only changes I made were to change the training dataset to General Conference talks (https://www.lds.org/general-conference?lang=eng). The translation was Spanish to English. Unsurprisingly, after 4 hours of training, this of all the labs gave me by far the best results. The translation wasn't perfect, but I could definitely follow the talk without getting totally lost.

Lab 8--WGAN. Implemented a Wassertein GAN to generate faces from the celebrity face dataset used on the discriminator. Not extremely successful.

Lab 9--Deep Reinforcement Learning PPO network. Used the Gym API to create an environment that I trained the network to choose policies for.

Final--Built a GAN to generate realistic looking policies for auto insurance. 
