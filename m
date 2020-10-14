Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
 by mx.groups.io with SMTP id smtpd.web10.6226.1602659761532606083
 for <poky@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 00:16:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@de.bosch.com header.s=key2-intmail header.b=cCbJ6EsK;
 spf=pass (domain: de.bosch.com, ip: 139.15.230.186, mailfrom: nico.mueller@de.bosch.com)
Received: from si0vm1948.rbesz01.com (lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
	by si0vms0217.rbdmz01.com (Postfix) with ESMTPS id 4CB3by431pz4f3lwm
	for <poky@lists.yoctoproject.org>; Wed, 14 Oct 2020 09:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=key2-intmail; t=1602659758;
	bh=/h0Vx52rouZJXW+ckONyO7ell/JAGAZbbFGT+1ozzqw=; l=10;
	h=From:Subject:From:Reply-To:Sender;
	b=cCbJ6EsKxVpLs+WNTGeQANVeywDj6218C9m8X8BiWUSV23nMpPpSBxBNwYa8ntK5T
	 AiRNdmDorkMw6Mu6PNRuQ7C1U/faZBERC5U4QJGm7mfp4FurwEdu/tuBLI/j5wq7VZ
	 lpNgAazIyEwknNvp9XGcxSRch1dvnYxSP4wHwll8=
Received: from fe0vm7918.rbesz01.com (unknown [10.58.172.176])
	by si0vm1948.rbesz01.com (Postfix) with ESMTPS id 4CB3by3d6qz4hb
	for <poky@lists.yoctoproject.org>; Wed, 14 Oct 2020 09:15:58 +0200 (CEST)
X-AuditID: 0a3aad10-597ff7000000031a-62-5f86a5aeae11
Received: from fe0vm1651.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm7918.rbesz01.com (SMG Outbound) with SMTP id 22.D0.00794.EA5A68F5; Wed, 14 Oct 2020 09:15:58 +0200 (CEST)
Received: from FE-MBX2042.de.bosch.com (fe-mbx2042.de.bosch.com [10.3.231.52])
	by fe0vm1651.rbesz01.com (Postfix) with ESMTPS id 4CB3by2rKZzvlD
	for <poky@lists.yoctoproject.org>; Wed, 14 Oct 2020 09:15:58 +0200 (CEST)
Received: from FE-MBX2042.de.bosch.com (10.3.231.52) by
 FE-MBX2042.de.bosch.com (10.3.231.52) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 14 Oct 2020 09:15:58 +0200
Received: from FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70]) by
 FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70%5]) with mapi id
 15.01.2106.002; Wed, 14 Oct 2020 09:15:58 +0200
From: "Mueller Nico (TT-RHC/EIS)" <nico.mueller@de.bosch.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, "Mueller Nico
 (TT-RHC/PAT)" <Nico.Mueller@de.bosch.com>
Subject: Re: [poky] [PATCH] uninative: handle url in `PREMIRRORS` with parameter correctly
Thread-Topic: [poky] [PATCH] uninative: handle url in `PREMIRRORS` with
 parameter correctly
