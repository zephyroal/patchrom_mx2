.class public Landroid/filterpacks/imageproc/ShaderFunctionLibrary;
.super Ljava/lang/Object;
.source "ShaderFunctionLibrary.java"


# static fields
.field public static final ImagProcessFun_Multiply:Ljava/lang/String; = "vec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\n"

.field public static final ImageProcessFun_Blur:Ljava/lang/String; = "vec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\n"

.field public static final ImageProcessFun_Brightness:Ljava/lang/String; = "vec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\n"

.field public static final ImageProcessFun_BrightnessContrast:Ljava/lang/String; = "vec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\n"

.field public static final ImageProcessFun_CMYK:Ljava/lang/String; = "vec4 replaceColor(vec4 color,vec4 targetColor,float cOffset,float mOffset,float yOffset,float kOffset) {\n\tfloat c1 = 1.0 - color.r;\n\tfloat m1 = 1.0 - color.g;\n\tfloat y1 = 1.0 - color.b;\n\tfloat c2 = 1.0 - targetColor.r;\n\tfloat m2 = 1.0 - targetColor.g;\n\tfloat y2 = 1.0 - targetColor.b;\n\tfloat k1 = min(c1,min(m1,y1));\n\tfloat k2 = min(c2,min(m2,y2));\n\tif (k1 == 1.0) {\n\t\tc1 = 0.0;\n\t\tm1 = 0.0;\n\t\ty1 = 0.0;\n\t} else {\n\t\tc1 = (c1 - k1) / (1.0 - k1);\n\t\tm1 = (m1 - k1) / (1.0 - k1);\n\t\ty1 = (y1 - k1) / (1.0 - k1);\n\t}\n\tif (k2 == 1.0) {\n\t\tc2 = 0.0;\n\t\tm2 = 0.0;\n\t\ty2 = 0.0;\n\t} else {\n\t\tc2 = (c2 - k2) / (1.0 - k2);\n\t\tm2 =(m2 - k2) / (1.0 - k2);\n\t\ty2 = (y2 - k2) / (1.0 -k2);\n\t}\n\tif (c1 == c2 && m1 == m2 && y1 == y2 && k1== k2) {\n\t\tc1 += cOffset / 100.0;\n\t\tm1 += mOffset / 100.0;\n\t\ty1 += yOffset / 100.0;\n\t\tk1 += kOffset / 100.0;\n\t\tc1 = c1 < 0.0 ? 0.0 : (c1 > 1.0 ? 1.0 : c1);\n\t\tm1 = m1 < 0.0 ? 0.0 : (m1 > 1.0 ? 1.0 : m1);\n\t\ty1 = y1 < 0.0 ? 0.0 : (y1 > 1.0 ? 1.0 : y1);\n\t\tk1 = k1 < 0.0 ? 0.0 : (k1 > 1.0 ? 1.0 : k1);\n\t}\n\treturn vec4(1.0 - (c1 * (1.0 - k1) + k1),1.0 - (m1 * (1.0 - k1) +k1),1.0 - (y1 * (1.0 - k1) + k1),color.a);}\n"

.field public static final ImageProcessFun_ColorBalance:Ljava/lang/String; = "vec4 calColorBalance(vec4 color,float rOffset,float gOffset,float bOffset) {\n\treturn vec4(color.r + rOffset / 255.0, color.g + gOffset / 255.0, color.b + bOffset / 255.0,  color.a);\n}\n"

.field public static final ImageProcessFun_ColorLeverl:Ljava/lang/String; = "float calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\n"

.field public static final ImageProcessFun_ColorTemperature:Ljava/lang/String; = "vec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\n"

.field public static final ImageProcessFun_CrossdProcess:Ljava/lang/String; = "vec4 calCrossProcess(vec4 color) {\n\tvec3 ncolor = vec3(0.0, 0.0, 0.0);\n\tfloat value;\n\tif (color.r < 0.5) {\n\t\tvalue = color.r;\n\t} else {\n\t\tvalue = 1.0 - color.r;\n\t}\n\tfloat red = 4.0 * value * value * value;\n\tif (color.r < 0.5) {\n\t\tncolor.r = red;\n\t} else {\n\t\tncolor.r = 1.0 - red;\n\t}\n\tif (color.g < 0.5) {\n\t\tvalue = color.g;\n\t} else {\n\t\tvalue = 1.0 - color.g;\n\t}\n\tfloat green = 2.0 * value * value;\n\tif (color.g < 0.5) {\n\t\tncolor.g = green;\n\t} else {\n\t\tncolor.g = 1.0 - green;\n\t}\n\tncolor.b = color.b * 0.5 + 0.25;\n\treturn vec4(ncolor.rgb, color.a);\n}\n"

.field public static final ImageProcessFun_Curve:Ljava/lang/String; = "float calRChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordR = vec2(color,0.0);\n\tvec4 rColor = texture2D(curvemask,coordR);\n\treturn rColor.r;\n}\nfloat calGChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordG = vec2(color,0.0);\n\tvec4 gColor = texture2D(curvemask,coordG);\n\treturn gColor.g;\n}\nfloat calBChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordB = vec2(color,0.0);\n\tvec4 bColor = texture2D(curvemask,coordB);\n\treturn bColor.b;\n}\nvec4 calRGBChannelCurve(vec4 color,sampler2D curvemask) {\n\tvec2 coord = vec2( color.r, 0.0);\n\tvec4 newColor = texture2D(curvemask,coord);\n\tcolor.r = newColor.a;\n\tcoord = vec2(color.g, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.g = newColor.a;\n\tcoord = vec2(color.b, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.b = newColor.a;\n\treturn color;\n}\n"

