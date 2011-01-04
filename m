Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ADF734C80B70;
	Tue,  4 Jan 2011 00:08:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jan 2011 22:08:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,270,1291622400"; d="scan'208";a="643114906"
Received: from unknown (HELO pgsmsx603.gar.corp.intel.com) ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jan 2011 22:08:25 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 4 Jan 2011 14:08:20 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 4 Jan 2011 14:08:19 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Tue, 4 Jan 2011
	14:08:18 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Saul Wold <sgw@linux.intel.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 4 Jan 2011 14:08:17 +0800
Thread-Topic: [yocto] M3 Package Update List
Thread-Index: AcukxjpbZKOjZRpbT16kxOfwuYXnnwHDsd4w
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31A96EC8@shsmsx501.ccr.corp.intel.com>
References: <4D16E018.90502@linux.intel.com>
In-Reply-To: <4D16E018.90502@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [yocto] M3 Package Update List
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
X-List-Received-Date: Tue, 04 Jan 2011 06:08:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,

Here is an update for recipes in the list under my name.

I upgraded most of the recipes except:

1) upstream check error, actually they are up to date.
Speex, net-tools, libid3tag, libgsmd

2) git development tree:
Mtd-utils

3) dependency on other recipes:
Clutter-gst (depend on latest version of clutter).

Thanks,
Dongxiao

Saul Wold wrote:
> Folks,
>=20
> Please find attached the list of M3 Recipe Updates, our goal for 1.0
> M3 release is to complete the update process we started in 0.9 and
> 1.0 M2. =20
> There are about 150 recipes in this list, some people may have more
> and if there is a need to request help, please let me know.  If you
> plan on helping, please let the current owner know that you will be
> updating a recipe.  =20
>=20
> Unless I hear otherwise, I will work to update the "None" maintained
> list, but I believe some of these are owned by people and the distro
> tracking information needs to be updated. =20
>=20
> Thanks again to the team for the hard work during 0.9 and M2, we will
> always have updates to do, but they will get easier with our gained
> experience and expertise. =20
>=20
> Happy Holidays and Happy New Year to all.


