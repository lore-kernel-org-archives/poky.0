Subject: Re: Python3/bluez5 circular dependency problem
To: poky@lists.yoctoproject.org
From: "Sean" <nowlans@ieee.org>
X-Originating-Location: Smyrna, Georgia, US (76.193.41.204)
X-Originating-Platform: Linux Chrome 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Oct 2021 16:08:16 -0700
References: <CALcGr3O5VE0CWsGxhemcjz84gGxZnmJuxvf_MitoEo2kD3nDDg@mail.gmail.com>
In-Reply-To: <CALcGr3O5VE0CWsGxhemcjz84gGxZnmJuxvf_MitoEo2kD3nDDg@mail.gmail.com>
Message-ID: <27901.1633475296186736388@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ia93TeOPQtVTR5Lp8f2w"

--ia93TeOPQtVTR5Lp8f2w
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've traced the first loop to this dependency chain:

python3 -> bluez5 -> libical -> libxml2 -> python3

I noticed that on Zeus, libical was built w/o glib [1], but now it's built =
by default [2]. I have no idea whether I need libical-glib support, but I g=
ot away without it on Zeus.

I added a bbappend that seemed to resolve this circular dependency:

# recipes-support/libical/libical_3.0.7.bbappend

PACKAGECONFIG_remove =3D "glib"

I'm not sure where it would be appropriate to resolve this issue on upstrea=
m, so I'll leave it at that. At least it'll be documented in the mailing li=
st archives if it isn't addressed upstream.

[1] https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-suppo=
rt/libical/libical_3.0.6.bb?h=3Dzeus#n28

[2] https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-suppo=
rt/libical/libical_3.0.7.bb?h=3Ddunfell#n32

--ia93TeOPQtVTR5Lp8f2w
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I've traced the first loop to this dependency chain:</p>
<p>python3 -&gt; bluez5 -&gt; libical -&gt; libxml2 -&gt; python3</p>
<p>I noticed that on Zeus, libical was built w/o glib [1], but now it's bui=
lt by default [2]. I have no idea whether I need libical-glib support, but =
I got away without it on Zeus.</p>
<p>I added a bbappend that seemed to resolve this circular dependency:</p>
<p>&nbsp;</p>
<p># recipes-support/libical/libical_3.0.7.bbappend</p>
<p>PACKAGECONFIG_remove =3D "glib"</p>
<p>&nbsp;</p>
<p>I'm not sure where it would be appropriate to resolve this issue on upst=
ream, so I'll leave it at that. At least it'll be documented in the mailing=
 list archives if it isn't addressed upstream.</p>
<p>&nbsp;</p>
<p>[1]&nbsp;<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree=
/meta/recipes-support/libical/libical_3.0.6.bb?h=3Dzeus#n28" target=3D"_bla=
nk" rel=3D"noopener">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/m=
eta/recipes-support/libical/libical_3.0.6.bb?h=3Dzeus#n28</a></p>
<p>[2]&nbsp;<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree=
/meta/recipes-support/libical/libical_3.0.7.bb?h=3Ddunfell#n32" target=3D"_=
blank" rel=3D"noopener">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tre=
e/meta/recipes-support/libical/libical_3.0.7.bb?h=3Ddunfell#n32</a></p>

--ia93TeOPQtVTR5Lp8f2w--
