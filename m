Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
 by mx.groups.io with SMTP id smtpd.web09.9731.1579182280019581073
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 05:44:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ftml.net header.s=fm2 header.b=SM6f+1zk;
 spf=pass (domain: ftml.net, ip: 66.111.4.27, mailfrom: fdk17@ftml.net)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 52A74220C7;
	Thu, 16 Jan 2020 08:44:39 -0500 (EST)
Received: from imap7 ([10.202.2.57])
  by compute6.internal (MEProxy); Thu, 16 Jan 2020 08:44:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ftml.net; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm2; bh=yksRrNQZIf+ouU+zApj6EOF7bYlJ8Pv
	TxczzN1XIYYg=; b=SM6f+1zk3IuHSxjmWNi+wOKs95yyYyDRXSdCjei7f8V+L4H
	IGRrzTZ+zvtQj2702XGSW24DGg+0r/VBQ1tqcUsEMoGfD8G9wiBLFkClPrZYkMY1
	E6dSKLNZSnid/2hA0WKAYTdooeeXQG7fWwzdWTt4gE0BXPIB+3JQABUN501cwksY
	4AoSXm7xKtd4ud/HDk2Y7lQh96OcP5Tnmlds2Wkaf6E1iKDWpHr9oH+L4rfhde+M
	duYIImaDs+IVBK17x+bBnUbTTCxMnt2BYndrTKMtGlaG3zT6+d6TOMzWZDSfBA78
	WqQCWQM3dmh0H4wORvic5iCOA4GIYZvrlfcnEpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=yksRrN
	QZIf+ouU+zApj6EOF7bYlJ8PvTxczzN1XIYYg=; b=D7PeBnj5S6c/QYlcwlRrG/
	DQsp3RRP/i9yBZ8gcPf6g99uuFlyImAoewxZP+RTYMUpNJ37mTRXlgMwu3FJ25gv
	Pc0vHoqZlBIrKbG+45VmTGZnMWSttpDEPn83ka/5oksS5DJgFa4Wgc4zFFv5L0YJ
	ZmtGI7EaHhumxTe1Ax6J0LsGrfkC4hR0r7a97rr4kXHme7iCiHq0pCre8qidcYnI
	XpwzjjfCxCwAx/IFXDlTPRSKNY8qPs6yLrx2f7B7GNO4eCEfDIEUofxmPEBmNaG+
	kwYfAr5t5xvRKzDCtjrKpucSOO9Z1Rh7v3f6b/7hRUx/aWH5xA2ipPKaOBjkOZqQ
	==
X-ME-Sender: <xms:x2ggXm1LYCJ1SDL47DdPPu6TWu8GYVhGC5dWxx1QZdu3wHcGrkjubA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrtdehgdehgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesrgdtre
    erreerjeenucfhrhhomhepfdfhrhgvugcuuegrkhhsihhkfdcuoehfughkudejsehfthhm
    lhdrnhgvtheqnecuffhomhgrihhnpehgihhthhhusgdrtghomhdphihotghtohhprhhojh
    gvtghtrdhorhhgnecurfgrrhgrmhepmhgrihhlfhhrohhmpehfughkudejsehfthhmlhdr
    nhgvthenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:x2ggXtXi5oDsE81QWorpuyNBsqyRoKlV8p6bLLGbfazJR4MbiiNRjA>
    <xmx:x2ggXiCXa2zKghNBj9Nj_SsBbpBMAziE2skn7MyzY-i3W1AQ1tVsXg>
    <xmx:x2ggXmJQ-KrbgZUiWlblDJVsmTxtae1t4OlpZG3V3t8uqfCipha7Lw>
    <xmx:x2ggXoFIZ5FwDYilQdoNeDIK3kOOyuPozyyKvesbHkx5egXWiaPt2g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 0C95F180418; Thu, 16 Jan 2020 08:44:39 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-754-g09d1619-fmstable-20200113v1
Mime-Version: 1.0
Message-Id: <6ea3fc8a-48dc-4a78-a8d6-76d6be3d12d5@www.fastmail.com>
In-Reply-To: 
 <Groupsio.2.cg2X.1579167426560504666.LrCu@lists.yoctoproject.org>
References: <Groupsio.2.cg2X.1579167426560504666.LrCu@lists.yoctoproject.org>
Date: Thu, 16 Jan 2020 08:44:02 -0500
From: fdk17@ftml.net
To: Ashish <ashish.emailaddress@gmail.com>, poky@lists.yoctoproject.org
Subject: Re: [poky] How to handle RDEPENDS for " libgcc_s.so.1, but no providers "
Content-Type: multipart/alternative;
 boundary=f3b9e98783e04d43a2757f4f44be0897

