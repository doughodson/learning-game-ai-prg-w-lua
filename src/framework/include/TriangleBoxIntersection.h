/**
 * The source code in this file is attributed to Tomas Akenine-Möller.
 * http://cs.lth.se/english/contact/jesper-pedersen-notander/tomas-akenine-moller/
 * http://fileadmin.cs.lth.se/cs/Personal/Tomas_Akenine-Moller/code/
 */

#ifndef __FRAMEWORK_TRIANGLE_BOX_INTERSECTION_HPP__
#define __FRAMEWORK_TRIANGLE_BOX_INTERSECTION_HPP__

int triBoxOverlap(
    float boxcenter[3], float boxhalfsize[3], float triverts[3][3]);

#endif
