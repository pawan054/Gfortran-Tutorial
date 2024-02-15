program marksheet
implicit none
real::a,b,c,Gp1,Gp2,Gp3,Hp1,Hp2,Hp3,Jp1,Jp2,Jp3,Kp1,Kp2,Kp3,Mp1,Mp2,Mp3,Np1,Np2,Np3,sgpa
character(len=50):: grade,name1,roll,level,redg,campus,semster
write(*,*) 'Enter your name                                                                                       '
read(*,*) name1
write(*,*) 'Enter your exam roll number                                                                                      '
read(*,*) roll
write(*,*) 'Enter your level of study                                                                                      '
read(*,*) level
write(*,*) 'Enter your redgistration number                                                                                     '
read(*,*) redg
write(*,*) 'Enter your campus name                                                                                       '
read(*,*) campus
write(*,*) 'Enter your semester                                                                                       '
read(*,*) semster
write(*,*) 'Enter the score of QFT in 1st term :                                                            '
read(*,*) Gp1
write(*,*) 'Enter the score of EDs II in 1st term :                                                         '
read(*,*) Hp1
write(*,*) 'Enter the score of Math Physics in 1st term :                                                   '
read(*,*) Jp1
write(*,*) 'Enter the score of Computational lab in 1st term :                                              '
read(*,*) Kp1
write(*,*) 'Enter the score of Term paper :                                                                 '
read(*,*) Mp1
write(*,*) 'Enter the score of Advanced solid state physics in 1st term :                                   '
read(*,*) Np1
write(*,*) 'Enter the score of QFT in 2nd term :                                                            '
read(*,*) Gp2
write(*,*) 'Enter the score of EDs II in 2nd term :                                                         '
read(*,*) Hp2
write(*,*) 'Enter the score of Math Physics in 2nd term :                                                   '
read(*,*) Jp2
write(*,*) 'Enter the score of Computational lab in 2nd term :                                              '
read(*,*) Kp2
write(*,*) 'Enter the score of Term paper :                                                                 '
read(*,*) Mp2
write(*,*) 'Enter the score of Advanced solid state physics in 2nd term :                                   '
read(*,*) Np2
write(*,*) 'Enter the score of QFT in final term :                                                          '
read(*,*) Gp3
write(*,*) 'Enter the score of EDs II in final term :                                                       '
read(*,*) Hp3
write(*,*) 'Enter the score of Math Physics in final term :                                                 '
read(*,*) Jp3
write(*,*) 'Enter the score of Computational lab in Final term :                                            '
read(*,*) Kp3
write(*,*) 'Enter the score of Term paper :                                                                 '
read(*,*) Mp3
write(*,*) 'Enter the score of Advanced solid state physics in final term :                                 '
read(*,*) Np3
if (Gp1>=4.0) then 
grade = 'A'
else if (Gp1>=3.7) then
grade = 'A-'
else if (Gp1>=3.6) then 
grade = 'B+'
else if (Gp1>=3.0) then 
grade = 'B'
else if (Gp1>=2.7) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Hp1>=90.) then 
grade = 'A'
else if (Hp1>=80) then
grade = 'A-'
else if (Hp1>=70) then 
grade = 'B+'
else if (Hp1>=60) then 
grade = 'B'
else if (Hp1>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Jp1>=90.) then 
grade = 'A'
else if (Jp1>=80) then
grade = 'A-'
else if (Jp1>=70) then 
grade = 'B+'
else if (Jp1>=60) then 
grade = 'B'
else if (Jp1>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Kp1>=90.) then 
grade = 'A'
else if (Kp1>=80) then
grade = 'A-'
else if (Kp1>=70) then 
grade = 'B+'
else if (Kp1>=60) then 
grade = 'B'
else if (Kp1>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Mp1>=90.) then 
grade = 'A'
else if (Mp1>=80) then
grade = 'A-'
else if (Mp1>=70) then 
grade = 'B+'
else if (Mp1>=60) then 
grade = 'B'
else if (Mp1>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Np1>=90.) then 
grade = 'A'
else if (Np1>=80) then
grade = 'A-'
else if (Np1>=70) then 
grade = 'B+'
else if (Np1>=60) then 
grade = 'B'
else if (Np1>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Gp2>=90.) then 
grade = 'A'
else if (Gp2>=80) then
grade = 'A-'
else if (Gp2>=70) then 
grade = 'B+'
else if (Gp2>=60) then 
grade = 'B'
else if (Gp2>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Hp2>=90.) then 
grade = 'A'
else if (Hp2>=80) then
grade = 'A-'
else if (Hp2>=70) then 
grade = 'B+'
else if (Hp2>=60) then 
grade = 'B'
else if (Hp2>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Jp2>=90.) then 
grade = 'A'
else if (Jp2>=80) then
grade = 'A-'
else if (Jp2>=70) then 
grade = 'B+'
else if (Jp2>=60) then 
grade = 'B'
else if (Jp2>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Kp2>=90.) then 
grade = 'A'
else if (Kp2>=80) then
grade = 'A-'
else if (Kp2>=70) then 
grade = 'B+'
else if (Kp2>=60) then 
grade = 'B'
else if (Kp2>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Mp2>=90.) then 
grade = 'A'
else if (Mp2>=80) then
grade = 'A-'
else if (Mp2>=70) then 
grade = 'B+'
else if (Mp2>=60) then 
grade = 'B'
else if (Mp2>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Np2>=90.) then 
grade = 'A'
else if (Np2>=80) then
grade = 'A-'
else if (Np2>=70) then 
grade = 'B+'
else if (Np2>=60) then 
grade = 'B'
else if (Np2>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Gp3>=90.) then 
grade = 'A'
else if (Gp3>=80) then
grade = 'A-'
else if (Gp3>=70) then 
grade = 'B+'
else if (Gp3>=60) then 
grade = 'B'
else if (Gp3>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Hp3>=90.) then 
grade = 'A'
else if (Hp3>=80) then
grade = 'A-'
else if (Hp3>=70) then 
grade = 'B+'
else if (Hp3>=60) then 
grade = 'B'
else if (Hp3>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Jp3>=90.) then 
grade = 'A'
else if (Jp3>=80) then
grade = 'A-'
else if (Jp3>=70) then 
grade = 'B+'
else if (Jp3>=60) then 
grade = 'B'
else if (Jp3>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Kp3>=90.) then 
grade = 'A'
else if (Kp3>=80) then
grade = 'A-'
else if (Kp3>=70) then 
grade = 'B+'
else if (Kp3>=60) then 
grade = 'B'
else if (Kp3>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Mp3>=90.) then 
grade = 'A'
else if (Mp3>=80) then
grade = 'A-'
else if (Mp3>=70) then 
grade = 'B+'
else if (Mp3>=60) then 
grade = 'B'
else if (Mp3>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
if (Np3>=90.) then 
grade = 'A'
else if (Np3>=80) then
grade = 'A-'
else if (Np3>=70) then 
grade = 'B+'
else if (Np3>=60) then 
grade = 'B'
else if (Np3>=50) then 
grade = 'B-'
else 
grade = 'F'
end if
sgpa = (Gp1+Gp2+Gp3+Hp1+Hp2+Hp3+Jp1+Jp2+Jp3+Kp1+Kp2+Kp3+Mp1+Mp2+Mp3+Np1+Np2+Np3)/51.
write(*,*) ' We have printed your Gradesheet, Here you go !'
write(*,*) '                                                                                                '
write(*,*) '                                                                                                '
write(*,*) '                                                                                                '
write(*,*) '                                             ___/\___                                           '
write(*,*) '                                             \ /  \ /                                           '
write(*,*) '                                              \ TU \                                            '
write(*,*) '                                             /_\__/_\                                           '
write(*,*) '                                                \/                                              '
write(*,*) '                                                                                                '
write(*,*) '                                       Tribhuvan University                                     '
write(*,*) '                                 Institute of science and Technology                            '
write(*,*) '                                           Office of Dean                                       '
write(*,*) '                                                                                                '
write(*,*) '                                                                                                '
write(*,*) '                                    Semester Examination 2080                                   '
write(*,*) '                                                                                                '
write(*,*) 'Name of Student: ',name1,'                                      Exam Roll No: ',roll,'          '
write(*,*) 'Level: ',level,'                                                T.U.Regd No: ',redg,'           '
write(*,*) 'Campus: ',campus,'                                              Semester: ',semster,'           '
write(*,*) '                                                                                                '
write(*,*) '                                            Grade Sheet                                         '
write(*,*) '                                                                                                '
write(*,*) '_________________________________________________________________________________________________________'
write(*,*) '|        |                    |       |    1st Term         |      2nd Term       |  Final Term         |'
write(*,*) '|        |                    |       |_____________________|_____________________|_____________________|'
write(*,*) '|Code No.|    Course Title    |Cr.Hrs.|Grade Point|Grade    |Grade Point|  Grade  |Grade Point|Grade    |'
write(*,*) '|________|____________________|_______|___________|_________|___________|_________|___________|_________|'
write(*,*) '|PHY601  |Quantum Field Theory|   3   |  ',Gp1,'  |',grade,'|',Gp2,'    |',grade,'|',Gp3,'    |',grade,'|'
write(*,*) '|________|____________________|_______|___________|_________|___________|_________|___________|_________|'
write(*,*) '|PHY602  |Elecgrodynamics II  |   3   |  ',Hp1,'  |',grade,'|',Hp2,'    |',grade,'|',Hp3,'    |',grade,'|'
write(*,*) '|________|____________________|_______|___________|_________|___________|_________|___________|_________|'
write(*,*) '|PHY603  |Math Physics        |   3   |  ',Jp1,'  |',grade,'|',Jp2,'    |',grade,'|',Jp3,'    |',grade,'|'
write(*,*) '|________|____________________|_______|___________|_________|___________|_________|___________|_________|'
write(*,*) '|PHY604  |Computational Lab   |   4   |  ',Kp1,'  |',grade,'|',Kp2,'    |',grade,'|',Kp3,'    |',grade,'|'
write(*,*) '|________|____________________|_______|___________|_________|___________|_________|___________|_________|'
write(*,*) '|PHY605  |Term Paper (III)    |   2   |  ',Mp1,'  |',grade,'|',Mp2,'    |',grade,'|',Mp3,'    |',grade,'|'
write(*,*) '|________|____________________|_______|___________|_________|___________|_________|___________|_________|'
write(*,*) '|PHY611  |Adv. Solid State PHY|   2   |  ',Np1,'  |',grade,'|',Np2,'    |',grade,'|',Np3,'    |',grade,'|'
write(*,*) '|________|____________________|_______|___________|_________|___________|_________|___________|_________|'
write(*,*) '                                                                                                         '
write(*,*) '                                                                                         ______________  '
write(*,*) '                                                                                        |SGPA: ',sgpa,'| '
write(*,*) '                                                                                        |______________| '
write(*,*) '                                                                                                         '
write(*,*) '                                                                                                         '
write(*,*) ' Verified by:                                                                          ________________  '
write(*,*) ' Date: 22 Novemember 2023                                                               Assistant Dean   '

end program marksheet
