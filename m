Subject: Re: [yocto][poky]: Issue addng libgloss in .bb file
To: poky@lists.yoctoproject.org
From: nagesh.shamnur@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.212.227)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Jul 2021 23:04:47 -0700
References: <3e0bab6e-c12d-8245-38ef-92ccf775e5eb@gmail.com>
In-Reply-To: <3e0bab6e-c12d-8245-38ef-92ccf775e5eb@gmail.com>
Message-ID: <30993.1627452287525575736@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zulr6X5cTvWM5Pu8VE7n"

--zulr6X5cTvWM5Pu8VE7n
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On 7/27/21 8:09 AM, nagesh.shamnur@gmail.com wrote:

>=20
> dear group,
> I am new to this group and i am using poky from dunfelll branch. In my .=
bb
> file when i am adding DEPENDS =3D "libgcc newlib libgloss", newlib
> compilation is sucessful and is available in target sysroot, however
> libgloss build is failing with the following error. i checked the
> .libgloss .bb file in master branch and i don't see any difference. Kind=
ly
> help.

> for some reason its not getting libc headers in your recipe sysroot can =
you check if these missing files are staged in sysroot ?
Hi Khemraj, thanks for the reply. I checked my recipe sysroot and i can in=
lcude and lib folder present under recipe-sysroot/usr/include and recipe-sy=
sroot/usr/lib and these folder contains the files related to newlib.

--zulr6X5cTvWM5Pu8VE7n
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<br />On 7/27/21 8:09 AM, nagesh.shamnur@gmail.com wrote:<br />
<blockquote>dear group,<br />&nbsp;&nbsp; I am new to this group and i am =
using poky from dunfelll branch. In my .bb file when i am adding DEPENDS =
=3D "libgcc newlib libgloss", newlib compilation is sucessful and is avail=
able in target sysroot, however libgloss build is failing with the followin=
g error. i checked the .libgloss .bb file in master branch and i don't see =
any difference. Kindly help.</blockquote>
&gt; for some reason its not getting libc headers in your recipe sysroot c=
an you check if these missing files are staged in sysroot ?<br />Hi Khemraj=
, thanks for the reply. I checked my recipe sysroot and i can inlcude and l=
ib folder present under recipe-sysroot/usr/include and recipe-sysroot/usr/l=
ib and these folder contains the files related to newlib.

--zulr6X5cTvWM5Pu8VE7n--
