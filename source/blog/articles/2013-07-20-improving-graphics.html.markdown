---
title: Generalizing output graphics
date: 2013-07-20 16:28 +05:30
tags: Prototype Development, Tools
---

Those who have tried to play with the [thinkbot-powered simulation
demo](/demo/thinkbot-api/) would have soon realised one of its
fundamental limitations: it assumes that the output quantity is a
deformation-like vector field in 3D for the purposes of
visualization. To overcome this limitation, I've started to spec out
some generalizations to [thinkbot](http://thinkbot.net/) and Mechanics
Academy's visualisation framework to allow for a wider range of output
quantities.

When implemented, you should be able to plot meshes, scalar and vector
fields (both as arrow glyphs and as warped meshes) in 2- and
3-dimensions. To help you imagine these (and to remind me of the
different cases!), I've provided some examples below from different
[FEniCS
demos](http://fenicsproject.org/documentation/dolfin/dev/python/demo/)
that motivate this upgrade:

### In 2D

<div class="row">
  <div class="col-sm-6">
    <img alt="2d-mesh" src="/assets/img/blog/plot-kinds/static/2d_mesh/dolfin_plot_0.png">
    <p class="text-center">Computational mesh</p>
  </div>
  <div class="col-sm-6">
    <img alt="2d-scalar" src="/assets/img/blog/plot-kinds/static/2d_scalar/poisson.png">
    <p class="text-center">Scalar field, as a color map</p>
  </div>
</div>
<div class="row">
  <div class="col-sm-6">
    <img alt="2d-scalar-height" src="/assets/img/blog/plot-kinds/static/2d_scalar_deformation/dolfin_plot_0.png">
    <p class="text-center">Scalar field, as colors and z-height</p>
  </div>
  <div class="col-sm-6">
    <img alt="2d-vector-arrows" src="/assets/img/blog/plot-kinds/static/2d_vector_arrows/dolfin_plot_1.png">
    <p class="text-center">Vector field, as arrow glyphs</p>
  </div>
</div>

### In 3D

<div class="row">
  <div class="col-sm-6">
    <img alt="3d-mesh" src="/assets/img/blog/plot-kinds/static/3d_mesh/dolfin_plot_0.png">
    <p class="text-center">Computational mesh</p>
  </div>
  <div class="col-sm-6">
    <img alt="3d-scalar" src="/assets/img/blog/plot-kinds/static/3d_scalar/dolfin_plot_0.png">
    <p class="text-center">Scalar field, as a color map</p>
  </div>
</div>
<div class="row">
  <div class="col-sm-6">
    <img alt="3d-vector-arrows" src="/assets/img/blog/plot-kinds/static/3d_vector_arrows/dolfin_plot_1.png">
    <p class="text-center">Vector field, as arrow glyphs</p>
  </div>
  <div class="col-sm-6">
    <img alt="3d-vector-deformation" src="/assets/img/blog/plot-kinds/static/3d_vector_deformation/dolfin_plot_0.png">
    <p class="text-center">Vector field, as mesh distortion</p>
  </div>
</div>

Stay tuned for an updated demo showing off some of this new stuff soon!
