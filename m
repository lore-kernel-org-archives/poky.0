Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 304D44C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 03:06:53 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2011 01:06:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,343,1291622400"; d="scan'208";a="878813326"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2011 01:06:47 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 19 Jan 2011 17:06:46 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 19 Jan 2011 17:06:44 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Koen Kooi' <koen@dominion.thruhere.net>
Date: Wed, 19 Jan 2011 17:06:43 +0800
Thread-Topic: [poky] [RFC: enhance toolchain bootstrap process: v3: 3/7]
	gcc-cross-initial, gcc-crosssdk-initial: change CROSS_TARGET_SYS_DIR and
	insall into new locations
Thread-Index: Acu3ILwO3NvWquluRLKwzZdpmdnmdwAlzb8g
Message-ID: <1865303E0DED764181A9D882DEF65FB685BC552DDF@shsmsx502.ccr.corp.intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
	<4e63a8f3d0e84e21436318a5b0e020154cc490b4.1295359004.git.dexuan.cui@intel.com>
	<A6B4656D-BF89-4CCC-8D5E-F44CDC3DA6BC@dominion.thruhere.net>
In-Reply-To: <A6B4656D-BF89-4CCC-8D5E-F44CDC3DA6BC@dominion.thruhere.net>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 3/7] gcc-cross-initial, gcc-crosssdk-initial: change CROSS_TARGET_SYS_DIR and insall into new locations
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
X-List-Received-Date: Wed, 19 Jan 2011 09:06:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Koen Kooi wrote:
> Seeing all those PR bumps, would something like
> http://cgit.openembedded.org/cgit.cgi/meta-openembedded/commit/?id=3D6f16=
47aa
> (ignore the sysroot patch) be usefull for yocto? =20
It can be useful. I'll try to use that for my next version.
Thanks for the suggestion.

Thanks,
-- Dexuan=

