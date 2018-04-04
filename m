Return-Path: <prvs=063258e4d2=jens.erdmann@auerswald.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04519E00997; Wed,  4 Apr 2018 07:46:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.winet.de (mailout02.winet.de [84.17.108.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA28BE008A2
	for <poky@yoctoproject.org>; Wed,  4 Apr 2018 07:46:12 -0700 (PDT)
Received: from fw2.winet.de (mr00.winet.de [192.168.12.10])
	by smtp.winet.de (Postfix) with ESMTPS id 58AF3E23E3
	for <poky@yoctoproject.org>; Wed,  4 Apr 2018 16:46:10 +0200 (CEST)
Received: from smtp.winet.de (localhost [127.0.0.1])
	by fw2.winet.de (Postfix) with ESMTP id 35182E00EF
	for <poky@yoctoproject.org>; Wed,  4 Apr 2018 16:46:10 +0200 (CEST)
Received: from mail.auerswald.de (unknown [81.14.169.68])
	by smtp.winet.de (Postfix) with ESMTPSA id 0170EE00E6
	for <poky@yoctoproject.org>; Wed,  4 Apr 2018 16:46:10 +0200 (CEST)
Received: from autodiscover.auerswald.de ([172.20.0.66]:21289
	helo=wsex02.auerswald.de)
	by mail.auerswald.de with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Jens.Erdmann@auerswald.de>)
	id 1f3jfl-0005UC-06
	for poky@yoctoproject.org; Wed, 04 Apr 2018 14:46:01 +0000
Received: from wsex02.auerswald.de (172.20.0.66) by wsex02.auerswald.de
	(172.20.0.66) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1034.26;
	Wed, 4 Apr 2018 16:46:00 +0200
Received: from wsex02.auerswald.de ([fe80::84d7:58d0:dd97:6e40]) by
	wsex02.auerswald.de ([fe80::84d7:58d0:dd97:6e40%14]) with mapi id
	15.01.1034.033; Wed, 4 Apr 2018 16:46:00 +0200
X-CTCH-RefID: str=0001.0A0C0205.5AC4E529.0049, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: "Erdmann, Jens" <Jens.Erdmann@auerswald.de>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] externalsrc: Change absolute symlinks to relative
	ones
Thread-Index: AQHTy1D5uEO/YfzTpkWnbgzIXBSlI6PwsIUm
Date: Wed, 4 Apr 2018 14:46:00 +0000
Message-ID: <e8c188e7eb8e4f03a9ec5b544145334c@auerswald.de>
References: <bcd607cf3fb44128b1233e50c96add58@auerswald.de>
In-Reply-To: <bcd607cf3fb44128b1233e50c96add58@auerswald.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.12.203]
MIME-Version: 1.0
Subject: [PATCH] externalsrc: Change absolute symlinks to relative ones
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
X-List-Received-Date: Wed, 04 Apr 2018 14:46:14 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_e8c188e7eb8e4f03a9ec5b544145334cauerswaldde_"

--_000_e8c188e7eb8e4f03a9ec5b544145334cauerswaldde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


In 3eee8e99 sstate got changed to refuse absolute symlinks. Externalsrc
creates absolute symlinks for oe-logs and oe-workdir which causes
errors at do_populate_sysroot.
Changing symlinks to relative paths will make externalsrc comply with sstat=
e
changesi and will avoid those errors.

Signed-off-by Jens Erdmann <jens.erdmann@auerswald.de>
---
 meta/classes/externalsrc.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/externalsrc.bbclass b/meta/classes/externalsrc.bb=
class
index 3f1d396..1f56495 100644
--- a/meta/classes/externalsrc.bbclass
+++ b/meta/classes/externalsrc.bbclass
@@ -136,7 +136,7 @@ python externalsrc_configure_prefunc() {
     for symlink in symlinks:
         symsplit =3D symlink.split(':', 1)
         lnkfile =3D os.path.join(s_dir, symsplit[0])
-        target =3D d.expand(symsplit[1])
+        target =3D os.path.relpath(d.expand(symsplit[1]), s_dir)
         if len(symsplit) > 1:
             if os.path.islink(lnkfile):
                 # Link already exists, leave it if it points to the right =
location already
--
2.7.4


--_000_e8c188e7eb8e4f03a9ec5b544145334cauerswaldde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"></div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
In 3eee8e99 sstate got changed to refuse absolute symlinks. Externalsrc<br>
<div>creates absolute symlinks for oe-logs and oe-workdir which causes<br>
errors at do_populate_sysroot.<br>
Changing symlinks to relative paths will make externalsrc comply with sstat=
e<br>
changesi and will avoid those errors.<br>
<br>
Signed-off-by Jens Erdmann &lt;jens.erdmann@auerswald.de&gt;<br>
---<br>
&nbsp;meta/classes/externalsrc.bbclass | 2 &#43;-<br>
&nbsp;1 file changed, 1 insertion(&#43;), 1 deletion(-)<br>
<br>
diff --git a/meta/classes/externalsrc.bbclass b/meta/classes/externalsrc.bb=
class<br>
index 3f1d396..1f56495 100644<br>
--- a/meta/classes/externalsrc.bbclass<br>
&#43;&#43;&#43; b/meta/classes/externalsrc.bbclass<br>
@@ -136,7 &#43;136,7 @@ python externalsrc_configure_prefunc() {<br>
&nbsp;&nbsp;&nbsp;&nbsp; for symlink in symlinks:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; symsplit =3D symlink.split=
(':', 1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lnkfile =3D os.path.join(s=
_dir, symsplit[0])<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; target =3D d.expand(symsplit[1]=
)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; target =3D os.path.relpath(=
d.expand(symsplit[1]), s_dir)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if len(symsplit) &gt; 1:<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if=
 os.path.islink(lnkfile):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; # Link already exists, leave it if it points to the r=
ight location already<br>
-- <br>
2.7.4<br>
<br>
</div>
<p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_e8c188e7eb8e4f03a9ec5b544145334cauerswaldde_--
