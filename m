Subject: Error while creating ipk (do_package_write_ipk) packages for Linux kernel source #bitbake #poky #yocto
To: poky@lists.yoctoproject.org
From: "Noufal" <noufal.poyiloor@gmail.com>
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.6)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 10 Dec 2022 08:53:11 -0800
Message-ID: <nUVr.1670691191955937069.aIh7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lecuntt2uIhMOsliPtTR"

--lecuntt2uIhMOsliPtTR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

As part of my project, I am using yocto dunfell branch as my build environm=
ent.

I am experiencing an issue while creating IPK packages for Linux source as =
given below.

```

PATH=3D$<paths> opkg-build -Z xz -a "--memlimit=3D50% --threads=3D128" kern=
el-module-atmel-5.4.198

<dir>/linux/5.4.198/deploy-ipks/generic32' returned non-zero exit status 12=
7.

16:54:05 =C2=A0Subprocess output:<tmp-dir>/linux//5.4.198+git2b99183f1c3663=
c9c7344a6b3b17f52c81b6746c-r0/recipe-sysroot-native/usr/bin/opkg-build: lin=
e 313: <dir>/linux /5.4.198/recipe-sysroot-native/usr/bin/gzip: No such fil=
e or directory

```

*Line 313 of opkg-build is as follows:*

```

( cd $pkg_dir/$CONTROL && tar $ogargs $tsortargs --no-recursion --mtime=3D@=
$build_date -c $tarformat -T $tmp_dir/control_list | pigz $zipargs > $tmp_d=
ir/control.tar.gz )

```

My build environment is ubuntu 20.04 docker container. Also am building mul=
tiple images within the same build directory in sequence and shared sstate.=
 With this, one of the build is failing for do_package_write_ipk.

The error is randomly observed and gzip is not found under the directory li=
nux/ recipe-sysroot-native/usr/bin/gzip even if the build is success or fai=
led. I have verified only the single image which was failing during sequenc=
e build, and it was success with no gzip binary under the directory linux/ =
recipe-sysroot-native/usr/bin/gzip. But HOSTTOOLS_DIR has all these package=
s available.

Is this because during sequence build with shared sstate, PATH from where t=
he gzip binary is slected inside opkg-build script is getting messed up som=
etimes or something else?

Also How can I verify the gzip tool path selected by the opkg-build script?

Can any one help me to resolve this issue?

Thanks,

Noufal P

--lecuntt2uIhMOsliPtTR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Hi Team,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">As part of my project,=
 I am using yocto dunfell branch as my build environment.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">I am experiencing an i=
