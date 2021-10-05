Subject: Re: Python3/bluez5 circular dependency problem
To: poky@lists.yoctoproject.org
From: "Sean" <nowlans@ieee.org>
X-Originating-Location: Smyrna, Georgia, US (76.193.41.204)
X-Originating-Platform: Linux Chrome 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Oct 2021 16:20:17 -0700
References: <27901.1633475296186736388@lists.yoctoproject.org>
In-Reply-To: <27901.1633475296186736388@lists.yoctoproject.org>
Message-ID: <16836.1633476017953727544@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tGbpwPfpG2a9YFWa5fjM"

--tGbpwPfpG2a9YFWa5fjM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I should have waited for the build to complete before assuming I had fixed =
the problem. The build failed with this error:

```

NOTE: Executing Tasks

ERROR: libical-3.0.7-r0 do_compile: Execution of '/sdata0/openembedded/dunf=
ell/build/tmp/work/aarch64-galaxy-linux/libical/3.0.7-r0/temp/run.do_compil=
e.7600' failed with exit code 1:

Package glib-2.0 was not found in the pkg-config search path.

Perhaps you should add the directory containing `glib-2.0.pc'

to the PKG_CONFIG_PATH environment variable

No package 'glib-2.0' found

Package libxml-2.0 was not found in the pkg-config search path.

Perhaps you should add the directory containing `libxml-2.0.pc'

to the PKG_CONFIG_PATH environment variable

No package 'libxml-2.0' found

WARNING: exit code 1 from a shell command

```

I suppose this is due to the pkg-config-native commands looking for those l=
ibraries even if PACKAGECONFIG[glib] is disabled [1]. I think this is a def=
ect with the libical recipe.

[1]=C2=A0https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-=
support/libical/libical_3.0.7.bb?h=3Ddunfell#n27

--tGbpwPfpG2a9YFWa5fjM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I should have waited for the build to complete before assuming I had fix=
ed the problem. The build failed with this error:</p>
<p>```</p>
<p>NOTE: Executing Tasks</p>
<p>ERROR: libical-3.0.7-r0 do_compile: Execution of '/sdata0/openembedded/d=
unfell/build/tmp/work/aarch64-galaxy-linux/libical/3.0.7-r0/temp/run.do_com=
pile.7600' failed with exit code 1:</p>
<p>Package glib-2.0 was not found in the pkg-config search path.</p>
<p>Perhaps you should add the directory containing `glib-2.0.pc'</p>
<p>to the PKG_CONFIG_PATH environment variable</p>
<p>No package 'glib-2.0' found</p>
<p>Package libxml-2.0 was not found in the pkg-config search path.</p>
<p>Perhaps you should add the directory containing `libxml-2.0.pc'</p>
<p>to the PKG_CONFIG_PATH environment variable</p>
<p>No package 'libxml-2.0' found</p>
<p>WARNING: exit code 1 from a shell command</p>
<p>```</p>
<p>I suppose this is due to the pkg-config-native commands looking for thos=
e libraries even if PACKAGECONFIG[glib] is disabled [1]. I think this is a =
defect with the libical recipe.</p>
<p>&nbsp;</p>
<p>[1]&nbsp;https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recip=
es-support/libical/libical_3.0.7.bb?h=3Ddunfell#n27</p>

--tGbpwPfpG2a9YFWa5fjM--
