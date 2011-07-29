Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3D034C803E4
	for <poky@yoctoproject.org>; Thu, 28 Jul 2011 22:20:39 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jul 2011 20:20:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,286,1309762800"; d="scan'208";a="33615126"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jul 2011 20:20:38 -0700
Received: from pgsmsx103.gar.corp.intel.com (10.221.44.82) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 29 Jul 2011 11:20:24 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.1.289.1; Fri, 29 Jul 2011 11:20:23 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 29 Jul 2011 11:20:22 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 29 Jul 2011 11:20:20 +0800
Thread-Topic: Need some advice of how to get the ld.so names in multilib
	situation 
Thread-Index: AcxNnnIaIdCREjweSiOMlUwydxx01Q==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F2C40DBB269@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: APw3 BiNP B0W7 B1eS B5YY CTSe Djae EUUx FMDa FOno FgwU
	GxgI H+wY ICRh IqPt
	JuIB; 1; cABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcA;
	Sosha1_v1; 7; {1324D83B-DA93-45CE-B1DB-58674628D839};
	bABpAGEAbgBoAGEAbwAuAGwAdQBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Fri,
	29 Jul 2011 03:20:20 GMT;
	TgBlAGUAZAAgAHMAbwBtAGUAIABhAGQAdgBpAGMAZQAgAG8AZgAgAGgAbwB3ACAAdABvACAAZwBlAHQAIAB0AGgAZQAgAGwAZAAuAHMAbwAgAG4AYQBtAGUAcwAgAGkAbgAgAG0AdQBsAHQAaQBsAGkAYgAgAHMAaQB0AHUAYQB0AGkAbwBuAA==
x-cr-puzzleid: {1324D83B-DA93-45CE-B1DB-58674628D839}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Need some advice of how to get the ld.so names in multilib situation
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
X-List-Received-Date: Fri, 29 Jul 2011 03:20:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Bug #1236 http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1236

In order to get ldd work under the multilib situation, ldd and ldconfig.h n=
eed
to know all the full path names for all the dynamic loaders(ld.so) in the
current multilib configuration.=20

The dynamic loader's full path names would be something like:
  ${base_libdir}/<ld.so name>

We can get the ${base_libdir} for each variant in the multilib configuratio=
n by
setting the correct TUNE name. The problem resides in the <ld.so name>. For
i586 and x86_32, the ld.so name would be "ld-linux.so.2"; for x86_64 it wou=
ld
be "ld-linux-x86-64.so.2"; but for other ABI, I see names like "ld-linux.so=
.3",
"ld.so.1", "ld64.so.1", etc.

So the question is how we can get the correct ld.so names in the current
multilib configuration? Hard code them in the TUNE configurations?

Best Regards,
-Lianhao

