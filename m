Subject: python 3.7.7 modules (zeus)
To: poky@lists.yoctoproject.org
From: maja.massarini@gmail.com
X-Originating-Location: Caorle, Veneto, IT (151.49.242.15)
X-Originating-Platform: Linux Firefox 68
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 02 May 2020 14:25:04 -0700
Message-ID: <HMSa.1588454704984238618.nkSK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="27HTWOyvPxx78p2wEeZo"

--27HTWOyvPxx78p2wEeZo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm trying to build a custom image for qemux86-64 with python3. I'm using =
zeus as branch for poky and openembedded.
My bblayers are:
/home/tux/shared/openembedded-homino/poky/meta \
/home/tux/shared/openembedded-homino/poky/meta-poky \
${METADIR}/meta-openembedded/meta-python \
${METADIR}/meta-openembedded/meta-filesystems \
${METADIR}/meta-openembedded/meta-multimedia \
${METADIR}/meta-openembedded/meta-networking \
${METADIR}/meta-openembedded/meta-oe \

I got this error:

>=20
> * Solver encountered 1 problem(s):=C2=A0 * Problem 1/1:=C2=A0*=C2=A0=C2=
=A0 - nothing provides
> python3-pkgutil needed by python3-modules-3.7.7-r0.core2-64

But pkgutil is inside python3-core for what I can see reading the manifest=
.
If I build an image without python3-modules I got an image with pkgutil.py=
 installed inside /usr/lib/python3.

I don't know how to properly remove python3-pkgutil from the RDEPENDS of p=
ython3-modules, since the rdepends are read from the manifest.
Maybe I'm missing something else?

Thanks,
Maja

--27HTWOyvPxx78p2wEeZo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />I'm trying to build a custom image for qemux86-64 with p=
ython3. I'm using zeus as branch for poky and openembedded.<br />My bblayer=
s are:<br />&nbsp; /home/tux/shared/openembedded-homino/poky/meta \<br />&n=
bsp; /home/tux/shared/openembedded-homino/poky/meta-poky \<br />&nbsp; ${ME=
TADIR}/meta-openembedded/meta-python \<br />&nbsp; ${METADIR}/meta-openembe=
dded/meta-filesystems \<br />&nbsp; ${METADIR}/meta-openembedded/meta-multi=
media \<br />&nbsp; ${METADIR}/meta-openembedded/meta-networking \<br />&nb=
sp; ${METADIR}/meta-openembedded/meta-oe \<br /><br />I got this error:<br =
/>
<blockquote>&nbsp;* Solver encountered 1 problem(s):&nbsp; * Problem 1/1:&=
nbsp;*&nbsp;&nbsp; - nothing provides python3-pkgutil needed by python3-mod=
ules-3.7.7-r0.core2-64</blockquote>
But pkgutil is inside python3-core for what I can see reading the manifest=
. <br />If I build an image without python3-modules I got an image with pkg=
util.py installed inside /usr/lib/python3.<br /><br />I don't know how to p=
roperly remove python3-pkgutil from the RDEPENDS of python3-modules, since =
the rdepends are read from the manifest.<br />Maybe I'm missing something e=
lse?<br /><br />Thanks,<br />Maja<br /><br />

--27HTWOyvPxx78p2wEeZo--
