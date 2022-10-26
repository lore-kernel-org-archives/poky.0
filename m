Subject: wic: swap partitions not added to fstab since 37b4fa7a102f1212843411bd1d97202ba9da0e19
To: poky@lists.yoctoproject.org
From: ciaran.courtney@ie.abb.com
X-Originating-Location: Dublin, Leinster, IE (95.45.31.11)
X-Originating-Platform: Windows Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Oct 2022 08:29:15 -0700
Message-ID: <ZgRo.1666798155405253803.WhRZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j9MmNr0SNslYlWc2bYJv"

--j9MmNr0SNslYlWc2bYJv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Sorry for the unorthodox email, is this the right place to report bugs?

I believe that since wic:direct.py: ignore invalid mountpoints during fstab=
 update =C2=B7 lgirdk/poky@37b4fa7 (github.com) ( https://github.com/lgirdk=
/poky/commit/37b4fa7a102f1212843411bd1d97202ba9da0e19 ) that swap partition=
s are being left out of /etc/fstab, I think the condition should be "if the=
 mountpoint begins with a slash or is equal to swap"

I hope this appears obvious to someone how can simply commit it, I'm tight =
for time on following the lengthy contribution guidelines.

--j9MmNr0SNslYlWc2bYJv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />Sorry for the unorthodox email, is this the right place =
to report bugs?<br /><br />I believe that since&nbsp;<a href=3D"https://git=
hub.com/lgirdk/poky/commit/37b4fa7a102f1212843411bd1d97202ba9da0e19">wic:di=
rect.py: ignore invalid mountpoints during fstab update &middot; lgirdk/pok=
y@37b4fa7 (github.com)</a>&nbsp;that swap partitions are being left out of =
/etc/fstab, I think the condition should be "if the mountpoint begins with =
a slash or is equal to swap"<br /><br />I hope this appears obvious to some=
one how can simply commit it, I'm tight for time on following the lengthy c=
ontribution guidelines.

--j9MmNr0SNslYlWc2bYJv--
