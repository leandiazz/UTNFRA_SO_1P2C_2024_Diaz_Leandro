#!/bin/bash

sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A1
echo "p1c2_2024_A1:alumno1" | sudo chpasswd

sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A2
echo "p1c2_2024_A2:alumno2" | sudo chpasswd

sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A3
echo "p1c2_2024_A3:alumno3" | sudo chpasswd

sudo useradd -m -G p1c2_2024_gProfesores p1c2_2024_P1
echo "p1c2_2024_P1:profesores" | sudo chpasswd

sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod -R 750 /Examenes-UTN/alumno_1

sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod -R 770 /Examenes-UTN/alumno_2

sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod -R 700 /Examenes-UTN/alumno_3

sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod -R 770 /Examenes-UTN/profesores

sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1
