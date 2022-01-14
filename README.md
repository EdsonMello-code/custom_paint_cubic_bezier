# Cubic bezier

<p style="font-size: 18px; color: red;">
  Warning: here we use coordinates 2d in Cartesian plan, which we define point on plan.
</p>

## Overview

Using quadratic bezier and cubic bezier in flutter with custom paint.



<div align="center">
  <img src="./assets/screenshot.gif" >
</div>


## Explanation

### Quadratic cubic bezier has three points:
  <div style="height:8px;"></div>

  - the first point is (0, 0)(added by default);
  - the second point is (endPointX, endPointY);
  - the third point is (controllerPointX, controllerPointY);

### Cubic bezier has four points:
  <div style="height:8px;"></div>
  
  - the first point is (0, 0)(added by default);
  - the second point is (endPointX, endPointY)
  - the third point is (controllerPointX1, controllerPointY1)
  - the fourth point is (controllerPointX2, controllerPointY2)
  
<div style="margin-top: 100px;" align="center">
  <img src="https://i.stack.imgur.com/EH9dB.jpg" >
</div>
