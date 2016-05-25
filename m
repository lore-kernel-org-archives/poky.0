Return-Path: <Daniel.Klauer@gin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 275E4E00CF4; Wed, 25 May 2016 02:56:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.223.36.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from good-out-20.clustermail.de (good-out-20.clustermail.de
	[212.223.36.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AA70E00CDE
	for <poky@yoctoproject.org>; Wed, 25 May 2016 02:56:26 -0700 (PDT)
Received: from frontend-06 ([10.0.0.6] helo=frontend.clustermail.de)
	by smtpout-04.clustermail.de with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84_2)
	(envelope-from <Daniel.Klauer@gin.de>)
	id 1b5VXh-0007cZ-TP; Wed, 25 May 2016 11:56:24 +0200
Received: from [217.6.33.234] (helo=Win2012-02.gin-domain.local)
	by frontend.clustermail.de with esmtpsa (TLSv1.2:AES256-SHA:256)
	(Exim 4.84_2) (envelope-from <Daniel.Klauer@gin.de>)
	id 1b5VXh-0004ID-Jw; Wed, 25 May 2016 11:55:57 +0200
Received: from Win2012-02.gin-domain.local (192.168.1.12) by
	Win2012-02.gin-domain.local (192.168.1.12) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Wed, 25 May 2016 11:55:56 +0200
Received: from Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90]) by
	Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90%12]) with mapi
	id 15.00.1130.005; Wed, 25 May 2016 11:55:56 +0200
From: "Klauer, Daniel" <Daniel.Klauer@gin.de>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [poky] [PATCH] smartpm: Don't ignore error if RPM transaction
	fails without problems
Thread-Index: AQHRrCSIVtG7FGkbD0O1UJBF03zw/p+82SYAgAylCqE=
Date: Wed, 25 May 2016 09:55:56 +0000
Message-ID: <1464170156000.4828@gin.de>
References: <8759c4fa3b364ca6966f81155185b602@Win2012-02.gin-domain.local>,
	<CAJTo0LYURNP+KnHrKMCqZvQdgpM94_tOS7DBL+1MtUCd3m0pEA@mail.gmail.com>
In-Reply-To: <CAJTo0LYURNP+KnHrKMCqZvQdgpM94_tOS7DBL+1MtUCd3m0pEA@mail.gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.1.219]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFvrAqsTGxXJgBSOP7toy13CD+7db2rktevr7WCw2tK9lcmAKYIhizcxLyq9IYM24M3Ufe8HriopFX94yNTB+zuti5OQQEtjDKPHqtG4XIxeQfZJR4szCuywgCWYBU4krXxuhbEWJC/cawGw2AV2Jc+3vWUFsEQEtibOvHzND1BhL7Dj9E6xGWCBZYsnFLrYuRg6gmhSJm58jIcqtJNZdPMAEYksI6Ej8XdQINoZFQFXi9Z0LzCDlvALqEjP25kCc088ocffaBrCRnAKBEms3rAJbxSggK9HZ8I4JYq24xK0n86FmCkgs2XOeGcJWkui9/Q4qbiixav0KdhCbV0BQ4uTMJywQcTOJvQ+WQNXoSdw8tguqN1Di+4eXYPdIAIPh6vtgiLCBxLu1n6FajSVWbvzPCGHbSuyZMZEJotxZYt6Neoiwk8SbjresELa2xPZX+1hhPt90bRXLBEbNWUjhPAspnGcheWwWkqMXMLKsYpQOz8wzMjA00jUw0kvPzNNNyc9NzMzTy8lPTszZxAhNDTsYH312PcQoycGkJMp7UM81XIgvKT+lMiOxOCO+qDQntfgQowQHj5IIr1kJUI63uCAxtzgzHSYlw8GhJMHLCZISLEpNT61Iy8wpSS2CSJ9ilJQS580DSQqA9GWU5sHlLjGKSgnzuqUB5XgKUotyM0sg4rcYhTkeMgmx5OXnpUoBncgABBqMrxjFORiVhHkngcziycwrgTvhFdB1TEDX+X9xBrmuJBEhJdXAGPjFOnT3/M3u9Q7n9rvv1m2dyy15LFwwd2OGZu/lu/sfNHj9OL6fxd9Mr471Y8KZRN1t11/FzZtzdX2KVHdIljj/M9HJy1+pVH9jFLJhmXSvTKH7sfVGTuPozAL1kIraD3tKrjBXXvzmlXN08ga5Bg9nS4ZWD8fVglOenK5WmM60/S/Tli2CSizFGYmGWsxFxYkAxL037oMDAAA=
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] smartpm: Don't ignore error if RPM transaction fails without problems
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 May 2016 09:56:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="_000_14641701560004828ginde_"

