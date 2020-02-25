Received: from esa1.bmw.c3s2.iphmx.com (esa1.bmw.c3s2.iphmx.com [68.232.133.201])
 by mx.groups.io with SMTP id smtpd.web11.1031.1582620038966523826
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 00:40:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=j2mTd36r;
 spf=pass (domain: bmw.de, ip: 68.232.133.201, mailfrom: prvs=3174ef3e9=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582620039; x=1614156039;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=usalWY2fI0Sa06DlbWS/YUsHM1hyi6NuN/jUROGFHg8=;
  b=j2mTd36rObv2KksJH3xW3VC8hrqF3Q57DHpRBdoHpR2XxFVel2bhQetK
   sj+fCIdVYSI5Z+h+za1tMqjXeQIC3T28adQzZX+r9pkXwqZ/JWhr5tibo
   pzWM27zJfSQlD+rUJ2lZxprbMag7W0BIFrsIey4NvTda8EYd6gA5PGaG5
   8=;
IronPort-SDR: LIiGeB83EMtzdJOLAgr8Jxfk+Uf/DsliUGlYGO2/H70WgA6TbtvYhU2Ienx+kJ2FmB6UAYR0Ca
 sOE4TRCiMD7bQvPp6TxaQq8/AlSWRlrRIPtIIGuYj/60nGnR5XFoEnEJXumDEQWvvDBzUQNVOY
 KZA8NOLtBQLf4KUsaua/h/WCdfmkvfNh4w/iCIGa3PyYzIf4VIEm0RA8cYS4fuwim9Re6uQTsc
 Sa8trJjI53JQzY8ArSkQcfg6n/dJhAMdbnF0H1eUdZ+SQoOuyddqLuZtNsvNkzGCij6aWEEpuq
 ZAM=
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa1.bmw.c3s2.iphmx.com with ESMTP/TLS; 25 Feb 2020 09:40:37 +0100
Received: from esabb5.muc ([160.50.100.47])  by esagw5.muc with ESMTP/TLS;
 25 Feb 2020 09:40:36 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb5.muc with ESMTP/TLS; 25 Feb 2020 09:40:36 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Tue, 25 Feb 2020 09:40:36 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 25 Feb 2020 09:40:36 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <ashish.emailaddress@gmail.com>
CC: <poky@lists.yoctoproject.org>
Subject: Re: [poky] SATO terminal takes 4 min to launch
Thread-Topic: [poky] SATO terminal takes 4 min to launch
Thread-Index: AQHV67LMTOKRyRnSRUifu+iwIOUHJ6grgaGAgAAEtQA=
Date: Tue, 25 Feb 2020 08:40:36 +0000
Message-ID: <20200225084036.GL104502@korppu>
References: <vjLI.1582618087437232748.MOzF@lists.yoctoproject.org>
 <20756.1582619025982008597@lists.yoctoproject.org>
In-Reply-To: <20756.1582619025982008597@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1D7AFE0987A95444B15C792A20BCFFF1@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

Please check systemd-analyze output. It may be that ssh and crypto key
generation without HW support is taking a lot of time for example.

Cheers,

-Mikko=
