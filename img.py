from PIL import Image, ImageOps

color_img = Image.open('input.jpg').convert('RGB')

grayscale_img = color_img.convert('L')

alpha_mask = ImageOps.invert(grayscale_img)

rgba_img = color_img.convert('RGBA')
rgba_img.putalpha(alpha_mask)

rgba_img.save('output.png')