--_000_14641701560004828ginde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


thanks for the hint, I've sent this (and 2 more smartpm patches) to oe-core=
.


Best regards,

Daniel


________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Tuesday, May 17, 2016 12:47
To: Klauer, Daniel
Cc: poky@yoctoproject.org
Subject: Re: [poky] [PATCH] smartpm: Don't ignore error if RPM transaction =
fails without problems

Good catch but patches that are actually for openembedded-core should go to=
 openembedded-core@lists.openembedded.org<mailto:openembedded-core@lists.op=
enembedded.org>, can you resend it?

Cheers,
Ross

On 12 May 2016 at 09:01, Klauer, Daniel <Daniel.Klauer@gin.de<mailto:Daniel=
.Klauer@gin.de>> wrote:
SmartPM could misinterpret RPM transaction error as success,
if ts.run() (RPM Python API) returns an empty problems list.

This could happen for example if the RPM database is partially corrupted
such that the transaction does not have any problems like conflicts or
missing dependencies, but still can't be committed.

The added patch fixes the problem in the upstream sources;
one of the existing patches has to be adjusted to still apply.

Signed-off-by: Daniel Klauer <daniel.klauer@gin.de<mailto:daniel.klauer@gin=
.de>>
---
 ...gnore-transaction-error-with-empty-proble.patch | 57 ++++++++++++++++++=
++++
 .../python/python-smartpm/smart-attempt.patch      |  6 +--
 meta/recipes-devtools/python/python-smartpm_git.bb<http://python-smartpm_g=
it.bb> |  1 +
 3 files changed, 61 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-devtools/python/python-smartpm/0001-rpm-Do=
n-t-ignore-transaction-error-with-empty-proble.patch

