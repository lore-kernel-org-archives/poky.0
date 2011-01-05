Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 526104C80050
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 20:18:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Jan 2011 18:18:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,275,1291622400"; d="scan'208";a="370175905"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 04 Jan 2011 18:18:35 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 5 Jan 2011 10:18:26 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 5 Jan 2011
	10:18:25 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Darren Hart' <dvhart@linux.intel.com>, "Yu, Ke" <ke.yu@intel.com>
Date: Wed, 5 Jan 2011 10:18:24 +0800
Thread-Topic: [poky] [PATCH 1/1] base.bbclass: add lock file for do_unpack task
Thread-Index: AcusJotFWymf8jR5QhewGYS1HWmDZAAV/5PQ
Message-ID: <1865303E0DED764181A9D882DEF65FB685A7B94CEE@shsmsx502.ccr.corp.intel.com>
References: <cover.1294140740.git.ke.yu@intel.com>
	<6b19cf34c82bc4f083a420da7430ff60cbfcb815.1294140740.git.ke.yu@intel.com>
	<4D2340B4.4030601@linux.intel.com>
In-Reply-To: <4D2340B4.4030601@linux.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] base.bbclass: add lock file for do_unpack task
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
X-List-Received-Date: Wed, 05 Jan 2011 02:18:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Darren Hart wrote:
> On 01/04/2011 03:36 AM, Yu Ke wrote:
>> This patch intend to fix the random unpack failure of
>> linux-libc-headers-yocto=20
>> and linux-yocto.
>>=20
>> The root cause of the unpack failure is that: these two recpies has
>> the same URL, thus=20
>> has the same dest file during the fetch and unpack phase:
>> do_fetch  : create tar ball
>> ${DL_DIR}/git_git.pokylinux.org.linux-yocto-2.6.37.tar.gz do_unpack
>> : extract tar ball
>> ${DL_DIR}/git_git.pokylinux.org.linux-yocto-2.6.37.tar.gz =20
>> fetch phase is protected by lockfile, so it works fine. but unpack
>> phase is not lock protected, thus there is race condition like: when
>> linux-yocto do_unpack is extracting the tar ball,
>> linux-libc-headers-yocto do_fetch starts to create tar ball thus
>> overwrite linux-yocto's =20
>> tar ball and cause linux-yocto do_unpack failure
>>=20
>> To fix this issue, do_unpack also need to be protected by lock
>=20
> Nice work! My out-for-review trace-cmd and kernelshark recipes will
> suffer the same issue.

Thanks to Ke's fix!
Previously I met with the linux-libc-headers unpack failure everytime... No=
w the failure has gone with the fix.=20

Thanks,
-- Dexuan=

