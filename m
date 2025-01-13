Return-Path: <peter-simon.dieterich@vaillant-group.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDA7C02180
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 13:07:06 +0000 (UTC)
Subject: #package #poky #yocto connman: Bug in connman causing endless write to file
To: poky@lists.yoctoproject.org
From: "Dieterich, Peter-Simon" <peter-simon.dieterich@vaillant-group.com>
X-Originating-Location: =?UTF-8?B?S2lwcGVuaGVpbSwgQmFkZW4tV8O8cnR0ZW1iZXJnLCBERQ==?= (79.199.250.188)
X-Originating-Platform: Linux Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Jan 2025 05:06:57 -0800
Message-ID: <gwtb.1736773617531475991.iGrZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9y3bJPP4iMkJnqVHtgdk"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 13 Jan 2025 13:07:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13502

--9y3bJPP4iMkJnqVHtgdk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear maintainers of poky,

we found a bug in connman (https://lore.kernel.org/connman/AM0PR09MB4500BF2=
A13FBACE6E7046E23881F2@AM0PR09MB4500.eurprd09.prod.outlook.com/) that can c=
ause high-cpu load and an endless write to a file in /var/lib/connman/ on s=
ystems that have been updated from a yocto version with 32-bit time_t to yo=
cto versions that have 64-bit time_t support enabled (https://patchwork.yoc=
toproject.org/project/oe-core/patch/20230426095036.2632847-9-alex@linutroni=
x.de/). In our case, we went from Dunfell to Scarthgap.

Our solution was to disable the stats module. We think it would be best to =
have the stats module disabled by default as it is a functionality that mos=
t users won't need.

Should I send the patch in a separate message?

Best,
Peter

Signed-off-by: Peter-Simon Dieterich <peter-simon.dieterich@vaillant-group.=
com>
---
meta/recipes-connectivity/connman/connman.inc | 1 +
1 file changed, 1 insertion(+)
diff --git a/meta/recipes-connectivity/connman/connman.inc b/meta/recipes-c=
onnectivity/connman/connman.inc
index 073061eeda..45f1621088 100644
--- a/meta/recipes-connectivity/connman/connman.inc
+++ b/meta/recipes-connectivity/connman/connman.inc
@@ -28,6 +28,7 @@ EXTRA_OECONF +=3D "\
--enable-tools \
--disable-polkit \
--runstatedir=3D/run \
+ =C2=A0 =C2=A0--disable-stats \
"
# For smooth operation it would be best to start only one wireless daemon a=
t a time.
# If wpa-supplicant is running, connman will use it preferentially.

--9y3bJPP4iMkJnqVHtgdk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>
<div>Dear maintainers of poky,</div>
<div>&nbsp;</div>
<div>we found a bug in connman (https://lore.kernel.org/connman/AM0PR09MB45=
00BF2A13FBACE6E7046E23881F2@AM0PR09MB4500.eurprd09.prod.outlook.com/) that =
can cause high-cpu load and an endless write to a file in /var/lib/connman/=
 on systems that have been updated from a yocto version with 32-bit time_t =
to yocto versions that have 64-bit time_t support enabled (https://patchwor=
k.yoctoproject.org/project/oe-core/patch/20230426095036.2632847-9-alex@linu=
tronix.de/). In our case, we went from Dunfell to Scarthgap.</div>
<div>&nbsp;</div>
<div>Our solution was to disable the stats module. We think it would be bes=
t to have the stats module disabled by default as it is a functionality tha=
t most users won't need.&nbsp;</div>
<div>&nbsp;</div>
<div>Should I send the patch in a separate message?</div>
<div>&nbsp;</div>
<div>Best,<br />Peter</div>
</div>
<div>&nbsp;</div>
<div>Signed-off-by: Peter-Simon Dieterich &lt;peter-simon.dieterich@vaillan=
t-group.com&gt;<br />---<br />&nbsp;meta/recipes-connectivity/connman/connm=
an.inc | 1 +<br />&nbsp;1 file changed, 1 insertion(+)</div>
<div>diff --git a/meta/recipes-connectivity/connman/connman.inc b/meta/reci=
pes-connectivity/connman/connman.inc<br />index 073061eeda..45f1621088 1006=
44<br />--- a/meta/recipes-connectivity/connman/connman.inc<br />+++ b/meta=
/recipes-connectivity/connman/connman.inc<br />@@ -28,6 +28,7 @@ EXTRA_OECO=
NF +=3D "\<br />&nbsp; &nbsp; &nbsp;--enable-tools \<br />&nbsp; &nbsp; &nb=
sp;--disable-polkit \<br />&nbsp; &nbsp; &nbsp;--runstatedir=3D/run \<br />=
+ &nbsp; &nbsp;--disable-stats \<br />&nbsp;"<br />&nbsp;# For smooth opera=
tion it would be best to start only one wireless daemon at a time.<br />&nb=
sp;# If wpa-supplicant is running, connman will use it preferentially.</div=
>
</div>

--9y3bJPP4iMkJnqVHtgdk--

