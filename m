Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27CE74C800A3
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 00:43:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Feb 2011 22:43:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,484,1291622400"; d="scan'208";a="390004282"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 16 Feb 2011 22:43:07 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Feb 2011 14:42:40 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Feb 2011 14:42:40 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 17 Feb 2011 14:42:38 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Mark Hatle' <mark.hatle@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 17 Feb 2011 14:42:38 +0800
Thread-Topic: [poky] [PATCH 0/1] fix the build of mklibs-native on Ubuntu 9.04
Thread-Index: AcvOJ8OEav6wHydoQySjmPLX80vUrAARNc3g
Message-ID: <1865303E0DED764181A9D882DEF65FB68637101D45@shsmsx502.ccr.corp.intel.com>
References: <cover.1297848777.git.dexuan.cui@intel.com>
	<4D5C4278.3090409@mentor.com> <4D5C4D94.4070607@windriver.com>
In-Reply-To: <4D5C4D94.4070607@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] fix the build of mklibs-native on Ubuntu 9.04
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
X-List-Received-Date: Thu, 17 Feb 2011 06:43:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mark Hatle wrote:
> On 2/16/11 3:32 PM, Tom Rini wrote:
>> On 02/16/2011 02:35 AM, Dexuan Cui wrote:
>>> From: Dexuan Cui<dexuan.cui@intel.com>
>>>=20
>>> libc6-dev in Ubuntu 9.04 is so old that the elf.h doesn't define
>>> STT_GNU_IFUNC, so we have to define it ourselves.
>>>=20
>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>>    Branch: dcui/master
>>>    Browse:
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddcui/master=20
>>=20
>> Is this also an issue on 8.04?  9.04 isn't supported anymore (9.10,
>> 10.04, 10.10 are the top 3) but 8.04 is still under LTS in various
>> configurations.=20
>>=20
>=20
> 9.04 may not be supported by Ubuntu anymore, but I've got lots of
> commercial customers still using 9.04.. :( =20
Me too...
I'll try to update to 11.04 in three months when it's released. :-)

> (I suspect it is also a problem w/ 8.04)=20
I also suspect that though I can't find a 8.04 host to try it.

Thanks,
-- Dexuan=

