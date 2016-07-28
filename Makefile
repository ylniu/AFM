FC=g95

AFM: AFM.o number_of_lines.o smooth.o
	$(FC) -o $@ $^

%.o: %.f90
	$(FC) -c $<

clean:
	del *.o