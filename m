Received: from esa5.bmw.c3s2.iphmx.com (esa5.bmw.c3s2.iphmx.com [68.232.139.67])
 by mx.groups.io with SMTP id smtpd.web11.6580.1586847905708389531
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:05:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=ju+4Prjd;
 spf=pass (domain: bmw.de, ip: 68.232.139.67, mailfrom: prvs=366129375=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1586847907; x=1618383907;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=DTeFR1PsM495BMgP3NC2+8LPBJTyE4oCLgMpH7mv6XY=;
  b=ju+4PrjdQAB5cyUIXwBAOFTXJ2BYQCB3RdpFzGCYy58n78joJf6aTrws
   RXMwan1+v+P/yKKmf9SeK/faUW+WAZR6rSOJo1QPTIy9EJtR6O3Xlg3A9
   eaUfXvz83vRi4DMoY2aCMScSIMBOXlulkCHwMz93Co62iEvyvmuWDyR2M
   E=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa5.bmw.c3s2.iphmx.com with ESMTP/TLS; 14 Apr 2020 09:05:00 +0200
Received: from esabb5.muc ([160.50.100.47])  by esagw6.muc with ESMTP/TLS;
 14 Apr 2020 09:04:44 +0200
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb5.muc with ESMTP/TLS; 14 Apr 2020 09:04:44 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Tue, 14 Apr 2020 09:04:44 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 14 Apr 2020 09:04:43 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <ashish.emailaddress@gmail.com>
CC: <poky@lists.yoctoproject.org>
Subject: Re: [poky] Command to get info about packagegroup used in image ?
Thread-Topic: [poky] Command to get info about packagegroup used in image ?
Thread-Index: AQHWDx07X5HXsVp0/06C8QeaCk3IHKh4Fi8A
Date: Tue, 14 Apr 2020 07:04:43 +0000
Message-ID: <20200414070442.GD104502@korppu>
References: <iWBy.1586512103788840584.bqxi@lists.yoctoproject.org>
In-Reply-To: <iWBy.1586512103788840584.bqxi@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E032E6AF7B57A24387C2294377332A0B@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 10, 2020 at 02:48:23AM -0700, Ashishx88 wrote:
> Is there any command or way to track the packagegroup being used in any i=
mage ?
>=20
> Scenario:
> Say we have an IMAGE which makes use of =A0packagegroup-core-"X" & this i=
nternally uses=A0=A0packagegroup-core-"Y" which adds package-1,package2 etc=
 to image.
> Is there any command or mechanism by which we can know this info without =
manually going through each=A0=A0packagegroup-core-FILE
>=20
> Idea is to know which package the=A0=A0packagegroup-core-FILE will add to=
 image .

I use buildhistory for this. Add to local.conf:

INHERIT +=3D "buildhistory"
BUILDHISTORY_COMMIT =3D "1"

build the image and check the output in buildhistory/images/*
You can also see the RDEPENDS of every packagegroup in buildhistory/package=
s/*.

Hope this helps,

-Mikko=
