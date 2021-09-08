# All-Digital Phase-Locked Loops (ADPLL)
All-Digital Phase-Locked Loops (ADPLL) code in High Speed Integrated Circuit Hardware Description Language (VHDL) for a Field Programmable Gate Array (FPGA). The code is for the Intel/Altera Cyclone V FPGA.

## Auhtors
- **Wellington W. F. Sarmento** - Doctoral student of the Postgraduate Program in Electrical Engineering (PPGEE) of the Federal University of Ceará (UFC)

- **Paulo de Tarso C. Pequeno** - Master in Teleinformatics Engineering from the Federal University of Ceará (UFC). Student-observer for a PhD in Electrical Engineering at UFC)

- **Rodrigo C. Ciarlini** - Master student of the Post-Graduate Program in Electrical Engineering (PPGEE) of the Federal University of Ceará (UFC)

## Work
Work produced in the course of Advanced Microprocessor Techniques (DSP and FPGA) of the UFC PPGEE, under the supervision of PhD professor Paulo Peixoto Praça.

## Presentation
- [Keynote Format - portuguese Version](trabalho-pll.key)
- [Powerpoint Format - portuguese version](trabalho-pll.ppt)

## Files

-- adpll.vhd: main project file with all project componets
-- divfreq.vhd: frequency divider file vhdl 
-- sine_wave_gen.vhd: sine wave generator vhdl file
-- pfd.vhd: phase frequency detector vhdl  file
-- k_counter.vhd:  loop filter (K-Counter) vhdl file
-- dco.vhd: Digital controlled  oscillator vhdl  file

## Presentation Video

## References
1. Behzad Razavi, "Design of Monolithic PhaseLocked Loops and Clock Recovery CircuitsA Tutorial," in Monolithic Phase-Locked Loops and Clock Recovery Circuits: Theory and Design , IEEE, 1996, pp.1-39, doi: 10.1109/9780470545331.ch1.
2. E. Zianbetov, M. Javidan, F. Anceau and D. Galayko, E. Colinet, J. Juillard. Design and VHDL Modeling of All-Digital PLLs. 8th IEEE International NEWCAS Conference (NEWCAS’10), Montreal: Canada (2010).
3. K. Lata, M. Kumar. ADPLL Design and Implementation on FPGA. International Conference on Intelligent Systems and Signal Processing (ISSP), IEEE, 2013.
4. Gayathri M G. Design of All Digital Phase Locked Loop in VHDL. International Journal of Engineering Research and Applications (IJERA), Vol. 3, Issue 4, 2013, pp. 1074-1076.
5. Henry Young, Alex Tong, Ahmed Allam. Projeto de um DPLL. Disciplina High Level Digital ASIC Design Using CAD (EE552), Departamento de Engenharia Elétrica e de Computadores,  Universidade de Alberta, Canadá, 1999. Acessado em 10/05/2021.
6. P. E. Allen. Lecture 080 - All Digital Phase Lock Loops (ADPLL). Material da disciplina Frequency Sythesizers, The School of Electrical and Computer Engineering of Georgia Institute of Technology,2003. Acessado em: 02/07/2021.
7. M. Kumar, K. Lata. FPGA Implementation of ADPLL with Ripple Reduction Techniques. International Journal of VLSI design & Communication Systems (VLSICS) Vol.3, No.2, 2012 .

## Tools
- Altera Quartus Prime Lite Edition Version 15.1.0 (Copyright (C) 1991-2015 Altera Corporation)
- Model*Sim* Altera Starter Edition 10.4b (opyright (C) 1991-2015 Mentor Graphics Corporation)

## Operating System used for tests

Microsoft Windows 11

## Lisence
[GNU Public Lisence version v3.0](LISENCE).
