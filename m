Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8D924C811AA;
	Wed, 26 Jan 2011 02:43:36 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 00:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,379,1291622400"; d="scan'208";a="596569064"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 00:43:35 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 16:43:23 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 26 Jan 2011 16:43:13 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>, "poky-bounces@yoctoproject.org"
	<poky-bounces@yoctoproject.org>
Date: Wed, 26 Jan 2011 16:43:12 +0800
Thread-Topic: [poky] [PATCH 1/1] rm_work.bbclass: reserve 'image' folder
	when	remove WORKDIR
Thread-Index: Acu9MmYVVeYdbCWdTrmK/sosBab+/wAAI+gQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D0CB5E@shsmsx501.ccr.corp.intel.com>
References: <cover.1296023140.git.dongxiao.xu@intel.com>
	<4da3cd3c9adebd3279b376a1f7aa2a0353484ecd.1296023140.git.dongxiao.xu@intel.com>
	<E0264D9A-19E7-4EB3-AED5-EDEB6A4F30E0@dominion.thruhere.net>
In-Reply-To: <E0264D9A-19E7-4EB3-AED5-EDEB6A4F30E0@dominion.thruhere.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] rm_work.bbclass: reserve 'image' folder when	remove WORKDIR
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
X-List-Received-Date: Wed, 26 Jan 2011 08:43:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Koen Kooi wrote:
> Op 26 jan 2011, om 07:30 heeft poky-bounces@yoctoproject.org het
> volgende geschreven:=20
>=20
>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>=20
>> After the implementation of per machine sysroot, do_populate_sysroot
>> and do_package need to be re-run if we build two machines of one
>> architecture (in case that sstate prebuilt result could not be reused
>> for certain recipes). But if removing all the WORKDIR contents after
>> the first macine build, the second machine's do_populate_sysroot and
>> do_package will fail due to the missing of "image" directory.
>>=20
>> Thus reserve 'image' folder when doing rm_work.
>=20
> Wouldn't adding do_install to sstate be a better idea? OE was
> designed that it wouldn't depend on WORKDIR after building, so this
> patch is a step in the wrong direction. =20

Hi Koen,

Thanks for your suggestions, however this may not help to solve this issue.

The senario of the above issue is, build one machine firstly, doing rm_work=
, and then try to build the second machine of the same architecture. Some c=
ertain recipe's prebuilt result could not be shared between machines.

After the first machine finishes the build, most contents in ${WORKDIR} has=
 been removed by "rm_work". Prebuilt result could not be shared for certain=
 recipes. For those recipes, the second machine finds that most of the reci=
pe stamp files are already there (do_fetch, do_unpack, do_patch, ...) excep=
t do_populate_sysroot and do_package, which contains ${MACHINE} tag, thus i=
t will try to re-run do_populate_sysroot and do_package, which relies on th=
e existence of "image" directory.

So even we add the do_install in sstate, the above issue could not be solve=
d because it is triggered when certain recipe's sstate prebuilt result coul=
d *not* be shared.

Thanks,
Dongxiao

>=20
> regards,
>=20
> Koen
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


