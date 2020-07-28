Subject: Re: How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
To: poky@lists.yoctoproject.org
From: kar_947@hotmail.fr
X-Originating-Location: Treillieres, Pays de la Loire, FR (185.10.176.241)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 Jul 2020 03:28:47 -0700
References: <20200728100506.rv3tfkpx5ic773gg@qschulz>
In-Reply-To: <20200728100506.rv3tfkpx5ic773gg@qschulz>
Message-ID: <9225.1595932127071008556@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EChBNLIXahVFnBLgZd9K"

--EChBNLIXahVFnBLgZd9K
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

Thank you very much for your answer. But, do i just replace the old URL by=
 your URL " http://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tree/r=
ecipes-kernel/linux/linux-imx.inc#n17" ( http://git.yoctoproject.org/cgit/c=
git.cgi/meta-freescale/tree/recipes-kernel/linux/linux-imx.inc#n17 )

Can you explain me what can i do in the file "linux-arm_4.1.15.bb" ?

What can i change in this part :

SRCBRANCH =3D "imx_4.1.15_2.0.0_ga"
LOCALVERSION =3D "-2.0.1"
SRCREV =3D "b63f3f52cb393e3287352cf63f0caef31a33ab63"
KERNEL_SRC ?=3D "git://git.freescale.com/imx/linux-imx.git;protocol=3Dgit"
SRC_URI =3D "${KERNEL_SRC};branch=3D${SRCBRANCH}"

Best regards

--EChBNLIXahVFnBLgZd9K
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,<br /><br />Thank you very much for your answer. But, do i just =
replace the old URL by your URL "<a style=3D"background-color: #ffffff; whi=
te-space: pre-wrap;" href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta=
-freescale/tree/recipes-kernel/linux/linux-imx.inc#n17" target=3D"_blank" r=
el=3D"noopener">http://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tr=
ee/recipes-kernel/linux/linux-imx.inc#n17"&nbsp;&nbsp;</a><br /><br />Can y=
ou explain me what can i do in the file "linux-arm_4.1.15.bb" ?&nbsp;<br />=
<br />What can i change in this part :&nbsp;<br /><br />
<div>SRCBRANCH =3D "imx_4.1.15_2.0.0_ga"</div>
<div>LOCALVERSION =3D "-2.0.1"</div>
<div>SRCREV =3D "b63f3f52cb393e3287352cf63f0caef31a33ab63"</div>
<div>KERNEL_SRC ?=3D "git://git.freescale.com/imx/linux-imx.git;protocol=
=3Dgit"</div>
<div>SRC_URI =3D "${KERNEL_SRC};branch=3D${SRCBRANCH}"<br /><br /><br />Be=
st regards&nbsp;</div>

--EChBNLIXahVFnBLgZd9K--
