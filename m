Return-Path: <Daniel.Klauer@gin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD4C5E00CC7; Thu, 12 May 2016 01:58:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.223.36.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3405 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 May 2016 01:58:43 PDT
Received: from good-out-05.clustermail.de (good-out-05.clustermail.de
	[212.223.36.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F68CE00C65
	for <poky@yoctoproject.org>; Thu, 12 May 2016 01:58:43 -0700 (PDT)
Received: from frontend-02 ([10.0.0.2] helo=frontend.clustermail.de)
	by smtpout-01.clustermail.de with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84_2)
	(envelope-from <Daniel.Klauer@gin.de>) id 1b0lZ8-0003lX-O7
	for poky@yoctoproject.org; Thu, 12 May 2016 10:01:56 +0200
Received: from [217.6.33.234] (helo=Win2012-02.gin-domain.local)
	by frontend.clustermail.de with esmtpsa (TLSv1.2:AES256-SHA:256)
	(Exim 4.84_2) (envelope-from <Daniel.Klauer@gin.de>)
	id 1b0lZ8-00015M-8u
	for poky@yoctoproject.org; Thu, 12 May 2016 10:01:50 +0200
Received: from Win2012-02.gin-domain.local (192.168.1.12) by
	Win2012-02.gin-domain.local (192.168.1.12) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 12 May 2016 10:01:48 +0200
Received: from Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90]) by
	Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90%12]) with mapi
	id 15.00.1130.005; Thu, 12 May 2016 10:01:48 +0200
From: "Klauer, Daniel" <Daniel.Klauer@gin.de>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] smartpm: Don't ignore error if RPM transaction fails
	without problems
Thread-Index: AQHRrCSIVtG7FGkbD0O1UJBF03zw/g==
Date: Thu, 12 May 2016 08:01:47 +0000
Message-ID: <8759c4fa3b364ca6966f81155185b602@Win2012-02.gin-domain.local>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.1.219]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFnrDqsTGxXJgBSOPbo6FSbjB+cvT37BZ9PT3sTgwBjBEsWbmJeVXJLBmrP+9hLHgcwdjxemdUg2Mz+u6GLk4hAT2MEqcWfiVDcI5ySjReHY6UxcjJwezgKnEla+NLBC2osSFew1gNpuArsS59vesILaIgLHEzE9LwGxhgQiJx3PWMHYxcgDFYyU+zWKEKNGT+PP7N9hICQEdib+LGsHKWQRUJU6tPMwMYvMKeElcfbYMrJ5RQFais+Ed1AniEreezIfqFZBYsuc8M4StJNF7+x1UPERi1+Z77BBzBCVOznzCAhE3k9j7YAlUjZ5E/9t5UHagxLctU5hBzpQAevHq+2CIsIHEu7WfoVqNJVZu/M8IYdtK7JkxkQmi3Fli3o16iLCTxJuOt6wQtrbE9lf7WGE+3HRtFdQYeYn/9+5D2Y4SV971s0HYihKfbjexTWBUm4UUzrOQwnkWkudnIXlsASPLKkbp8Mw8IwNDI10DI730zDzdlPzcxMw8vZz85MScTYzQlLCD8dFn10OMkhxMSqK8uSYm4UJ8SfkplRmJxRnxRaU5qcWHGCU4eJREeKPMgHK8xQWJucWZ6TApGQ4OJQnezaZAKcGi1PTUirTMnJLUIoj0KUZJKXHeWpCkAEhfRmkeXO4So6iUMO9VkH08BalFuZklEPFbjMIcD5mEWPLy81KlgE5kAAINxleM4hyMSsK8TiA38GTmlcCd8AroOiag66qvG4FcV5KIkAImXT9X3eef6wzM5t39bjzBMq35Xdzfq46FN7tSDyy//8dfZIIiL1stm/Hj8Dzbhr/WfxP5vJM9hArcfD7Msitn3/zRtd57XU6C0OOXHs+a/8dUHXPY2zSjeLngpWifKyzRf1ed1fhb1Sr+LOksy4tfvgxPeLaVSfHmc+k+P/Se7/OG6BuNi25lKrEUZyQaajEXFScCAMUixq5/AwAA
MIME-Version: 1.0
Subject: [PATCH] smartpm: Don't ignore error if RPM transaction fails without problems
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
X-List-Received-Date: Thu, 12 May 2016 08:58:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

SmartPM could misinterpret RPM transaction error as success,=0A=
if ts.run() (RPM Python API) returns an empty problems list.=0A=
=0A=
This could happen for example if the RPM database is partially corrupted=0A=
such that the transaction does not have any problems like conflicts or=0A=
missing dependencies, but still can't be committed.=0A=
=0A=
The added patch fixes the problem in the upstream sources;=0A=
one of the existing patches has to be adjusted to still apply.=0A=
=0A=
Signed-off-by: Daniel Klauer <daniel.klauer@gin.de>=0A=
---=0A=
 ...gnore-transaction-error-with-empty-proble.patch | 57 ++++++++++++++++++=
++++=0A=
 .../python/python-smartpm/smart-attempt.patch      |  6 +--=0A=
 meta/recipes-devtools/python/python-smartpm_git.bb |  1 +=0A=
 3 files changed, 61 insertions(+), 3 deletions(-)=0A=
 create mode 100644 meta/recipes-devtools/python/python-smartpm/0001-rpm-Do=
