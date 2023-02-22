# simple explanation of ssh config file

the `config` file allows automating ssh connections, e.g.,
```
ssh ffernandez@mail.famaf.unc.edu.ar
```
can be shortened to
```
ssh famaf
```
to avoid having to enter the password each time you connect, copy the content of 
the `id_rsa.pub` key to the remote host `.ssh/authorized_keys` file, where the 
`id_rsa.pub` file can be generated through the openssh authentication key 
utility `ssh-keygen`.
