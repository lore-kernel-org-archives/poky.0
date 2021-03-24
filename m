Subject: Issue generating working sdk containing Clang (meta-clang) and package_deb for compiling eBPF #sdk #compiler #poky #yocto
To: poky@lists.yoctoproject.org
From: "msg board" <msgboardpana@gmail.com>
X-Originating-Location: Fremont, California, US (73.231.211.214)
X-Originating-Platform: Mac Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 14:54:59 -0700
Message-ID: <tQXT.1616622899245050919.YTua@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ns6JaQu51VTEnnJ6WQt4"

--Ns6JaQu51VTEnnJ6WQt4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I need Clang compiler apart from currently available default gcc compiler =
as I am trying to compile eBPF which will run on my custom yocto which is b=
ased on core-image-minimal. Therefore I added Clang compiler to my yocto sd=
k build using the meta-clang layer available at https://github.com/kraj/met=
a-clang. My yocto is based on dunfell and uses package_deb inside local.con=
f. SDK compilation succeeded with command "bitbake <mycustomdistro> -c popu=
late_sdk " but while installation on host there errors similar to the ones =
mentioned in this issue ( https://github.com/kraj/meta-clang/issues/119 ).=
=C2=A0 Therefore, I removed the LDFLAGS_append_class-nativesdk =3D " -fuse=
-ld=3Dgold" line from clang_git.bb and compiled. This gave me errors relate=
d to this issue ( https://stackoverflow.com/questions/60058817/bitbake-popu=
late-sdk-for-image-fails-with-error ). Therefore, I added package_ipk and a=
lso kept package_deb . The compilation was successful but there was one war=
ning as below :

-------------------------

<CUSTOMDISTRO> do_populate_sdk: Unable to install packages. Command <Path>=
/opkg --volatile-cache -f <Path>/opkg.conf -t <Path>/sysroots/core2-64-poky=
-linux --force-postinstall --prefer-arch-to-version install <Long list of s=
pace seperate package names> returned 1

Collected errors: Solver encountered 1 problem(s) ....

-------------------------

The installation of on host was successful

When I tried to use the sdk to compile eBPF, I got errors mentioning that =
the sysroot does not contain /usr/include/gelf.h . After looking I saw that=
 elfutils-dev tools were not installed. elfutils-dev would have installed g=
elf.h. in /usr/include of sysroot.

Without the addition of Clang I was able to generate working sdk with just=
 package_deb in local.conf.

--Ns6JaQu51VTEnnJ6WQt4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"line-height: 1.42857;">Hello,</p>
<p style=3D"line-height: 1.42857;"><span style=3D"font-family: Helvetica N=
eue, Helvetica, Arial, sans-serif;">I </span>need Clang<span style=3D"font-=
family: Helvetica Neue, Helvetica, Arial, sans-serif;"> compiler apart </sp=
an>from currently<span style=3D"font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;"> available default gcc compiler as I am trying to compile =
eBPF which will run on my custom yocto which is based on core-image-minimal=
. Therefore I </span>added Clang<span style=3D"font-family: Helvetica Neue,=
 Helvetica, Arial, sans-serif;"> compiler to my yocto sdk build using the m=
eta-clang layer available at&nbsp;</span><a href=3D"https://github.com/kraj=
/meta-clang" target=3D"_blank" rel=3D"noopener">https://github.com/kraj/met=
a-clang</a><span style=3D"font-family: Helvetica Neue, Helvetica, Arial, sa=
ns-serif;">&nbsp;. My yocto is based on dunfell and uses package_deb inside=
 local.conf. SDK compilation succeeded with command "bitbake &lt;mycustomdi=
stro&gt; -c populate_sdk " but while installation on host there errors simi=
lar to the ones mentioned in&nbsp;</span><a href=3D"https://github.com/kraj=
/meta-clang/issues/119" target=3D"_blank" rel=3D"noopener">this issue</a><s=
pan style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&n=
bsp;.&nbsp; Therefore, I removed the </span><span style=3D"font-size: 12px;=
 font-family: SFMono-Regular, Consolas, 'Liberation Mono', Menlo, monospace=
; color: #24292e; white-space: pre; caret-color: #24292e;">LDFLAGS_append_c=
lass-nativesdk =3D " -fuse-ld=3Dgold" </span><span style=3D"color: #24292e;=
 white-space: pre; caret-color: #24292e;"><span style=3D"font-family: arial=
, sans-serif;">line from clang_git.bb and compiled. This gave me errors rel=
ated to this <a href=3D"https://stackoverflow.com/questions/60058817/bitbak=
e-populate-sdk-for-image-fails-with-error">issue</a> . Therefore, I added p=
ackage_ipk and also kept package_deb . The compilation was successful but t=
here was one warning as below : </span></span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"color: #24292e; white-sp=
ace: pre; caret-color: #24292e;"><span style=3D"font-family: arial, sans-se=
rif;">-------------------------</span></span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"color: #24292e; white-sp=
ace: pre; caret-color: #24292e;"><span style=3D"font-family: arial, sans-se=
rif;">&lt;CUSTOMDISTRO&gt; do_populate_sdk: Unable to install packages. Com=
mand &lt;Path&gt;/opkg --volatile-cache -f &lt;Path&gt;/opkg.conf -t &lt;Pa=
th&gt;/sysroots/core2-64-poky-linux --force-postinstall --prefer-arch-to-ve=
rsion install &lt;Long list of space seperate package names&gt; returned 1<=
/span></span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"color: #24292e; white-sp=
ace: pre; caret-color: #24292e;"><span style=3D"font-family: arial, sans-se=
rif;">Collected errors: </span></span><span style=3D"font-family: arial, sa=
ns-serif; color: #24292e; white-space: pre; caret-color: #24292e;">Solver e=
ncountered 1 problem(s) ....</span></p>
<p style=3D"line-height: 1.42857;">&nbsp;</p>
<p style=3D"line-height: 1.42857;">&nbsp;</p>
<p>&nbsp;</p>
<p style=3D"line-height: 1.42857;"><span style=3D"color: #24292e; white-sp=
ace: pre; caret-color: #24292e;"><span style=3D"font-family: arial, sans-se=
rif;">-------------------------</span></span></p>
<p style=3D"line-height: 1.42857;">The installation of on host was success=
ful</p>
<p style=3D"line-height: 1.42857;"><span style=3D"color: #24292e; white-sp=
ace: pre; caret-color: #24292e;"><span style=3D"font-family: arial, sans-se=
rif;"> When I tried to use the sdk to compile eBPF, I got errors mentioning=
 that the sysroot does not contain /usr/include/gelf.h . After looking I sa=
w that elfutils-dev tools were not installed. elfutils-dev would have insta=
lled gelf.h. in /usr/include of sysroot.</span></span></p>
<p style=3D"line-height: 1.42857;">Without the addition of Clang I was abl=
e to generate working sdk with just package_deb in local.conf.&nbsp;</p>

--Ns6JaQu51VTEnnJ6WQt4--