n-t-ignore-transaction-error-with-empty-proble.patch=0A=
=0A=
diff --git a/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ign=
ore-transaction-error-with-empty-proble.patch b/meta/recipes-devtools/pytho=
n/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.=
patch=0A=
new file mode 100644=0A=
index 0000000..a740ddd=0A=
--- /dev/null=0A=
+++ b/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ignore-tra=
nsaction-error-with-empty-proble.patch=0A=
@@ -0,0 +1,57 @@=0A=
+From 0c55d7e18f40465e95e8e4bf22af01f5d4477d3c Mon Sep 17 00:00:00 2001=0A=
+From: Daniel Klauer <daniel.klauer@gin.de>=0A=
+Date: Wed, 11 May 2016 17:22:49 +0200=0A=
+Subject: [PATCH] rpm: Don't ignore transaction error with empty problems l=
ist=0A=
+=0A=
+SmartPM could misinterpret RPM transaction error as success,=0A=
+if ts.run() (RPM Python API) returns an empty problems list,=0A=
+because of incorrect check for None which treated empty list=0A=
+to be the same as None when it has different meaning.=0A=
+=0A=
+ts.run() returns:=0A=
+* None in case of success=0A=
+* problems list in case of error, may be empty=0A=
+(look at rpmts_Run() in rpm-5.4.14/python/rpmts-py.c [1])=0A=
+=0A=
+"if mylist" is not good enough to check for error here, because it will=0A=
+treat an empty list as "false" because its len() =3D=3D 0 [2].=0A=
+=0A=
+ts.check() seems to be different (it's ok for it to return an empty list),=
=0A=
+but for consistency it should be made clear that it can return either None=
,=0A=
+an empty list or a non-empty list.=0A=
+=0A=
+[1] http://rpm5.org/cvs/fileview?f=3Drpm/python/rpmts-py.c&v=3D1.111.2.3=
=0A=
+[2] https://docs.python.org/2/library/stdtypes.html#truth-value-testing=0A=
+=0A=
+Upstream-Status: Pending=0A=
+=0A=
+Signed-off-by: Daniel Klauer <daniel.klauer@gin.de>=0A=
+---=0A=
+ smart/backends/rpm/pm.py | 4 ++--=0A=
+ 1 file changed, 2 insertions(+), 2 deletions(-)=0A=
+=0A=
+diff --git a/smart/backends/rpm/pm.py b/smart/backends/rpm/pm.py=0A=
+index 9bbd952..635f726 100644=0A=
+--- a/smart/backends/rpm/pm.py=0A=
++++ b/smart/backends/rpm/pm.py=0A=
+@@ -208,7 +208,7 @@ class RPMPackageManager(PackageManager):=0A=
+         force =3D sysconf.get("rpm-force", False)=0A=
+         if not force:=0A=
+             probs =3D ts.check()=0A=
+-            if probs:=0A=
++            if (probs is not None) and (len(probs) !=3D 0):=0A=
+                 problines =3D []=0A=
+                 for prob in probs:=0A=
+                     name1 =3D "%s-%s-%s" % prob[0]=0A=
+@@ -247,7 +247,7 @@ class RPMPackageManager(PackageManager):=0A=
+             del getTS.ts=0A=
+             cb.grabOutput(False)=0A=
+             prog.setDone()=0A=
+-            if probs:=0A=
++            if probs is not None:=0A=
+                 raise Error, "\n".join([x[0] for x in probs])=0A=
+             prog.stop()=0A=
+ =0A=
+-- =0A=
+1.9.1=0A=
+=0A=
diff --git a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patc=
h b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch=0A=
index ec98e03..5aedc88 100644=0A=
--- a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch=0A=
+++ b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch=0A=
@@ -36,7 +36,7 @@ index 9bbd952..ba6405a 100644=0A=
          finally:=0A=
              del getTS.ts=0A=
              cb.grabOutput(False)=0A=
-+            if probs and sysconf.has("attempt-install", soft=3DTrue):=0A=
++            if (probs is not None) and sysconf.has("attempt-install", sof=
t=3DTrue):=0A=
 +                def remove_conflict(pkgNEVR):=0A=
 +                    for key in changeset.keys():=0A=
 +                        if pkgNEVR =3D=3D str(key):=0A=
@@ -67,8 +67,8 @@ index 9bbd952..ba6405a 100644=0A=
 +                        retry =3D 0=0A=
 +=0A=
              prog.setDone()=0A=
--            if probs:=0A=
-+            if probs and (not retry):=0A=
+-            if probs is not None:=0A=
++            if (probs is not None) and (not retry):=0A=
                  raise Error, "\n".join([x[0] for x in probs])=0A=
              prog.stop()=0A=
 +            if retry and len(changeset):=0A=
diff --git a/meta/recipes-devtools/python/python-smartpm_git.bb b/meta/reci=
pes-devtools/python/python-smartpm_git.bb=0A=
index d6c378b..95b7e09 100644=0A=
--- a/meta/recipes-devtools/python/python-smartpm_git.bb=0A=
+++ b/meta/recipes-devtools/python/python-smartpm_git.bb=0A=
@@ -17,6 +17,7 @@ SRC_URI =3D "\=0A=
           file://smart-recommends.patch \=0A=
           file://smart-improve-error-reporting.patch \=0A=
           file://smart-channelsdir.patch \=0A=
+          file://0001-rpm-Don-t-ignore-transaction-error-with-empty-proble=
.patch \=0A=
           file://smart-attempt.patch \=0A=
           file://smart-attempt-fix.patch \=0A=
           file://smart-rpm4-fixes.patch \=0A=
-- =0A=
1.9.1=0A=

