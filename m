Return-Path: <dromede@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D32E004E9
	for <poky@yoctoproject.org>; Wed, 21 Sep 2011 09:36:19 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk27 with SMTP id 27so2151271qyk.14
	for <poky@yoctoproject.org>; Wed, 21 Sep 2011 09:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=oTPdYOPwfWlbPEAwMh0gVBF+w2C85oZhgfz4uL8Ds5o=;
	b=S3gbDJqfIf1Cyz/6ETP4XVvT5OmICW8Yw7dirkPc1AHS6Vo4Dk+07S/BUezKaUE+Fq
	NuF5UjOOMdB8H2BVC3VVCoUuqiqkfLdwWEONlh5w3RNnW/5Dle+rQimEPPKA9fE3y4Ts
	Rq+nTLhquBPu5adVqTcugvDW9PoEaGQ5jL24E=
MIME-Version: 1.0
Received: by 10.52.24.82 with SMTP id s18mr840816vdf.85.1316622977530; Wed, 21
	Sep 2011 09:36:17 -0700 (PDT)
Received: by 10.52.181.73 with HTTP; Wed, 21 Sep 2011 09:36:17 -0700 (PDT)
Date: Wed, 21 Sep 2011 18:36:17 +0200
Message-ID: <CAHod+GdxhL_SpWX8jSD-5AONre335aHT_aE3wLU5SErzTuc+zg@mail.gmail.com>
From: =?UTF-8?B?TWFya28gS2F0acSH?= <dromede@gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH] bluez4: replace deprecated configure switch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Sep 2011 16:36:19 -0000
Content-Type: multipart/alternative; boundary=20cf3079baf6e0f93204ad762cee

--20cf3079baf6e0f93204ad762cee
Content-Type: text/plain; charset=ISO-8859-1

"--enable-configfiles" is deprecated upstream. Here is the original reason &
patch:

http://www.spinics.net/lists/linux-bluetooth/msg14266.html

Replace "--enable-configfiles" with "--enable-datafiles" in the bluez4
recipe.

diff --git a/meta/recipes-connectivity/bluez/bluez4_4.96.bbb/meta/recipes-connectivity/bluez/
bluez4_4.96.bb
index 994cec7..062b8f2 100644
--- a/meta/recipes-connectivity/bluez/bluez4_4.96.bb
+++ b/meta/recipes-connectivity/bluez/bluez4_4.96.bb
@@ -39,7 +39,7 @@ EXTRA_OECONF = "\
   --enable-dund \
   --disable-cups \
   --enable-test \
-  --enable-configfiles \
+  --enable-datafiles \
 "

 do_install_append() {

--20cf3079baf6e0f93204ad762cee
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>&quot;--enable-configfiles&quot; is deprecated upstream. Here is the o=
riginal reason &amp; patch:</div><div><br></div><div><meta http-equiv=3D"co=
ntent-type" content=3D"text/html; charset=3Dutf-8"><meta http-equiv=3D"cont=
ent-type" content=3D"text/html; charset=3Dutf-8"><a href=3D"http://www.spin=
ics.net/lists/linux-bluetooth/msg14266.html">http://www.spinics.net/lists/l=
inux-bluetooth/msg14266.html</a></div>
<div><br></div>Replace &quot;--enable-configfiles&quot; with &quot;--enable=
-datafiles&quot; in the bluez4 recipe.<div><br></div><div><div>diff --git a=
/meta/recipes-connectivity/bluez/<a href=3D"http://bluez4_4.96.bb">bluez4_4=
.96.bb</a> b/meta/recipes-connectivity/bluez/<a href=3D"http://bluez4_4.96.=
bb">bluez4_4.96.bb</a></div>
<div>index 994cec7..062b8f2 100644</div><div>--- a/meta/recipes-connectivit=
y/bluez/<a href=3D"http://bluez4_4.96.bb">bluez4_4.96.bb</a></div><div>+++ =
b/meta/recipes-connectivity/bluez/<a href=3D"http://bluez4_4.96.bb">bluez4_=
4.96.bb</a></div>
<div>@@ -39,7 +39,7 @@ EXTRA_OECONF =3D &quot;\</div><div>=A0 =A0--enable-d=
und \</div><div>=A0 =A0--disable-cups \</div><div>=A0 =A0--enable-test \</d=
iv><div>- =A0--enable-configfiles \</div><div>+ =A0--enable-datafiles \</di=
v><div>=A0&quot;</div>
<div>=A0</div><div>=A0do_install_append() {</div><div><br></div><div>=A0
</div></div>

--20cf3079baf6e0f93204ad762cee--