--f3b9e98783e04d43a2757f4f44be0897
Content-Type: text/plain

On Thu, Jan 16, 2020, at 4:37 AM, Ashish wrote:
> [Edited Message Follows]

> Hi All , 
> 
> 1) I am trying to compile an application "https://github.com/tom-2015/rpi-AR1100"
>  But i get error like mentioned below for few library.so :
> *ERROR: AR1100-1.0-r0 do_package_qa: QA Issue: /usr/bin/<OUR-CUSTOM-BINARY> contained in package AR1100 requires libgcc_s.so.1, *
> * but no providers found in RDEPENDS_AR1100? [file-rdeps]*
> 
> 2) I checked the library and seems to be present in the ROOTFS at /lib/libgcc_s.so.1. 
> 3) I tried , passing location of lib folder to recipe via CFLAGS_prepend = "-I ${libdir}" . 
>  But still the error is observed. 
> 
> 4) I even tried adding "libgcc " to RDEPENDS , but the error is still there . 
> 
> Can any please provide an pointer or let me know if i am missing any part here . 
> 
> Thanks 
> Ashish 
> 
> 

I don't see my original answer so I'm trying again.

Try this instead:
RDEPENDS_${PN} = "libgcc1"

It appears that it is part of the libgcc1 package in the file tmp/deploy/rpm/core2_64/libgcc1-9.2.0-r0.core2_64.rpm


--f3b9e98783e04d43a2757f4f44be0897
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.MsoNor=
mal,p.MsoNoSpacing{margin:0}
p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div>On Thu, Jan =
16, 2020, at 4:37 AM, Ashish wrote:<br></div><blockquote id=3D"qt" type=3D"=
cite"><p>[Edited Message Follows]<br></p><div>Hi All ,&nbsp;<br></div><div>=
<br></div><div>1) I am trying to compile an application "<a href=3D"https:/=
/github.com/tom-2015/rpi-AR1100" rel=3D"nofollow noopener">https://github.c=
om/tom-2015/rpi-AR1100"</a><br></div><div>&nbsp; &nbsp; &nbsp; But i get er=
ror like mentioned below for few library.so :<br></div><div>&nbsp; &nbsp; &=
nbsp;&nbsp;<b>ERROR: AR1100-1.0-r0 do_package_qa: QA Issue: /usr/bin/&lt;OU=
R-CUSTOM-BINARY&gt;&nbsp; contained in package AR1100 requires libgcc_s.so.=
1, </b><br></div><div><b>&nbsp; &nbsp; &nbsp; but no providers found in RDE=
PENDS_AR1100? [file-rdeps]</b><br></div><div><br></div><div>2) I checked th=
e library and seems to be present in the ROOTFS at&nbsp;<span style=3D"colo=
r:rgb(0, 0, 0)" class=3D"colour"><span style=3D"font-family:&quot;Courier N=
ew&quot;, Courier, monospace, arial, sans-serif" class=3D"font">/lib/libgcc=
_s.so.1. <br></span></span>&nbsp;</div><div>3) I tried , passing location o=
f lib folder to recipe via CFLAGS_prepend =3D "-I ${libdir}" . <br></div><d=
iv>&nbsp; &nbsp; But still the error is observed.&nbsp;<br></div><div>&nbsp=
;<br></div><div>4) I even tried&nbsp; adding "<span style=3D"color:rgb(0, 0=
, 0)" class=3D"colour"><span style=3D"font-family:&quot;Courier New&quot;, =
Courier, monospace, arial, sans-serif" class=3D"font">libgcc</span></span>&=
nbsp;" to RDEPENDS&nbsp; , but the error is still there .&nbsp;<br></div><d=
iv><br></div><div>Can any please provide an pointer or let me know if i am =
missing any part here .&nbsp;<br></div><div><br></div><div>Thanks&nbsp;<br>=
</div><div>Ashish <br></div><div><br></div><div><br></div></blockquote><div=
><br></div><div><div>I don't see my original answer so I'm trying again.<br=
></div><div><div><br></div></div><div>Try this instead:<br></div><div>RDEPE=
NDS_${PN} =3D "libgcc1"<br></div><div><br></div><div>It appears that it is =
part of the libgcc1 package in the file tmp/deploy/rpm/core2_64/libgcc1-9.2=
.0-r0.core2_64.rpm<br></div><div><br></div></div><div><br></div></body></ht=
ml>

--f3b9e98783e04d43a2757f4f44be0897--
