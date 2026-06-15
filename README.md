# matlab-wave-propagation-simulation
MATLAB simulation of electromagnetic wave propagation and reflection, visualized as an animated video using time-stepped field calculations and VideoWriter

# Wave Propagation and Reflection Simulation in MATLAB

This project simulates the propagation of a one-dimensional electromagnetic wave and its reflection from a boundary. The wave behavior is visualized over time and exported as a video file using MATLAB's `VideoWriter` functionality.

The simulation models both the incident and reflected waves, as well as their superposition after reflection, providing a dynamic visualization of wave behavior in a bounded medium.

---

## Simulation Overview

The system models a sinusoidal traveling wave defined by:

- Angular frequency: ω = 2πf
- Wave number: β
- Time-dependent propagation along the spatial axis z

The wave is computed at each time step and plotted as an evolving spatial profile.

---

## Features

- Time-domain simulation of wave propagation
- Visualization of:
  - Incident wave
  - Reflected wave
  - Superposition of waves after reflection
- Dynamic boundary condition (reflection at a fixed position)
- Real-time frame generation
- Export to MP4 video using `VideoWriter`

---

## Physical Interpretation

The simulation represents a traveling wave:

- Before reflection: a single forward-propagating sinusoidal wave
- After reaching the boundary: a reflected wave traveling in the opposite direction
- Combined field shows interference between incident and reflected waves

This behavior is commonly used to model electromagnetic waves, transmission lines, and basic wave physics systems.

---

## Output

The script generates:

- A sequence of frames showing wave evolution over time
- An MP4 video file (`testmovie.mp4`) containing the full simulation

Each frame includes:
- Spatial wave profile along the z-axis
- Time-stamped visualization
- Color-coded representation of incident and reflected waves

---

## Requirements

- MATLAB (recommended R2020 or newer)
- No additional toolboxes required beyond base MATLAB
- `VideoWriter` support enabled

---

## How to Run

1. Open the script in MATLAB
2. Run the file
3. The simulation will generate an MP4 video automatically in the working directory

---

## Parameters

Key adjustable parameters in the script:

- `f_c` : carrier frequency
- `beta` : propagation constant
- `frame` : number of simulation steps
- `p` : position of reflecting boundary
- time step resolution (`0.0205`)

---

## Purpose

This project was created to demonstrate:
- Numerical simulation of wave propagation
- Visualization of electromagnetic wave behavior
- Basic animation techniques in MATLAB
- Interaction of incident and reflected waves

---

## Future Improvements

- Implement absorbing boundary conditions
- Extend to 2D wave propagation
- Add animation controls (pause, speed adjustment)
- Improve physical accuracy using wave equation discretization methods
