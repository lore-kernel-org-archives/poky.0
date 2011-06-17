Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E65B14C8009D
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 20:25:41 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Jun 2011 18:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,378,1304319600"; d="scan'208";a="14550094"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 16 Jun 2011 18:25:40 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 17 Jun 2011 09:24:09 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 17 Jun 2011 09:24:09 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Jun 2011 09:24:07 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Jeff Mitchell' <jmitchell@ll.mit.edu>, "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 17 Jun 2011 09:24:06 +0800
Thread-Topic: [poky] Git/perl build problems
Thread-Index: AcwqovTKqTnyTqOERbOQbE93tAaurQB55AGw
Message-ID: <1865303E0DED764181A9D882DEF65FB6997011C18B@shsmsx502.ccr.corp.intel.com>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>
	<4DF67C8D.4010907@intel.com> <1307999666.15712.286.camel@rex>
	<4DF67EAE.809@intel.com> <4DF7760F.9050106@ll.mit.edu>
In-Reply-To: <4DF7760F.9050106@ll.mit.edu>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Git/perl build problems
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
X-List-Received-Date: Fri, 17 Jun 2011 01:25:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jeff Mitchell wrote:
> While cleaning and recompiling autoconf-native and automake-native
> helped with the former issue, I've got two more failing packages:
> librsvg and avahi.
>=20
> The former is using
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/glib-mkenums
>=20
> with the result
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad
> interpreter: No such file or directory
>=20
> The latter is using (with the same result)
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/intltool-upda=
te
>=20
> The former at least looks like a clean/rebuild of glib-2.0 should work
> -- but it didn't. What's the proper package that needs to be
> cleaned/rebuilt?

Hi Jeff,
I guess you should rebuild glib-2.0-native rather than glib-2.0?
Or, can you bump bump the PR in the glib-2.0 recipe and try again? I suppos=
e this should work for you.

Looks we should also rebuild intltool-native.

I'll do a complete research and try to figure out all the recipes that need=
s to be rebuilt and bump the PRs.

Thanks,
-- Dexuan=

