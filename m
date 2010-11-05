Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 234AE4C810A8
	for <poky@pokylinux.org>; Thu,  4 Nov 2010 19:29:32 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Nov 2010 17:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,299,1286175600"; d="scan'208";a="344879463"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 04 Nov 2010 17:29:31 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 5 Nov 2010 08:29:30 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 5 Nov 2010 08:29:30 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 5 Nov 2010
	08:29:29 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>, Mark Hatle <mark.hatle@windriver.com>
Date: Fri, 5 Nov 2010 08:29:27 +0800
Thread-Topic: [poky] [PULL] fixes to eglibc and busybox
Thread-Index: Act8ZdhMzlLF9oQjRi6e5Qb/c1WwmAAGf7gw
Message-ID: <1865303E0DED764181A9D882DEF65FB67A65C6F4BA@shsmsx502.ccr.corp.intel.com>
References: <20101020085626.GA14696@qhe2-db><1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com><1865303E0DED764181A9D882DEF65FB677CE107452@shsmsx502.ccr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB67A65C6F4B3@shsmsx502.ccr.corp.intel.com><4CD2CD9F.70501@windriver.com>
	<4CD2F717.3090306@intel.com>	<4CD2F9B1.3040903@windriver.com>
	<4CD322FA.3030505@intel.com>
In-Reply-To: <4CD322FA.3030505@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PULL] fixes to eglibc and busybox
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Nov 2010 00:29:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>> On 11/04/2010 11:21 AM, Mark Hatle wrote:
>>=20
>> So yes, my preference is that it's either absent or empty for
>> embedded systems.=20

Hi Mark and Saul,
Thanks very much for the detailed explanation!!
So I'll make a new patch to install an empty ld.so.conf (to avoid the annoy=
ing spurious warning from ldconfig).

BTW: I'll send the new PULL mail to yocto@yoctoproject.org as this is not r=
elated to poky core.

Thanks,
-- Dexuan=

