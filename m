Subject: Setcap #yocto
To: poky@lists.yoctoproject.org
From: "Luigi Scagnet" <ska@linux.it>
X-Originating-Location: Rovereto, Trentino-Alto Adige, IT (5.94.58.216)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Sep 2020 06:23:26 -0700
Message-ID: <s9Xi.1599053006104315299.fbhU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="I5yOTT9Fw3ILGE4zT8sC"

--I5yOTT9Fw3ILGE4zT8sC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I've builded a rootFS for my custom board based on i.Mx6UL and Yocto Zeus =
and Linux 4.14 imx, when i try the ping command with non root user I have t=
he follow problem:

admin@797c:~$ ping -c2 8.8.8.8
ping: socket: Address family not supported by protocol

if I try with root user:

root@797c:~$=C2=A0 ping -c2 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=3D1 ttl=3D115 time=3D23.7 ms
64 bytes from 8.8.8.8: icmp_seq=3D2 ttl=3D115 time=3D23.1 ms

Looking at some online docs seems a problem of "file capabilities" then I'=
ve tried this:

root@797c:~$ setcap cap_net_raw+ep /bin/ping.iputils

admin@797c:~$ ping -c2 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=3D1 ttl=3D115 time=3D23.6 ms
64 bytes from 8.8.8.8: icmp_seq=3D2 ttl=3D115 time=3D23.1 ms

How I can do the setcap command during the build process? I need to have a=
 rootfs.tar.gz ready to use.

Thanks in advance

--I5yOTT9Fw3ILGE4zT8sC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everybody, <br /><br />I've builded a rootFS for my custom board based o=
n i.Mx6UL and Yocto Zeus and Linux 4.14 imx, when i try the ping command wi=
th non root user I have the follow problem: <br /><br />admin@797c:~$ ping =
-c2 8.8.8.8 <br />ping: socket: Address family not supported by protocol <b=
r /><br />if I try with root user: <br /><br />root@797c:~$&nbsp; ping -c2 =
8.8.8.8 <br />PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data. <br />64 bytes f=
rom 8.8.8.8: icmp_seq=3D1 ttl=3D115 time=3D23.7 ms <br />64 bytes from 8.8.=
8.8: icmp_seq=3D2 ttl=3D115 time=3D23.1 ms <br /><br />Looking at some onli=
ne docs seems a problem of "file capabilities" then I've tried this: <br />=
<br />root@797c:~$ setcap cap_net_raw+ep /bin/ping.iputils <br /><br />admi=
n@797c:~$ ping -c2 8.8.8.8 <br />PING 8.8.8.8 (8.8.8.8) 56(84) bytes of dat=
a. <br />64 bytes from 8.8.8.8: icmp_seq=3D1 ttl=3D115 time=3D23.6 ms <br /=
>64 bytes from 8.8.8.8: icmp_seq=3D2 ttl=3D115 time=3D23.1 ms <br /><br />H=
ow I can do the setcap command during the build process? I need to have a r=
ootfs.tar.gz ready to use. <br /><br /><br />Thanks in advance&nbsp;

--I5yOTT9Fw3ILGE4zT8sC--
