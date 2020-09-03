Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
 by mx.groups.io with SMTP id smtpd.web10.8391.1599116680938281322
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Sep 2020 00:04:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@de.bosch.com header.s=key1-intmail header.b=PGnir9SN;
 spf=pass (domain: de.bosch.com, ip: 139.15.230.186, mailfrom: nico.mueller@de.bosch.com)
Received: from si0vm1948.rbesz01.com (lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
	by fe0vms0187.rbdmz01.com (Postfix) with ESMTPS id 4BhsHp1MXcz1XLDR8
	for <poky@lists.yoctoproject.org>; Thu,  3 Sep 2020 09:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=key1-intmail; t=1599116678;
	bh=hz+F3pXxiNcSrtP/iBXO0VQuuVcWBove3M7W0DL3RIA=; l=10;
	h=From:Subject:From:Reply-To:Sender;
	b=PGnir9SNxkvVgZbX/LOxKD5b1ixeOL++iTaBPFMlzMyjpbHNdLEhDLb9f2ytHqoSf
	 XeM8xvAads1dVeh3eEykiQg1+OnjveeewIIl9nUSEakjTfLsCyU7UqkNXK8G5npzFc
	 FYBwxAa+42ljvmEDbgsZnMHLiTcxejZda/ZJUaXQ=
Received: from si0vm2082.rbesz01.com (unknown [10.58.172.176])
	by si0vm1948.rbesz01.com (Postfix) with ESMTPS id 4BhsHp0s8Yz5vm
	for <poky@lists.yoctoproject.org>; Thu,  3 Sep 2020 09:04:38 +0200 (CEST)
X-AuditID: 0a3aad16-82fff700000077c5-60-5f509586d0fe
Received: from fe0vm1652.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by si0vm2082.rbesz01.com (SMG Outbound) with SMTP id BD.EB.30661.685905F5; Thu,  3 Sep 2020 09:04:38 +0200 (CEST)
Received: from FE-MBX2042.de.bosch.com (fe-mbx2042.de.bosch.com [10.3.231.52])
	by fe0vm1652.rbesz01.com (Postfix) with ESMTPS id 4BhsHn6wmbzB1H
	for <poky@lists.yoctoproject.org>; Thu,  3 Sep 2020 09:04:37 +0200 (CEST)
Received: from FE-MBX2042.de.bosch.com (10.3.231.52) by
 FE-MBX2042.de.bosch.com (10.3.231.52) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1979.3; Thu, 3 Sep 2020 09:04:37 +0200
Received: from FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70]) by
 FE-MBX2042.de.bosch.com ([fe80::8a5:f97e:ffde:bf70%5]) with mapi id
 15.01.1979.003; Thu, 3 Sep 2020 09:04:37 +0200
From: nico.mueller@de.bosch.com
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: [PATCH] uninative: handle url in `PREMIRRORS` with parameter correctly
Thread-Topic: [PATCH] uninative: handle url in `PREMIRRORS` with parameter
  correctly
Thread-Index: AQHWgU6+VnWStD9Ym06Hq9eF+ouUpKlWfkDa
Date: Thu, 3 Sep 2020 07:04:37 +0000
Message-ID: <5f5f3e50c6e044c1b9dcc9bed5458aa2@de.bosch.com>
References: <6b4981f24196489ca92981d5201ec7fd@de.bosch.com>
In-Reply-To: <6b4981f24196489ca92981d5201ec7fd@de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.35.30.24]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkkeLIzCtJLcpLzFFi42Lhslorq9s2NSDeYPoKJosPcx6xOTB6zDz1
	iDmAMYrLJiU1J7MstUjfLoEr4+Ra+4IZphWzFwQ0ME7R62Lk5JAQMJGY+u8wexcjF4eQwAwm
	iRdz37NCOHcZJe59X8YE4bxhlFjddwbK2cso8eDtdFaQfjYBW4lHW/sYQWwRAXuJKdPWMIHY
	wgJBEmuvL2KHiIdLTD0+kxXCNpLouXWQDcRmEVCR+Hf4FEsXIwcHr4C1xLOJZSBhISDz19YV
	zCA2p4CNxNVXK1lAbEYBWYkNG86DxZkFxCU2PfvOCvGCgMSSPRBxCQFRiZeP/0HF5SWWXW9h
	h6hPklh1dRrYWl4BQYmTM5+wTGAUnYVk1CwkZbOQlEHE9SRuTJ3CBmFrSyxb+JoZwtaVmPHv
	EAuy+AJG9lWMosWZBmW5RgYWRnpFSanFVQaGesn5uZsYIbEltoNxe9cHvUOMTByMhxglOJiV
	RHhn3vCNF+JNSaysSi3Kjy8qzUktPsQozcGiJM6rwrMxTkggPbEkNTs1tSC1CCbLxMEp1cDE
	3/to1snOCy/l4l3WmYo9erylj2vJIZ9LGtvrWh9oCE+xWpHkXVN2wOrmVKfZC26WBhedctI7
	fMlR5Jzw+spZtUHN4fUf2PY8K1uVJ+Wi67k3gqN4VvTm24/Xb9znvkj085e3CvsyzQT3RFT+
	ENQLDbk3ec3phlcvXxWeuVd8ennWrIIN5QENsje75goEMV+a/32mp9UjT/byGVPZv2z7KXCX
	P/dfg/EbgZ+/PrvuLPeLzsnKEfy7ZN4qZ85egV3CbjzFxcnR1it6J96t3OBnN/WDomDihmWm
	bHp3bz/Pc2XwbdFmn15SmDdr03Quw6WntukUXP3TdM4w1tvO+Uz09Dc6R47O47o054p3r/gu
	JZbijERDLeai4kQAnnanjBwDAAA=
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_5f5f3e50c6e044c1b9dcc9bed5458aa2deboschcom_"

--_000_5f5f3e50c6e044c1b9dcc9bed5458aa2deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_5f5f3e50c6e044c1b9dcc9bed5458aa2deboschcom_
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
</body>
</html>

--_000_5f5f3e50c6e044c1b9dcc9bed5458aa2deboschcom_--
