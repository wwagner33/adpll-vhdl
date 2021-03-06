
#
# <span style="color:blue">WARNING: Work in processing!</span>
#

# All-Digital Phase-Locked Loops (ADPLL)
All-Digital Phase-Locked Loops (ADPLL) code in High Speed Integrated Circuit Hardware Description Language (VHDL) for a Field Programmable Gate Array (FPGA). The code is for the Intel/Altera Cyclone V FPGA.

## Auhtors
- **Wellington W. F. Sarmento** - Doctoral student of the Postgraduate Program in Electrical Engineering (PPGEE) of the Federal University of Ceará (UFC)

- **Paulo de Tarso C. Pequeno** - Master in Teleinformatics Engineering from the Federal University of Ceará (UFC). Student-observer for a PhD in Electrical Engineering at UFC)

- **Rodrigo C. Ciarlini** - Master student of the Post-Graduate Program in Electrical Engineering (PPGEE) of the Federal University of Ceará (UFC)

## About this work
Code produced in the course of Advanced Microprocessor Techniques (DSP and FPGA) of the UFC PPGEE, under the supervision of Prof. PhD Paulo Peixoto Praça.

## Presentation
- [PDF Format - portuguese Version](trabalho-pll.pdf)
- [Keynote Format - portuguese Version](trabalho-pll.key)
- [Powerpoint Format - portuguese version](trabalho-pll.ppt)

## Files

- [adpll.vhd](adpll.vhd): main project file with all project componets
- [divfreq.vhd](divfreq.vhd): frequency divider file vhdl 
- [sine_wave_gen.vhd](sine_wave_gen.vhd): sine wave generator vhdl file
- [pfd.vhd](pfd.vhd): phase frequency detector vhdl  file
- [k_counter.vhd](k_counter.vhd):  loop filter (K-Counter) vhdl file
- [dco.vhd](dco.vhd): Digital controlled  oscillator vhdl  file **(not completed)**

## Conclusions

## Future works

## References
1. Behzad Razavi, "Design of Monolithic PhaseLocked Loops and Clock Recovery CircuitsA Tutorial," in Monolithic Phase-Locked Loops and Clock Recovery Circuits: Theory and Design , IEEE, 1996, pp.1-39, doi: 10.1109/9780470545331.ch1.
2. E. Zianbetov, M. Javidan, F. Anceau and D. Galayko, E. Colinet, J. Juillard. Design and VHDL Modeling of All-Digital PLLs. 8th IEEE International NEWCAS Conference (NEWCAS’10), Montreal: Canada (2010).
3. K. Lata, M. Kumar. ADPLL Design and Implementation on FPGA. International Conference on Intelligent Systems and Signal Processing (ISSP), IEEE, 2013.
4. Gayathri M G. Design of All Digital Phase Locked Loop in VHDL. International Journal of Engineering Research and Applications (IJERA), Vol. 3, Issue 4, 2013, pp. 1074-1076.
5. Henry Young, Alex Tong, Ahmed Allam. Projeto de um DPLL. Disciplina High Level Digital ASIC Design Using CAD (EE552), Departamento de Engenharia Elétrica e de Computadores,  Universidade de Alberta, Canadá, 1999. Acessado em 10/05/2021.
6. P. E. Allen. Lecture 080 - All Digital Phase Lock Loops (ADPLL). Material da disciplina Frequency Sythesizers, The School of Electrical and Computer Engineering of Georgia Institute of Technology,2003. Acessado em: 02/07/2021.
7. M. Kumar, K. Lata. FPGA Implementation of ADPLL with Ripple Reduction Techniques. International Journal of VLSI design & Communication Systems (VLSICS) Vol.3, No.2, 2012 .
8. ZipCPU. Building a Numerically Controlled Oscillator. URL: [https://zipcpu.com/dsp/2017/12/09/nco.html](https://zipcpu.com/dsp/2017/12/09/nco.html). 2017.
9. SurfVHDL. How to implement NCO in VHDL. URL: [https://surf-vhdl.com/how-to-implement-nco-vhdl/](https://surf-vhdl.com/how-to-implement-nco-vhdl/). 2017
10. R.E. Best, Phase-Locked Loops – Design, Simulation, and Applications, 4thedition, McGraw-Hill, 1999.
11. Basab B Purkayastha, Kandarpa Kumar Sarma. A Digital Phase Locked Loop based Signal and Symbol Recovery System for Wireless Channel. 1stPublisher: Springer India, New DelhiISBN: 978-81-322-2040-4, DOI:10.1007/978-81-322-2041-1, URL: [link](https://www.researchgate.net/publication/271520378_A_Digital_Phase_Locked_Loop_based_Signal_and_Symbol_Recovery_System_for_Wireless_Channel), 2015. 

## Tools
- Altera Quartus Prime Lite Edition Version 15.1.0 (Copyright (C) 1991-2015 Altera Corporation)
- Model*Sim* Altera Starter Edition 10.4b (opyright (C) 1991-2015 Mentor Graphics Corporation)

## Operating System used for tests

Microsoft Windows 11

## Lisence
[GNU Public Lisence version v3.0](LISENCE).