Thread-Index: AQHWgcCsGSpVYPoJQ06BImOy7qq5namW77Un
Date: Wed, 14 Oct 2020 07:15:57 +0000
Message-ID: <35afcb9623794e7e94293343b7814646@de.bosch.com>
References: <6b4981f24196489ca92981d5201ec7fd@de.bosch.com>,<16313426C15D0D14.16839@lists.yoctoproject.org>
In-Reply-To: <16313426C15D0D14.16839@lists.yoctoproject.org>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.35.30.24]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupikeLIzCtJLcpLzFFi42Lhslorq7tuaVu8we1GGYsPcx6xOTB6zDz1
	iDmAMYrLJiU1J7MstUjfLoEr486hfawFvxwrOtYfZ2tg3GTZxcjJISFgIvH84i1GEFtIYAaT
	xOVP+l2MXED2XUaJCTeusUI4bxklHpx/xATh7GOU+Hf5HRtIC5uArcTda1fZuxg5OEQEqiT6
	fwuChIUFYiT+f+4HmyoiECvx8c9/ZgjbSOLUvg9gcRYBVYkDy3exgti8AtYSR3qWs0BckS0x
	t6cLzOYUsJHoWAuxilFAVmLDhvNgc5gFxCU2PfvOCvGBgMSSPRBxCQFRiZeP/0HF5SWWXW9h
	h6hPkthz/SvULkGJkzOfsExgFJ2FZNQsJGWzkJRBxPUkbkydwgZha0ssW/iaGcLWlZjx7xAL
	svgCRvZVjKJpqQZlueaWhhZ6RUmpxVUGhnrJ+bmbGCHRJbCD8Xb3B71DjEwcjIcYJTiYlUR4
	X0m3xQvxpiRWVqUW5ccXleakFh9ilOZgURLnVeHZGCckkJ5YkpqdmlqQWgSTZeLglGpgCvwm
	vEDq0rGFBZZqh3lN/dg8Ckvz4hP2KHUYcUQs0ecwY9QJejtLYcFfTaGJk/fM5d161/WU20qH
	DwzfBTPz9q+9tSnvIo+bfu+CWW+Y/rw+6MjcV/Dc++WPxIfLlh615N52XcHy0c/d7/2id2TG
	snF5Pr56oLb8beG9jXzHWRR3fCh/I7gqV7zvl034zZu3m/7lVhqU9Ad6RQuuYSh8zuyfy/Tp
	QHeGRqu5F6Mp75ayc7MyqzeeEC+aVblD89a8ZHYORXF7Bd8dbN5ntsTvXfV+ddUMIeW58iKK
	y7SuiK9NWv9u4R7FhLQGT8ctHzuf1f/d+8L69BF+IZZZ2o2Wer7mdVGp1u2z76lVc+krsRRn
	JBpqMRcVJwIAwW1phR0DAAA=
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_35afcb9623794e7e94293343b7814646deboschcom_"

--_000_35afcb9623794e7e94293343b7814646deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear poky-Maintainers,


what further information is required in order to to get this patch merged?


Kind regards,

Nico M=FCller

________________________________
Von: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> im Auftrag v=
on Mueller Nico (TT-RHC/EIS) via lists.yoctoproject.org <nico.mueller=3Dde.=
bosch.com@lists.yoctoproject.org>
Gesendet: Donnerstag, 3. September 2020 09:04:37
An: poky@lists.yoctoproject.org
Betreff: [poky] [PATCH] uninative: handle url in `PREMIRRORS` with paramete=
r correctly

This patch places url parameters correctly in a the uninative fetcher when =
mirrors are used.

The following changes since commit a6709152e9788418e6c9431851437eb8ec4c6b46=
:

  bitbake: process/knotty: Improve early exception handling (2020-09-02 16:=
01:05 +0100)

are available in the Git repository at:

  git://push.yoctoproject.org/poky-contrib niecore/fix-bug-in-uninative-mir=
ror-handleing

Nico M=FCller (1):
  uninative: handle url in `PREMIRRORS` with parameter correctly

 meta/classes/uninative.bbclass | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

--
2.27.0

Signed-off-by: Nico M=FCller <nico.mueller@de.bosch.com>
---
 meta/classes/uninative.bbclass | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/meta/classes/uninative.bbclass b/meta/classes/uninative.bbclas=
