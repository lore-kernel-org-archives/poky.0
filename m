Subject: Re: How to handle RDEPENDS for " libgcc_s.so.1, but no providers "
To: poky@lists.yoctoproject.org
From: "Ashish" <ashish.emailaddress@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (182.72.92.62)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 23:30:12 -0800
References: <20200116234305.GV4735@denix.org>
In-Reply-To: <20200116234305.GV4735@denix.org>
Message-ID: <19739.1579246212905038875@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XD08VFaFItoo57EJ5Vmx"

--XD08VFaFItoo57EJ5Vmx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The=C2=A0 "file-rdeps" was an important aspect.

Was able to address the issue by :-
1) Addressing ,=C2=A0AR1100-dev doesn't match the [a-z0-9.+-]+ regex [pkgn=
ame] log message

2) RDEPENDS_${PN} +=3D "glibc gtk+ libgcc"
DEPENDS +=3D " \
gtk+ \
libusb1 \
libgcc \
"

Thanks
Ashish

--XD08VFaFItoo57EJ5Vmx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The&nbsp; "file-rdeps" was an important aspect.<br /><br />Was able to addr=
ess the issue by :-<br />1) Addressing ,&nbsp;AR1100-dev doesn't match the =
[a-z0-9.+-]+ regex [pkgname] log message&nbsp;<br /><br />2) RDEPENDS_${PN}=
 +=3D "glibc gtk+ libgcc"
<div>&nbsp; &nbsp; DEPENDS +=3D " \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; gtk+ \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libusb1 \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libgcc \</div>
<div>&nbsp; &nbsp; "<br /><br />Thanks&nbsp;<br />Ashish&nbsp;</div>
<div>&nbsp;</div>

--XD08VFaFItoo57EJ5Vmx--