diff --git a/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ign=
ore-transaction-error-with-empty-proble.patch b/meta/recipes-devtools/pytho=
n/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.=
patch
new file mode 100644
index 0000000..a740ddd
--- /dev/null
+++ b/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ignore-tra=
nsaction-error-with-empty-proble.patch
@@ -0,0 +1,57 @@
+From 0c55d7e18f40465e95e8e4bf22af01f5d4477d3c Mon Sep 17 00:00:00 2001
+From: Daniel Klauer <daniel.klauer@gin.de<mailto:daniel.klauer@gin.de>>
+Date: Wed, 11 May 2016 17:22:49 +0200
+Subject: [PATCH] rpm: Don't ignore transaction error with empty problems l=
ist
+
+SmartPM could misinterpret RPM transaction error as success,
+if ts.run() (RPM Python API) returns an empty problems list,
+because of incorrect check for None which treated empty list
+to be the same as None when it has different meaning.
+
+ts.run() returns:
+* None in case of success
+* problems list in case of error, may be empty
+(look at rpmts_Run() in rpm-5.4.14/python/rpmts-py.c [1])
+
+"if mylist" is not good enough to check for error here, because it will
+treat an empty list as "false" because its len() =3D=3D 0 [2].
+
+ts.check() seems to be different (it's ok for it to return an empty list),
+but for consistency it should be made clear that it can return either None=
,
+an empty list or a non-empty list.
+
+[1] http://rpm5.org/cvs/fileview?f=3Drpm/python/rpmts-py.c&v=3D1.111.2.3
+[2] https://docs.python.org/2/library/stdtypes.html#truth-value-testing
+
+Upstream-Status: Pending
+
+Signed-off-by: Daniel Klauer <daniel.klauer@gin.de<mailto:daniel.klauer@gi=
n.de>>
+---
+ smart/backends/rpm/pm.py | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/smart/backends/rpm/pm.py b/smart/backends/rpm/pm.py
+index 9bbd952..635f726 100644
+--- a/smart/backends/rpm/pm.py
++++ b/smart/backends/rpm/pm.py
+@@ -208,7 +208,7 @@ class RPMPackageManager(PackageManager):
+         force =3D sysconf.get("rpm-force", False)
+         if not force:
+             probs =3D ts.check()
+-            if probs:
++            if (probs is not None) and (len(probs) !=3D 0):
+                 problines =3D []
+                 for prob in probs:
+                     name1 =3D "%s-%s-%s" % prob[0]
+@@ -247,7 +247,7 @@ class RPMPackageManager(PackageManager):
+             del getTS.ts
+             cb.grabOutput(False)
+             prog.setDone()
+-            if probs:
++            if probs is not None:
+                 raise Error, "\n".join([x[0] for x in probs])
+             prog.stop()
+
+--
+1.9.1
+
diff --git a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patc=
h b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch
index ec98e03..5aedc88 100644
--- a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch
+++ b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch
@@ -36,7 +36,7 @@ index 9bbd952..ba6405a 100644
          finally:
              del getTS.ts
              cb.grabOutput(False)
-+            if probs and sysconf.has("attempt-install", soft=3DTrue):
++            if (probs is not None) and sysconf.has("attempt-install", sof=
t=3DTrue):
 +                def remove_conflict(pkgNEVR):
 +                    for key in changeset.keys():
 +                        if pkgNEVR =3D=3D str(key):
@@ -67,8 +67,8 @@ index 9bbd952..ba6405a 100644
 +                        retry =3D 0
 +
              prog.setDone()
--            if probs:
-+            if probs and (not retry):
+-            if probs is not None:
++            if (probs is not None) and (not retry):
                  raise Error, "\n".join([x[0] for x in probs])
              prog.stop()
 +            if retry and len(changeset):
diff --git a/meta/recipes-devtools/python/python-smartpm_git.bb<http://pyth=
on-smartpm_git.bb> b/meta/recipes-devtools/python/python-smartpm_git.bb<htt=
p://python-smartpm_git.bb>
index d6c378b..95b7e09 100644
--- a/meta/recipes-devtools/python/python-smartpm_git.bb<http://python-smar=
tpm_git.bb>
+++ b/meta/recipes-devtools/python/python-smartpm_git.bb<http://python-smar=
tpm_git.bb>
@@ -17,6 +17,7 @@ SRC_URI =3D "\
           file://smart-recommends.patch \
           file://smart-improve-error-reporting.patch \
           file://smart-channelsdir.patch \
+          file://0001-rpm-Don-t-ignore-transaction-error-with-empty-proble=
.patch \
           file://smart-attempt.patch \
           file://smart-attempt-fix.patch \
           file://smart-rpm4-fixes.patch \
--
1.9.1
--
_______________________________________________
poky mailing list
poky@yoctoproject.org<mailto:poky@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/poky


--_000_14641701560004828ginde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} --></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Consolas,monospace;">
Hello,
<p><br>
</p>
<p>thanks for the hint, I've sent this (and 2 more smartpm patches) to oe-c=
ore.</p>
<p><br>
</p>
<p>Best regards,</p>
Daniel
<p><br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ro=
ss.burton@intel.com&gt;<br>
<b>Sent:</b> Tuesday, May 17, 2016 12:47<br>
<b>To:</b> Klauer, Daniel<br>
<b>Cc:</b> poky@yoctoproject.org<br>
<b>Subject:</b> Re: [poky] [PATCH] smartpm: Don't ignore error if RPM trans=
action fails without problems</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Good catch but patches that are actually for openembedded-=
core should go to
<a href=3D"mailto:openembedded-core@lists.openembedded.org">openembedded-co=
re@lists.openembedded.org</a>, can you resend it?
<div><br>
</div>
<div>Cheers,</div>
<div>Ross</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 12 May 2016 at 09:01, Klauer, Daniel <span di=
r=3D"ltr">
&lt;<a href=3D"mailto:Daniel.Klauer@gin.de" target=3D"_blank">Daniel.Klauer=
@gin.de</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
SmartPM could misinterpret RPM transaction error as success,<br>
if ts.run() (RPM Python API) returns an empty problems list.<br>
<br>
This could happen for example if the RPM database is partially corrupted<br=
>
such that the transaction does not have any problems like conflicts or<br>
missing dependencies, but still can't be committed.<br>
<br>
The added patch fixes the problem in the upstream sources;<br>
one of the existing patches has to be adjusted to still apply.<br>
<br>
Signed-off-by: Daniel Klauer &lt;<a href=3D"mailto:daniel.klauer@gin.de">da=
niel.klauer@gin.de</a>&gt;<br>
---<br>
&nbsp;...gnore-transaction-error-with-empty-proble.patch | 57 &#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;<br>
&nbsp;.../python/python-smartpm/smart-attempt.patch&nbsp; &nbsp; &nbsp; |&n=
bsp; 6 &#43;--<br>
&nbsp;meta/recipes-devtools/python/<a href=3D"http://python-smartpm_git.bb"=
 rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a> |&nbsp; 1 &=
