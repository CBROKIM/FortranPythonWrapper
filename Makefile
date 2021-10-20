.PHONY: default
default: build test clean
	 

F90 = gfortran#/u4/l23/anaconda3/bin/gfortran
F2PY = f2py#/u4/l23/anaconda3/bin/f2py

build: modeling
modeling: 3dfdm8th_time_modeling.f90
	${F2PY} --f90exec=${F90} -m $@ -c $<

eikonal: eikonal.f90
	${F2PY} --f90exec=${F90} -m $@ -c $<

fibo: fibo.f90
	${F2PY} --f90exec=${F90} -m $@ -c $<

