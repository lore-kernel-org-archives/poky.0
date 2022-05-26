Subject: grub config does not match kernel image name after apt upgrade
To: poky@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 May 2022 01:50:42 -0700
Message-ID: <J0hn.1653555042033123311.4KcT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hUSJTUHzOABycRYtSyhI"

--hUSJTUHzOABycRYtSyhI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In our custom x86 image, it runs fine after initial deploy, but if we then =
apt update && apt upgrade and receive a new kernel the installed kernel nam=
e does not match that in the grub configuration and thus boot fails if not =
manually corrected. I don't know if this is a mis-configuration in our buil=
d or a bug upstream. any ideas?

yocto:~$ cat /boot/EFI/BOOT/grub.cfg
serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1
default=3Dboot
timeout=3D5
menuentry 'boot'{
linux /bzImage root=3DPARTUUID=3D52cb2dd8-ef93-4f4a-8135-1e3326f181ac rootw=
ait rootfstype=3Dext4 console=3DttyS0,115200 console=3Dtty0
}

yocto:/boot$ ls -lht
-rwxr-xr-x =C2=A0=C2=A0=C2=A01 root =C2=A0=C2=A0=C2=A0=C2=A0root =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A09.1M Apr 28 13:26 bzImage-5.15.36-yocto-st=
andard
-rwxr-xr-x =C2=A0=C2=A0=C2=A01 root =C2=A0=C2=A0=C2=A0=C2=A0root =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A09.1M Feb 15 14:19 bzImage-5.15.22-yocto-st=
andard
drwxr-xr-x =C2=A0=C2=A0=C2=A03 root =C2=A0=C2=A0=C2=A0=C2=A0root =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A02.0K Apr =C2=A05 =C2=A02011 EFI

--hUSJTUHzOABycRYtSyhI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In our custom x86 image, it runs fine after initial deploy, but if we then =
apt update &amp;&amp; apt upgrade and receive a new kernel the installed ke=
rnel name does not match that in the grub configuration and thus boot fails=
 if not manually corrected. I don't know if this is a mis-configuration in =
our build or a bug upstream. any ideas?<br /><br />
<div>
<div><span style=3D"font-family: monospace;"><span style=3D"color: #000000;=
">yocto:~$ cat /boot/EFI/BOOT/grub.cfg &nbsp;</span><br />serial --unit=3D0=
 --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1 <br />default=3Dboot =
<br />timeout=3D5 <br />menuentry 'boot'{ <br />linux /bzImage root=3DPARTU=
UID=3D52cb2dd8-ef93-4f4a-8135-1e3326f181ac rootwait rootfstype=3Dext4 conso=
le=3DttyS0,115200 console=3Dtty0 <br />}<br /><br /></span><span style=3D"f=
ont-family: monospace;"><span style=3D"color: #000000;">yocto:/boot$ ls -lh=
t </span><br />-rwxr-xr-x &nbsp;&nbsp;&nbsp;1 root &nbsp;&nbsp;&nbsp;&nbsp;=
root &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.1M Apr 28 13:26 bzImage-5.=
15.36-yocto-standard <br />-rwxr-xr-x &nbsp;&nbsp;&nbsp;1 root &nbsp;&nbsp;=
&nbsp;&nbsp;root &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.1M Feb 15 14:1=
9 bzImage-5.15.22-yocto-standard <br />drwxr-xr-x &nbsp;&nbsp;&nbsp;3 root =
&nbsp;&nbsp;&nbsp;&nbsp;root &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.0K=
 Apr &nbsp;5 &nbsp;2011 EFI<br /><br /></span><span style=3D"font-family: m=
onospace;"><br /></span></div>
</div>

--hUSJTUHzOABycRYtSyhI--
