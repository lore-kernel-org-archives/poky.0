Received: from mail2.gauselmann.com (mail2.gauselmann.com [193.102.155.89])
 by mx.groups.io with SMTP id smtpd.web11.6864.1576834158833556208
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Dec 2019 01:29:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gauselmann.de header.s=20190718 header.b=IpgZ1rsC;
 spf=pass (domain: gauselmann.de, ip: 193.102.155.89, mailfrom: prvs=32574bf600=cherzig@gauselmann.de)
Received: from pps.filterd (mail2.gauselmann.com [127.0.0.1])
	by mail2.gauselmann.com (8.16.0.27/8.16.0.27) with SMTP id xBK9NAgs022384;
	Fri, 20 Dec 2019 10:29:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gauselmann.de; h=in-reply-to :
 references : to : cc : mime-version : subject : message-id : from : date :
 content-type; s=20190718; bh=dsN3bRVncAy6DRlXl6IRz8YF92j1/AkJTgheW2ByqrA=;
 b=IpgZ1rsCxgofdubWMIxCUzJjMLo4GGmWUOd1WSTCBy+K4/lWdOhdWGH2PkfvCZTX4PNB
 RHJd6K7oWLCthtrZn/7VRwdNGEu1fYzNWrTQJvhKVI5IExHfiAdcXBZREsZ4bRXmRJdV
 7EsReLwGOfZxo+Gbie7FBkSGW30b3bz4CtupRIk82T7z1pUZ5CoHaua0eZ01g2qpYEmb
 jd70/PAn7+mn9a7Z+3x9F7Lkl7mOM/jLuiwyY6DcnnOfeIohv10Tlxtw4q/FRVh4YUDn
 Yo3f1tf5tzHEcWTENOH1eAai6k5fwQTzWBmq5AKlTDZ5uWraWsSrj4KCuCKOYtanSviz Cg== 
Received: from bswinp16.gg.gauselmann.com ([10.99.84.148])
	by mail2.gauselmann.com with ESMTP id 2wvq90brfg-1;
	Fri, 20 Dec 2019 10:29:15 +0100
Received: from wm01.gauselmann.com ([10.99.82.28])
          by BSWINP16.gg.gauselmann.com
          with ESMTP id 2019122010291550-47026 ;
          Fri, 20 Dec 2019 10:29:15 +0100 
In-Reply-To: <be0c8a76ab8ef3a42a3d83e44f0fb73bb256a143.camel@linuxfoundation.org>
References: <OF0F51A1C8.E86D40CA-ONC12584D5.004CC303-C12584D5.004CEB63@gauselmann.com> <be0c8a76ab8ef3a42a3d83e44f0fb73bb256a143.camel@linuxfoundation.org>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
MIME-Version: 1.0
Subject: Re: [poky] [PATCH] bitbake: fetch2/clearcase: Fix tar command
X-KeepSent: EAEACFD3:E9A6C7FA-C12584D6:00328273;
 type=4; flags=0; name=$KeepSent
Message-ID: <OFEAEACFD3.E9A6C7FA-ONC12584D6.00328273-C12584D6.00341DF6@gauselmann.com>
From: "Christian Herzig" <cherzig@gauselmann.de>
Date: Fri, 20 Dec 2019 10:29:15 +0100
X-MIMETrack: Serialize by Router on LNS3/BEIT GmbH at 20.12.2019 10:29:15,
	Serialize complete at 20.12.2019 10:29:15,
	Itemize by SMTP Server on LNS13/BEIT GmbH at 20.12.2019 10:29:15,
	Serialize by Router on LNS13/BEIT GmbH at 20.12.2019 10:29:15
X-TNEFEvaluated: 1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-19_08:,,
 signatures=0
Content-Type: multipart/alternative; boundary="=_alternative 00341DF4C12584D6_="

--=_alternative 00341DF4C12584D6_=
Content-Type: text/plain; charset="US-ASCII"

Hi Richard, hi poky-list

first tests are showing that the chdir is not required (yeah :-)). 
Before I I call it a day, I'll start a complete build from scratch, When 
the resulting image comes to dance, I'll provide a patch-candidate next 
monday before christmas.

Have a nice weekend, folks!
Christian

--=_alternative 00341DF4C12584D6_=
Content-Type: text/html; charset="US-ASCII"

<span style=" font-size:10pt;font-family:sans-serif">Hi Richard, hi poky-list</span>
<br>
<br><span style=" font-size:10pt;font-family:sans-serif">first tests are
showing that the chdir is not required (yeah :-)). </span>
<br><span style=" font-size:10pt;font-family:sans-serif">Before I I call
it a day, I'll start a complete build from scratch, When the resulting
image comes to dance, I'll provide a patch-candidate next monday before
christmas.</span>
<br>
<br><span style=" font-size:10pt;font-family:sans-serif">Have a nice weekend,
folks!</span>
<br><span style=" font-size:10pt;font-family:sans-serif">Christian</span>

--=_alternative 00341DF4C12584D6_=--
