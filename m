Received: from mail2.gauselmann.com (mail2.gauselmann.com [193.102.155.89])
 by mx.groups.io with SMTP id smtpd.web10.9982.1576764013015444648
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 06:00:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gauselmann.de header.s=20190718 header.b=dF+lMXiM;
 spf=pass (domain: gauselmann.de, ip: 193.102.155.89, mailfrom: prvs=32563d409f=cherzig@gauselmann.de)
Received: from pps.filterd (mail2.gauselmann.com [127.0.0.1])
	by mail2.gauselmann.com (8.16.0.27/8.16.0.27) with SMTP id xBJDhFHS008927
	for <poky@lists.yoctoproject.org>; Thu, 19 Dec 2019 15:00:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gauselmann.de; h=to : mime-version
 : subject : message-id : from : date : content-type; s=20190718;
 bh=w9Zpxy4S/L9nJsdPX58m3QbcHt/l+FyiWgR1etXamv8=;
 b=dF+lMXiMmZ8l3wvxIzfCwo8jEJ9x3KTlxcdUXFtRomhLhkXdZUYQCcfVRmhU12/EaYHg
 sWg0guD7bh0VH+SJ74I93sKPNLqNg3ixDLMeSYq9QlQnTEa/QstFzNv39Va4imzzWQQ4
 FqMMY7XEPdqB8QZfg1V4FvuiWwl35N172Z18g6DxvgmmSOdIwVyJ6LoNvkc9psUQ3mFo
 t955NEFrNiBqVTetR7/tVHa1VCw96G3hYPDu61AhHsWt58bAvb9C+sPR2gx+ape58vJT
 IzQGRlCYHBhAbbP3aoGWQYFT2iv9JgxGXpNkl2ySwq9PuKgMncjss/5j03zoLvv9ps7y YA== 
Received: from bswinp16.gg.gauselmann.com ([10.99.84.148])
	by mail2.gauselmann.com with ESMTP id 2wvq90aus8-1
	for <poky@lists.yoctoproject.org>; Thu, 19 Dec 2019 15:00:10 +0100
Received: from wm01.gauselmann.com ([10.99.82.28])
          by BSWINP16.gg.gauselmann.com
          with ESMTP id 2019121915000997-40822 ;
          Thu, 19 Dec 2019 15:00:09 +0100 
To: poky@lists.yoctoproject.org
MIME-Version: 1.0
Subject: [PATCH] bitbake: fetch2/clearcase: Fix tar command
X-KeepSent: 0F51A1C8:E86D40CA-C12584D5:004CC303;
 type=4; flags=0; name=$KeepSent
Message-ID: <OF0F51A1C8.E86D40CA-ONC12584D5.004CC303-C12584D5.004CEB63@gauselmann.com>
From: "Christian Herzig" <cherzig@gauselmann.de>
Date: Thu, 19 Dec 2019 15:00:09 +0100
X-MIMETrack: Serialize by Router on LNS3/BEIT GmbH at 19.12.2019 15:00:09,
	Serialize complete at 19.12.2019 15:00:09,
	Itemize by SMTP Server on LNS13/BEIT GmbH at 19.12.2019 15:00:09,
	Serialize by Router on LNS13/BEIT GmbH at 19.12.2019 15:00:10,
	Serialize complete at 19.12.2019 15:00:10
X-TNEFEvaluated: 1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-19_01:,,
 signatures=0
Content-Type: multipart/alternative; boundary="=_alternative 004CEB62C12584D5_="

--=_alternative 004CEB62C12584D5_=
Content-Type: text/plain; charset="US-ASCII"

Signed-off-by: Christian Herzig <cherzig@gauselmann.de>
---
 bitbake/lib/bb/fetch2/clearcase.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/clearcase.py 
b/bitbake/lib/bb/fetch2/clearcase.py
index e2934ef9fc..4dc712b080 100644
--- a/bitbake/lib/bb/fetch2/clearcase.py
+++ b/bitbake/lib/bb/fetch2/clearcase.py
@@ -237,8 +237,8 @@ class ClearCase(FetchMethod):
         shutil.copyfile(ud.configspecfile, os.path.join(ud.viewdir, 
ud.csname))
 
         # Clean clearcase meta-data before tar
-
-        runfetchcmd('tar -czf "%s" .' % (ud.localpath), d, cleanup = 
[ud.localpath])
+        os.chdir(ud.viewdir)
+        runfetchcmd('tar -czf "%s" .' % (ud.localpath), d, cleanup = 
[ud.localpath], workdir = ud.viewdir)
 
         # Clean up so we can create a new view next time
         self.clean(ud, d);
-- 
2.17.1



--=_alternative 004CEB62C12584D5_=
Content-Type: text/html; charset="US-ASCII"

<tt><span style=" font-size:10pt">Signed-off-by: Christian Herzig &lt;cherzig@gauselmann.de&gt;<br>
---<br>
 bitbake/lib/bb/fetch2/clearcase.py | 4 ++--<br>
 1 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/bitbake/lib/bb/fetch2/clearcase.py b/bitbake/lib/bb/fetch2/clearcase.py<br>
index e2934ef9fc..4dc712b080 100644<br>
--- a/bitbake/lib/bb/fetch2/clearcase.py<br>
+++ b/bitbake/lib/bb/fetch2/clearcase.py<br>
@@ -237,8 +237,8 @@ class ClearCase(FetchMethod):<br>
 &nbsp; &nbsp; &nbsp; &nbsp; shutil.copyfile(ud.configspecfile, os.path.join(ud.viewdir,
ud.csname))<br>
 <br>
 &nbsp; &nbsp; &nbsp; &nbsp; # Clean clearcase meta-data before tar<br>
-<br>
- &nbsp; &nbsp; &nbsp; &nbsp;runfetchcmd('tar -czf &quot;%s&quot; .' %
(ud.localpath), d, cleanup = [ud.localpath])<br>
+ &nbsp; &nbsp; &nbsp; &nbsp;os.chdir(ud.viewdir)<br>
+ &nbsp; &nbsp; &nbsp; &nbsp;runfetchcmd('tar -czf &quot;%s&quot; .' %
(ud.localpath), d, cleanup = [ud.localpath], workdir = ud.viewdir)<br>
 <br>
 &nbsp; &nbsp; &nbsp; &nbsp; # Clean up so we can create a new view next
time<br>
 &nbsp; &nbsp; &nbsp; &nbsp; self.clean(ud, d);<br>
-- <br>
2.17.1<br>
<br>
</span></tt>
<br>

--=_alternative 004CEB62C12584D5_=--