ssue while creating IPK packages for Linux source as given below.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"DE" style=3D"font-size: 10.5pt; font-family: &#39;Sego=
e UI&#39;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; c=
olor: black; mso-ansi-language: DE;">```</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span style=3D"font-size: 10.5pt; font-family: &#39;Segoe UI&#39=
;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: bl=
ack;">PATH=3D$&lt;paths&gt; opkg-build -Z xz -a &#34;--memlimit=3D50% --thr=
eads=3D128&#34; kernel-module-atmel-5.4.198 </span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span style=3D"font-size: 10.5pt; font-family: &#39;Segoe UI&#39=
;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: bl=
ack;">&lt;dir&gt;/linux/5.4.198/deploy-ipks/generic32&#39; returned non-zer=
o exit status 127.</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span style=3D"fon=
t-size: 10.5pt; font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-fon=
t-family: &#39;Times New Roman&#39;; color: black; background: white;">16:5=
4:05 =C2=A0Subprocess output:&lt;tmp-dir&gt;/linux//5.4.198+git2b99183f1c36=
63c9c7344a6b3b17f52c81b6746c-r0/recipe-sysroot-native/usr/bin/opkg-build: l=
ine 313: &lt;dir&gt;/linux /5.4.198/recipe-sysroot-native/usr/bin/gzip: No =
such file or directory</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">```</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong>Line 313 of op=
kg-build is as follows:</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">```</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em>( cd $pkg_dir/$CON=
TROL &amp;&amp; tar $ogargs $tsortargs --no-recursion --mtime=3D@$build_dat=
e -c $tarformat -T $tmp_dir/control_list | pigz $zipargs &gt; $tmp_dir/cont=
rol.tar.gz )</em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><a name=3D"_MailAutoSi=
g"></a><span style=3D"mso-fareast-font-family: &#39;Times New Roman&#39;; m=
so-fareast-theme-font: minor-fareast; mso-no-proof: yes;">```</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-boo=
kmark: _MailAutoSig;">My build environment is ubuntu 20.04 docker container=
. Also am building multiple images within the same build directory in seque=
nce and </span><span style=3D"mso-bookmark: _MailAutoSig;"><span style=3D"m=
so-fareast-font-family: &#39;Times New Roman&#39;; mso-fareast-theme-font: =
minor-fareast; mso-no-proof: yes;">shared sstate. </span>With this, one of =
the build is failing for do_package_write_ipk.</span><span style=3D"mso-boo=
kmark: _MailAutoSig;"><span style=3D"mso-fareast-font-family: &#39;Times Ne=
w Roman&#39;; mso-fareast-theme-font: minor-fareast; mso-no-proof: yes;"></=
span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-boo=
kmark: _MailAutoSig;">The error is randomly observed and gzip is not found =
under the directory <em>linux/</em></span><span style=3D"mso-bookmark: _Mai=
lAutoSig;"><em><span style=3D"font-size: 10.5pt; font-family: &#39;Segoe UI=
&#39;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color=
: black; background: white;">recipe-sysroot-native/usr/bin/gzip</span></em>=
</span><span style=3D"mso-bookmark: _MailAutoSig;"><span style=3D"font-size=
: 10.5pt; font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-fami=
ly: &#39;Times New Roman&#39;; color: black; background: white;"> even if t=
he build is success or failed. I have verified only the single image which =
was failing during sequence build, and it was success with no gzip binary u=
nder the directory </span><em>linux/</em></span><span style=3D"mso-bookmark=
: _MailAutoSig;"><em><span style=3D"font-size: 10.5pt; font-family: &#39;Se=
goe UI&#39;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;;=
 color: black; background: white;">recipe-sysroot-native/usr/bin/gzip</span=
></em></span><span style=3D"mso-bookmark: _MailAutoSig;"><span style=3D"fon=
t-size: 10.5pt; font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-fon=
t-family: &#39;Times New Roman&#39;; color: black; background: white;"> . B=
ut HOSTTOOLS_DIR has all these packages available. </span></span><span styl=
e=3D"mso-bookmark: _MailAutoSig;"><span style=3D"mso-fareast-font-family: &=
#39;Times New Roman&#39;; mso-fareast-theme-font: minor-fareast; mso-no-pro=
of: yes;"></span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-boo=
kmark: _MailAutoSig;"><span style=3D"mso-fareast-font-family: &#39;Times Ne=
w Roman&#39;; mso-fareast-theme-font: minor-fareast; mso-no-proof: yes;">=
=C2=A0</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-boo=
kmark: _MailAutoSig;"><span style=3D"mso-fareast-font-family: &#39;Times Ne=
w Roman&#39;; mso-fareast-theme-font: minor-fareast; mso-no-proof: yes;">Is=
 this because during sequence build with shared sstate, PATH from where the=
 gzip binary is slected inside opkg-build script is getting messed up somet=
imes or something else?<br/><br/>Also How can I verify the gzip tool path s=
elected by the opkg-build script?</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-boo=
kmark: _MailAutoSig;"><span style=3D"mso-fareast-font-family: &#39;Times Ne=
w Roman&#39;; mso-fareast-theme-font: minor-fareast; mso-no-proof: yes;">=
=C2=A0<br/></span></span>Can any one help me to resolve this issue?</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-boo=
kmark: _MailAutoSig;"><span style=3D"mso-fareast-font-family: &#39;Times Ne=
w Roman&#39;; mso-fareast-theme-font: minor-fareast; mso-no-proof: yes;">=
=C2=A0</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Thanks,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-boo=
kmark: _MailAutoSig;"><span style=3D"mso-fareast-font-family: &#39;Times Ne=
w Roman&#39;; mso-fareast-theme-font: minor-fareast; mso-no-proof: yes;">No=
ufal P</span></span></p>
<span style=3D"mso-bookmark: _MailAutoSig;"></span>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>

--lecuntt2uIhMOsliPtTR--
