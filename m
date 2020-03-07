Subject: Re: How to see the parameters of a shell command execution (do_rootfs, qemu, update_font_cache) ?
To: poky@lists.yoctoproject.org
From: "Ashish" <ashish.emailaddress@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (115.99.50.87)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 07 Mar 2020 15:27:14 -0800
References: <CANNYZj_Ts2t=tLEQ-5qF2fnb5WHGEuzCyXd1nkEC_FiN9JvNbg@mail.gmail.com>
In-Reply-To: <CANNYZj_Ts2t=tLEQ-5qF2fnb5WHGEuzCyXd1nkEC_FiN9JvNbg@mail.gmail.com>
Message-ID: <10736.1583623634851011867@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Um3lDQLWk2ssTaeuSH4j"

--Um3lDQLWk2ssTaeuSH4j
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

1)=C2=A0 w.r.t=C2=A0 "I don=E2=80=99t even find =E2=80=9Efontconfig=E2=80=
=9C when I grep through all *.bb, *,conf, *.bbapend and *.bbclass "
You can use below section of patch
diff --git a/recipes-qt/qt5/qtbase_git.bbappend b/recipes-qt/qt5/qtbase_gi=
t.bbappend
new file mode 100644
index 0000000..707d17c
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_git.bbappend
@@ -0,0 +1 @@
+PACKAGECONFIG_append =3D " fontconfig"

2)=C2=A0 w.r.t=C2=A0 "..adding debug details "
In the concerned recipe you can add=C2=A0bb.debug() for python based code =
or use=C2=A0bbdebug()=C2=A0 if its an bash based code

3)=C2=A0 You can look at the log.do_compile/configure under tmp folder of =
recipe to get more info about error

Thanks
Ashish

--Um3lDQLWk2ssTaeuSH4j
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

1)&nbsp; w.r.t&nbsp; "I don&rsquo;t even find &bdquo;fontconfig&ldquo; when=
 I grep through all *.bb, *,conf, *.bbapend and *.bbclass "<br />&nbsp; &nb=
sp; &nbsp;You can use below section of patch&nbsp;<br />&nbsp; &nbsp; &nbsp=
;diff --git a/recipes-qt/qt5/qtbase_git.bbappend b/recipes-qt/qt5/qtbase_gi=
t.bbappend
<div>&nbsp; &nbsp; &nbsp;new file mode 100644</div>
<div>&nbsp; &nbsp; &nbsp;index 0000000..707d17c</div>
<div>&nbsp; &nbsp; &nbsp;--- /dev/null</div>
<div>&nbsp; &nbsp; &nbsp;+++ b/recipes-qt/qt5/qtbase_git.bbappend</div>
<div>&nbsp; &nbsp; &nbsp;@@ -0,0 +1 @@</div>
<div>&nbsp; &nbsp; +PACKAGECONFIG_append =3D " fontconfig"<br /><br /><br =
/>2)&nbsp; w.r.t&nbsp; "..adding debug details "<br />&nbsp; &nbsp; &nbsp;I=
n the concerned recipe you can add&nbsp;bb.debug() for python based code or=
 use&nbsp;bbdebug()&nbsp; if its an bash based code&nbsp;<br /><br /><br />=
3)&nbsp; You can look at the log.do_compile/configure under tmp folder of r=
ecipe to get more info about error&nbsp;<br /><br /><br />Thanks&nbsp;<br /=
>Ashish&nbsp;<br /><br /><br /><br /></div>
<div><br /><br /><br /></div>

--Um3lDQLWk2ssTaeuSH4j--