.field public static final ImageProcessFun_HSVAdjust:Ljava/lang/String; = "vec4 calHSVAdjust(vec4 color,float hOffset,float sOffset,float vOffset) {\n\tfloat maxValue = max(max(color.r,color.g),color.b);\n\tfloat minValue = min(min(color.r,color.g),color.b);\n\tfloat v = maxValue;\n\tfloat s =0.0;\n\tif ( maxValue != 0.0) {\n\t\ts = (maxValue - minValue) * maxValue ;\n\t}\n\tfloat h=0.0;\n\tif (maxValue != minValue) {\n\t\tif (maxValue == color.r) {\n\t\t\tif (color.g >= color.b) {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue);\n\t\t\t} else {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue) +360.0;\n\t\t\t}\n\t\t} else if (maxValue == color.g) {\n\t\t\th = 60.0 * (color.b - color.r) / (maxValue - minValue) +120.0;\n\t\t} else if (maxValue == color.b) {\n\t\t\th = 60.0 * (color.r - color.g) / (maxValue - minValue) + 240.0;\n\t\t}\n\t}\n\th += hOffset;\n\ts  += sOffset;\n\tv  += vOffset;\n\tif (h < 0.0) {\n\t\th = h + 360.0;\n\t} else if (h >= 360.0){\n\t\th = h - 360.0;\n\t}\n\tif (s > 1.0) {\n\t\ts =1.0;\n\t} else if (s < 0.0){\n\t\ts = 0.0;\n\t}\n\tif (v > 1.0) {\n\t\tv = 1.0;\n\t} else if (v < 0.0) {\n\t\tv = 0.0;\n\t}\n\tvec4 newColor = color;\n\tfloat hi = mod(floor(h / 60.0),6.0);\n\tfloat f = h /60.0 - hi;\n\tfloat p = (v * (1.0 - s));\n\tfloat q = (v * (1.0 - f * s));\n\tfloat t = (v * (1.0 - (1.0 - f) * s));\n\tif (hi == 0.0 ) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = t;\n\t\tnewColor.b = p;\n\t} else if ( hi == 1.0) {\n\t\tnewColor.r = q;\n\t\tnewColor.g = v;\n\t\tnewColor.b =p;\n\t} else if (hi == 2.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = v;\n\t\tnewColor.b = t;\n\t} else if (hi == 3.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = q;\n\t\tnewColor.b = v;\n\t} else if (hi == 4.0) {\n\t\tnewColor.r = t;\n\t\tnewColor.g = p;\n\t\tnewColor.b = v;\n\t} else if (hi == 5.0) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = p;\n\t\tnewColor.b =q;\n\t}\n\treturn newColor;\n}\n"

.field public static final ImageProcessFun_Noise:Ljava/lang/String; = "float rand(vec2 loc) {\n\tfloat theta1 = dot(loc, vec2(0.9898, 0.233));\n\tfloat theta2 = dot(loc, vec2(12.0, 78.0));\n\tfloat value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n\tfloat temp = mod(197.0 * value, 1.0) + value;\n\tfloat part1 = mod(220.0 * temp, 1.0) + temp;\n\tfloat part2 = value * 0.5453;\n\tfloat part3 = cos(theta1 + theta2) * 0.43758;\n\treturn fract(part1 + part2 + part3);\n}\nvec4 addNoise(vec4 color,vec2 coord) {\n\tfloat noise = rand(coord) * 0.05 - 0.05;\n\treturn vec4(color.r + noise,color.g + noise,color.b + noise,color.a);\n}\n"

.field public static final ImageProcessFun_PhotoFilter:Ljava/lang/String; = "vec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\n"

.field public static final ImageProcessFun_Saturation:Ljava/lang/String; = "vec4 calSaturation(vec4 color,float saturation) {\n\tsaturation = saturation / 255.0;\n\tfloat maxValue = max(color.r,max(color.g,color.b));\n\tfloat minValue = min(color.r,min(color.g,color.b));\n\tfloat delta = maxValue - minValue;\n\tif (delta == 0.0) {\n\t\treturn color;\n\t}\n\tfloat value = maxValue + minValue;\n\tfloat s = 0.0;\n\tfloat l = value / 2.0;\n\tif (l < 0.5) {\n\t\ts = delta / value;\n\t} else {\n\t\ts = delta / (2.0 - value);\n\t}\n\tif (saturation > 0.0) {\n\t\tsaturation = saturation + s >= 1.0 ? s : 1.0 - saturation;\n\t\tsaturation = 1.0 / saturation - 1.0;\n\t}\n\tcolor.r = color.r + (color.r - l) * saturation;\n\tcolor.g = color.g + (color.g - l) * saturation;\n\tcolor.b = color.b + (color.b - l) * saturation;\n\treturn color;\n}\n"

.field public static final ImageProcessFun_VignetteFilter:Ljava/lang/String; = "vec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\n"

.field public static final ImageProcessFun_newSaturation:Ljava/lang/String; = "vec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
