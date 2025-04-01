
<a id="T_DEF03274"></a>

# <span style="color:rgb(213,80,0)">Computer Vision Basics</span>
<a id="H_053613DF"></a>


[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/94555-computer-vision-basics) or [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Computer-Vision-Basics&project=ComputerVisionBasics.prj&file=README.mlx)

[![MATLAB Versions Tested](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FMathWorks-Teaching-Resources%2FComputer-Vision-Basics%2Frelease%2FImages%2FTestedWith.json)](https://MathWorks-Teaching-Resources.github.io/Computer-Vision-Basics)

**Curriculum Module**

_Created with R2025a. Compatible with R2025a and later releases._

# Information

This curriculum module contains interactive [MATLAB® live scripts](https://www.mathworks.com/products/matlab/live-editor.html) centered on the fundamentals of image segmentation.

<a id="H_F00D98E4"></a>

## Background

You can use these live scripts as demonstrations in lectures, class activities, or interactive assignments outside class. This module covers image segmentation techniques, covering edge detection, region\-based and clustering methods, the integration of texture and color, optical flow algorithms, and practical application scenarios to enhance segmentation accuracy and effectiveness. It also includes examples.


The instructions inside the live scripts will guide you through the exercises and activities. Get started with each live script by running it one section at a time. To stop running the script or a section midway (for example, when an animation is in progress), use the <img src="Images/EndIcon.png" width="19" alt="EndIcon.png"> Stop button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.

## Contact Us

Solutions are available upon instructor request. Contact the [MathWorks teaching resources team](mailto:onlineteaching@mathworks.com) if you would like to request solutions, provide feedback, or if you have a question.

<a id="H_30BC7141"></a>

## Prerequisites

This module assumes knowledge of first year calculus, linear algebra. There is minimal MATLAB knowledge required for these scripts, but you can use [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) as a resource to acquire familiarity with live scripts and MATLAB syntax.

<a id="H_330E72C3"></a>

## Getting Started
### Accessing the Module
### **On MATLAB Online:**

Use the [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Computer-Vision-Image-Basics&project=ComputerVisionBasics.prj) link to download the module. You will be prompted to log in or create a MathWorks account. The project will be loaded, and you will see an app with several navigation options to get you started.

### **On Desktop:**

Download or clone this repository. Open MATLAB, navigate to the folder containing these scripts and double\-click on [ComputerVisionBasics.prj](<matlab: openProject("ComputerVisionBasics.prj")>). It will add the appropriate files to your MATLAB path and open an app that asks you where you would like to start. 


Ensure you have all the required products ([listed below](#H_E850B4FF)) installed. If you need to include a product, add it using the Add\-On Explorer. To install an add\-on, go to the **Home** tab and select  <img src="Images/AddOnsIcon.png" width="16" alt="AddOnsIcon.png"> **Add-Ons** > **Get Add-Ons**. 

<a id="H_E850B4FF"></a>

## Products

MATLAB® is used throughout. Tools from the Image Processing Toolbox™, Computer Vision Toolbox™, and Statistics and Machine Learning Toolbox™ are used frequently as well.

<a id="H_E8C62B23"></a>

# Scripts
## **IntrotoImageSegmentation.mlx (planned)**
||||
| :-: | :-- | :-- |
| <img src="Images/image_3.png" width="171" alt="image_3.png"> <br>  | **In this script, students will...** <br> $\bullet$ Examine three image segmentation methods.  <br> $\bullet$ Work through step\-by\-step examples of applying image segmentation. <br> $\bullet$ Distinguish appropriate image segmentation technique based on scenario. <br>  | **Academic disciplines** <br> $\bullet$ Robotics <br> $\bullet$ Computer Vision <br> $\bullet$ Image Processing <br>   |

## [**EdgeDetectionTheory.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Computer-Vision-Basics&project=ComputerVisionBasics.prj&file=Scripts/EdgeDetectionTheory.mlx)
||||
| :-- | :-- | :-- |
| <img src="Images/image_4.png" width="171" alt="image_4.png"> <br>  | **In this script, students will...** <br> $\bullet$ Identify and describe the characteristics and sources of edges. <br> $\bullet$ Characterize edges in 1D and 2D. <br> $\bullet$ Detect edges amid noise. <br>  | **Academic disciplines** <br> $\bullet$ Computer Vision <br> $\bullet$ Image Processing <br> $\bullet$ Medical Imaging <br>             <br>   |

## [**EdgeDetectionApplied.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Computer-Vision-Basics&project=ComputerVisionBasics.prj&file=Scripts/EdgeDetectionApplied.mlx) 
||||
| :-- | :-- | :-- |
| <img src="Images/image_5.png" width="171" alt="image_5.png"> <br>  | **In this script, students will...** <br> $\bullet$ Evaluate edge detection methods. <br> $\bullet$ Apply edge detection techniques. <br>  | **Academic disciplines** <br> $\bullet$ Computer Vision <br> $\bullet$ Image Processing <br>             <br>   |

## **RegionSegmentation.mlx (planned)**
||||
| :-: | :-- | :-- |
| <img src="Images/image_6.png" width="172" alt="image_6.png"> <br>  | **In this script, students will...** <br> $\bullet$ Explore region segmentation techniques. <br> $\bullet$ Compare and contrast including histogram, k\-means clustering, and graph\-cut segmentation techniques.  <br>  | **Academic disciplines** <br> $\bullet$ Computer Vision <br> $\bullet$ Image Processing <br>   |

## **OpticalFlow.mlx (planned)**
||||
| :-: | :-- | :-- |
| <img src="Images/image_7.png" width="67" alt="image_7.png"> <br>  | **In this script, students will...** <br> $\bullet$ Explore use cases for optical flow for image segmentation. <br> $\bullet$ Implement optical flow algorithms for motion detection including Lucas\-Kanade, Horn\-Schunk, and Lucas\-Kanade Derivative of Gaussian methods. <br> $\bullet$ Compare and contrast optical flow techniques. <br>  | **Academic disciplines** <br> $\bullet$ Computer Vision <br> $\bullet$ Image Processing <br>   |

<a id="H_F61733D7"></a>

# License

The license for this module is available in the [LICENSE.md](https://github.com/MathWorks-Teaching-Resources/Computer-Vision-Basics/blob/release/LICENSE.md).

# Related Courseware Modules
<a id="H_868F5748"></a>

## [Convolution in Digital Image Processing](https://www.mathworks.com/matlabcentral/fileexchange/97112-convolution-in-digital-signal-processing)
|||
| :-- | :-- |
| <img src="Images/image_8.png" width="171" alt="image_8.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/97112-convolution-in-digital-signal-processing)  <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Convolution-Digital-Signal-Processing&project=Convolution.prj&file=README.mlx)  <br> [GitHub](https://github.com/https://github.com/MathWorks-Teaching-Resources/Convolution-Digital-Signal-Processing) <br>   |

<a id="H_868F5748"></a>

## [Calculus Derivatives](https://www.mathworks.com/matlabcentral/fileexchange/99249-calculus-derivatives?s_tid=srchtitle)
|||
| :-- | :-- |
| <img src="Images/image_11.png" width="171" alt="image_11.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/99249-calculus-derivatives)  <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Calculus-Derivatives&project=Derivatives.prj&file=README.mlx)  <br> [GitHub](https://github.comhttps//github.com/MathWorks-Teaching-Resources/Calculus-Derivatives) <br>   |

<a id="H_868F5748"></a>

## [Machine Learning Methods: Clustering](https://www.mathworks.com/matlabcentral/fileexchange/135381-machine-learning-methods-clustering)
|||
| :-- | :-- |
| <img src="Images/image_14.png" width="171" alt="image_14.png"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/135381-machine-learning-methods-clustering)  <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Machine-Learning-Methods-Clustering&project=MLMethodsClustering.prj&file=README.mlx)  <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Machine-Learning-Methods-Clustering) <br>   |


Or feel free to explore our other [modular courseware content](https://www.mathworks.com/matlabcentral/fileexchange/?q=tag%3A%22courseware+module%22&sort=downloads_desc_30d).

# Educator Resources
-  [Educator Page](https://www.mathworks.com/academia/educators.html) 
<a id="H_0FA5DA18"></a>

# Contribute 

Looking for more? Find an issue? Have a suggestion? Please contact the [MathWorks teaching resources team](mailto:%20onlineteaching@mathworks.com). If you want to contribute directly to this project, you can find information about how to do so in the [CONTRIBUTING.md](https://github.com/MathWorks-Teaching-Resources/Computer-Vision-Image-Basics/blob/release/CONTRIBUTING.md)  page on GitHub.


 *©* Copyright 2025 The MathWorks, Inc.