s
index 316c0f0616..8a78274144 100644
--- a/meta/classes/uninative.bbclass
+++ b/meta/classes/uninative.bbclass
@@ -63,7 +63,14 @@ python uninative_event_fetchloader() {
                 except ValueError:
                     continue
                 if find.startswith("http"):
-                    localdata.appendVar("PREMIRRORS", " ${UNINATIVE_URL}${=
UNINATIVE_TARBALL} %s/uninative/%s/${UNINATIVE_TARBALL}" % (replace, chksum=
))
+                    # Check if PREMIRROR url is using parameters
+                    if ";" in replace:
+                        premirror_url, premirror_parameter =3D replace.spl=
it(";", 1)
+                        premirror =3D " %s/uninative/%s/${UNINATIVE_TARBAL=
L};%s" % (premirror_url, chksum, premirror_parameter)
+                    else:
+                        premirror =3D " %s/uninative/%s/${UNINATIVE_TARBAL=
L}" % (replace, chksum)
+
+                    localdata.appendVar("PREMIRRORS", " ${UNINATIVE_URL}${=
UNINATIVE_TARBALL} " + premirror)

             srcuri =3D d.expand("${UNINATIVE_URL}${UNINATIVE_TARBALL};sha2=
56sum=3D%s" % chksum)
             bb.note("Fetching uninative binary shim %s (will check PREMIRR=
ORS first)" % srcuri)
--
2.27.0

--_000_35afcb9623794e7e94293343b7814646deboschcom_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Dear poky-Maintainers,</p>
<p><br>
</p>
<p>what further information is required in order to to get this patch merge=
d?</p>
<p><br>
</p>
<p>Kind regards,</p>
<p>Nico M=FCller<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> poky@lists.yoctoprojec=
t.org &lt;poky@lists.yoctoproject.org&gt; im Auftrag von Mueller Nico (TT-R=
HC/EIS) via lists.yoctoproject.org &lt;nico.mueller=3Dde.bosch.com@lists.yo=
ctoproject.org&gt;<br>
<b>Gesendet:</b> Donnerstag, 3. September 2020 09:04:37<br>
<b>An:</b> poky@lists.yoctoproject.org<br>
<b>Betreff:</b> [poky] [PATCH] uninative: handle url in `PREMIRRORS` with p=
arameter correctly</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
This patch places url parameters correctly in a the uninative fetcher when =
mirrors are used.<br>
<div style=3D"color: rgb(0, 0, 0);"><font size=3D"2"><span style=3D"font-si=
ze:10pt;">
<div class=3D"PlainText"><br>
The following changes since commit a6709152e9788418e6c9431851437eb8ec4c6b46=
:<br>
<br>
&nbsp; bitbake: process/knotty: Improve early exception handling (2020-09-0=
2 16:01:05 &#43;0100)<br>
<br>
are available in the Git repository at:<br>
<br>
&nbsp; git://push.yoctoproject.org/poky-contrib niecore/fix-bug-in-uninativ=
e-mirror-handleing<br>
<br>
Nico M=FCller (1):<br>
&nbsp; uninative: handle url in `PREMIRRORS` with parameter correctly<br>
<br>
&nbsp;meta/classes/uninative.bbclass | 9 &#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;-<br>
&nbsp;1 file changed, 8 insertions(&#43;), 1 deletion(-)<br>
<br>
-- <br>
2.27.0<br>
<br>
Signed-off-by: Nico M=FCller &lt;nico.mueller@de.bosch.com&gt;<br>
---<br>
&nbsp;meta/classes/uninative.bbclass | 9 &#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;-<br>
&nbsp;1 file changed, 8 insertions(&#43;), 1 deletion(-)<br>
<br>
diff --git a/meta/classes/uninative.bbclass b/meta/classes/uninative.bbclas=
s<br>
index 316c0f0616..8a78274144 100644<br>
--- a/meta/classes/uninative.bbclass<br>
&#43;&#43;&#43; b/meta/classes/uninative.bbclass<br>
@@ -63,7 &#43;63,14 @@ python uninative_event_fetchloader() {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; except ValueError:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if find.startswith(&quot;http&quot;):<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; localdata.appendVar(&quot;PREMIRRO=
RS&quot;, &quot; ${UNINATIVE_URL}${UNINATIVE_TARBALL} %s/uninative/%s/${UNI=
NATIVE_TARBALL}&quot; % (replace, chksum))<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Check if PREMIRROR url is us=
ing parameters<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if &quot;;&quot; in replace:<b=
r>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; premir=
ror_url, premirror_parameter =3D replace.split(&quot;;&quot;, 1)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; premir=
ror =3D &quot; %s/uninative/%s/${UNINATIVE_TARBALL};%s&quot; % (premirror_u=
rl, chksum, premirror_parameter)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; premir=
ror =3D &quot; %s/uninative/%s/${UNINATIVE_TARBALL}&quot; % (replace, chksu=
m)<br>
&#43;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; localdata.appendVar(&quot;PREM=
IRRORS&quot;, &quot; ${UNINATIVE_URL}${UNINATIVE_TARBALL} &quot; &#43; prem=
irror)<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sr=
curi =3D d.expand(&quot;${UNINATIVE_URL}${UNINATIVE_TARBALL};sha256sum=3D%s=
&quot; % chksum)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb=
.note(&quot;Fetching uninative binary shim %s (will check PREMIRRORS first)=
&quot; % srcuri)<br>
-- <br>
2.27.0<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_35afcb9623794e7e94293343b7814646deboschcom_--