#43;<br>
&nbsp;3 files changed, 61 insertions(&#43;), 3 deletions(-)<br>
&nbsp;create mode 100644 meta/recipes-devtools/python/python-smartpm/0001-r=
pm-Don-t-ignore-transaction-error-with-empty-proble.patch<br>
<br>
diff --git a/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ign=
ore-transaction-error-with-empty-proble.patch b/meta/recipes-devtools/pytho=
n/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.=
patch<br>
new file mode 100644<br>
index 0000000..a740ddd<br>
--- /dev/null<br>
&#43;&#43;&#43; b/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-=
t-ignore-transaction-error-with-empty-proble.patch<br>
@@ -0,0 &#43;1,57 @@<br>
&#43;From 0c55d7e18f40465e95e8e4bf22af01f5d4477d3c Mon Sep 17 00:00:00 2001=
<br>
&#43;From: Daniel Klauer &lt;<a href=3D"mailto:daniel.klauer@gin.de">daniel=
.klauer@gin.de</a>&gt;<br>
&#43;Date: Wed, 11 May 2016 17:22:49 &#43;0200<br>
&#43;Subject: [PATCH] rpm: Don't ignore transaction error with empty proble=
ms list<br>
&#43;<br>
&#43;SmartPM could misinterpret RPM transaction error as success,<br>
&#43;if ts.run() (RPM Python API) returns an empty problems list,<br>
&#43;because of incorrect check for None which treated empty list<br>
&#43;to be the same as None when it has different meaning.<br>
&#43;<br>
&#43;ts.run() returns:<br>
&#43;* None in case of success<br>
&#43;* problems list in case of error, may be empty<br>
&#43;(look at rpmts_Run() in rpm-5.4.14/python/rpmts-py.c [1])<br>
&#43;<br>
&#43;&quot;if mylist&quot; is not good enough to check for error here, beca=
use it will<br>
&#43;treat an empty list as &quot;false&quot; because its len() =3D=3D 0 [2=
].<br>
&#43;<br>
&#43;ts.check() seems to be different (it's ok for it to return an empty li=
st),<br>
&#43;but for consistency it should be made clear that it can return either =
None,<br>
&#43;an empty list or a non-empty list.<br>
&#43;<br>
&#43;[1] <a href=3D"http://rpm5.org/cvs/fileview?f=3Drpm/python/rpmts-py.c&=
amp;v=3D1.111.2.3" rel=3D"noreferrer" target=3D"_blank">
http://rpm5.org/cvs/fileview?f=3Drpm/python/rpmts-py.c&amp;v=3D1.111.2.3</a=
><br>
&#43;[2] <a href=3D"https://docs.python.org/2/library/stdtypes.html#truth-v=
alue-testing" rel=3D"noreferrer" target=3D"_blank">
https://docs.python.org/2/library/stdtypes.html#truth-value-testing</a><br>
&#43;<br>
&#43;Upstream-Status: Pending<br>
&#43;<br>
&#43;Signed-off-by: Daniel Klauer &lt;<a href=3D"mailto:daniel.klauer@gin.d=
e">daniel.klauer@gin.de</a>&gt;<br>
&#43;---<br>
&#43; smart/backends/rpm/pm.py | 4 &#43;&#43;--<br>
&#43; 1 file changed, 2 insertions(&#43;), 2 deletions(-)<br>
&#43;<br>
&#43;diff --git a/smart/backends/rpm/pm.py b/smart/backends/rpm/pm.py<br>
&#43;index 9bbd952..635f726 100644<br>
&#43;--- a/smart/backends/rpm/pm.py<br>
&#43;&#43;&#43;&#43; b/smart/backends/rpm/pm.py<br>
&#43;@@ -208,7 &#43;208,7 @@ class RPMPackageManager(PackageManager):<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;force =3D sysconf.get(&quot;rpm-forc=
e&quot;, False)<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if not force:<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;probs =3D ts.check()<b=
r>
&#43;-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if probs:<br>
&#43;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (probs is not None) =
and (len(probs) !=3D 0):<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;probline=
s =3D []<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for prob=
 in probs:<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;name1 =3D &quot;%s-%s-%s&quot; % prob[0]<br>
