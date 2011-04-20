Return-Path: <Pasi.Reponen@elektrobit.com>
Received: from smtpgw1fi.elektrobit.com (smtpgw1fi.elektrobit.com
	[194.136.18.128])
	by mx1.pokylinux.org (Postfix) with ESMTP id 543504C804CA
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 01:54:00 -0500 (CDT)
Received: from fioues07.ebgroup.elektrobit.com
	(fioues07.ebgroup.elektrobit.com [172.16.33.117])
	by smtpgw1fi.elektrobit.com (8.13.8/8.13.8) with ESMTP id
	p3K6rwUp015072
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 09:53:58 +0300
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 20 Apr 2011 09:53:56 +0300
Message-ID: <EF6A1C6B49AA1E42BAAD011E6EED2800024D3FAC@fioues07.ebgroup.elektrobit.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Problem with local build (using Poky Bernard 5.0)
Thread-Index: Acv/J7fusw9z2JPTTGmus6+mwBluIQ==
From: <Pasi.Reponen@elektrobit.com>
To: <poky@yoctoproject.org>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.2.3
	(smtpgw1fi.elektrobit.com [172.16.33.21]);
	Wed, 20 Apr 2011 09:53:58 +0300 (EEST)
X-Virus-Scanned: at elektrobit.com
X-Scanned-By: MIMEDefang 2.67 on 172.16.33.21
Subject: Problem with local build (using Poky Bernard 5.0)
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
X-List-Received-Date: Wed, 20 Apr 2011 06:54:01 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CBFF27.B82ED418"

------_=_NextPart_001_01CBFF27.B82ED418
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

I'm trying to build locally with Poky Bernard 5.0 (using PREMIRRORS to
local source package directory and BB_FETCH_PREMIRRORONLY =3D "1"
configurations). The problem occurs when recipes got environment
variables in SRC_URI (for example $GNU_MIRROR and $PV). In these cases
Fetcher is unable to fetch source packages locally and raises "network
access disabled but required" -exception.=20

Any ideas, is this a bug or have I missed some configuration?

Thanks,

Pasi



----------------------------------------------------------------
Please note: This e-mail may contain confidential information
intended solely for the addressee. If you have received this
e-mail in error, please do not disclose it to anyone, notify
the sender promptly, and delete the message from your system.
Thank you.


------_=_NextPart_001_01CBFF27.B82ED418
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version 6.5.7654.12">
<TITLE>Problem with local build (using Poky Bernard 5.0)</TITLE>
</HEAD>
<BODY>
<!-- Converted from text/rtf format -->

<P><SPAN LANG=3D"fi"><FONT SIZE=3D2 FACE=3D"Arial">Hi,</FONT></SPAN>
</P>

<P><SPAN LANG=3D"fi"><FONT SIZE=3D2 FACE=3D"Arial">I'm trying to build loca=
lly with Poky Bernard 5.0 (using PREMIRRORS to local source package directo=
ry and BB_FETCH_PREMIRRORONLY =3D &quot;1&quot; configurations). The proble=
m occurs when recipes got environment variables in SRC_URI (for example $GN=
U_MIRROR and $PV). In these cases Fetcher is unable to fetch source package=
s locally and raises &#8220;network access disabled but required&#8221; &#8=
211;exception. </FONT></SPAN></P>

<P><SPAN LANG=3D"fi"><FONT SIZE=3D2 FACE=3D"Arial">Any ideas, is this a bug=
 or have I missed some configuration?</FONT></SPAN>
</P>

<P><SPAN LANG=3D"fi"><FONT SIZE=3D2 FACE=3D"Arial">Thanks,</FONT></SPAN>
</P>

<P><SPAN LANG=3D"fi"><FONT SIZE=3D2 FACE=3D"Arial">Pasi</FONT></SPAN>
</P>

<pre>
----------------------------------------------------------------
Please note: This e-mail may contain confidential information
intended solely for the addressee. If you have received this
e-mail in error, please do not disclose it to anyone, notify
the sender promptly, and delete the message from your system.
Thank you.
</pre>

</BODY>
</HTML>=

------_=_NextPart_001_01CBFF27.B82ED418--