&#43;@@ -247,7 &#43;247,7 @@ class RPMPackageManager(PackageManager):<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;del getTS.ts<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;cb.grabOutput(False)<b=
r>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;prog.setDone()<br>
&#43;-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if probs:<br>
&#43;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if probs is not None:<b=
r>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;raise Er=
ror, &quot;\n&quot;.join([x[0] for x in probs])<br>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;prog.stop()<br>
&#43;<br>
&#43;--<br>
&#43;1.9.1<br>
&#43;<br>
diff --git a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patc=
h b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch<br>
index ec98e03..5aedc88 100644<br>
--- a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch<br>
&#43;&#43;&#43; b/meta/recipes-devtools/python/python-smartpm/smart-attempt=
.patch<br>
@@ -36,7 &#43;36,7 @@ index 9bbd952..ba6405a 100644<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; finally:<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; del getTS.ts<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cb.grabOutput(False)<br>
-&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if probs and sysconf.has(&q=
uot;attempt-install&quot;, soft=3DTrue):<br>
&#43;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (probs is not None) =
and sysconf.has(&quot;attempt-install&quot;, soft=3DTrue):<br>
&nbsp;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; def remo=
ve_conflict(pkgNEVR):<br>
&nbsp;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; for key in changeset.keys():<br>
&nbsp;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; if pkgNEVR =3D=3D str(key):<br>
@@ -67,8 &#43;67,8 @@ index 9bbd952..ba6405a 100644<br>
&nbsp;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; retry =3D 0<br>
&nbsp;&#43;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; prog.setDone()<br>
--&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if probs:<br>
-&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if probs and (not retry):<b=
r>
&#43;-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if probs is not None:<br>
&#43;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (probs is not None) =
and (not retry):<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; raise Error,=
 &quot;\n&quot;.join([x[0] for x in probs])<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; prog.stop()<br>
&nbsp;&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if retry and len(chang=
eset):<br>
diff --git a/meta/recipes-devtools/python/<a href=3D"http://python-smartpm_=
git.bb" rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a> b/me=
ta/recipes-devtools/python/<a href=3D"http://python-smartpm_git.bb" rel=3D"=
noreferrer" target=3D"_blank">python-smartpm_git.bb</a><br>
index d6c378b..95b7e09 100644<br>
--- a/meta/recipes-devtools/python/<a href=3D"http://python-smartpm_git.bb"=
 rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a><br>
&#43;&#43;&#43; b/meta/recipes-devtools/python/<a href=3D"http://python-sma=
rtpm_git.bb" rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a>=
<br>
@@ -17,6 &#43;17,7 @@ SRC_URI =3D &quot;\<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://smart-recommends.patch \<br=
>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://smart-improve-error-reporti=
ng.patch \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://smart-channelsdir.patch \<b=
r>
&#43;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://0001-rpm-Don-t-ignore-transa=
ction-error-with-empty-proble.patch \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://smart-attempt.patch \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://smart-attempt-fix.patch \<b=
r>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://smart-rpm4-fixes.patch \<br=
>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote>
</div>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_14641701560004828ginde_--
