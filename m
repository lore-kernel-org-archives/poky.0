Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 314764C800A6
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 21:47:30 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Jun 2011 19:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,379,1304319600"; d="scan'208";a="14253049"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 16 Jun 2011 19:47:27 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 17 Jun 2011 10:46:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Jun 2011 10:46:37 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 'Richard Purdie'
	<richard.purdie@linuxfoundation.org>,
	'Jeff Mitchell' <jmitchell@ll.mit.edu>, "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 17 Jun 2011 10:46:36 +0800
Thread-Topic: [poky] Git/perl build problems
Thread-Index: AcwqovTKqTnyTqOERbOQbE93tAaurQB55AGwAAF6dGA=
Message-ID: <1865303E0DED764181A9D882DEF65FB6997011C18C@shsmsx502.ccr.corp.intel.com>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>
	<4DF67C8D.4010907@intel.com> <1307999666.15712.286.camel@rex>
	<4DF67EAE.809@intel.com> <4DF7760F.9050106@ll.mit.edu>
	<1865303E0DED764181A9D882DEF65FB6997011C18B@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6997011C18B@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Fri, 17 Jun 2011 02:47:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Cui, Dexuan wrote:
> Jeff Mitchell wrote:
>> While cleaning and recompiling autoconf-native and automake-native
>> helped with the former issue, I've got two more failing packages:
>> librsvg and avahi.=20
>>=20
>> The former is using
>> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/glib-mkenums
>>=20
>> with the result
>> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad
>> interpreter: No such file or directory
>>=20
>> The latter is using (with the same result)
>> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/intltool-upd=
ate
>>=20
>> The former at least looks like a clean/rebuild of glib-2.0 should
>> work -- but it didn't. What's the proper package that needs to be
>> cleaned/rebuilt?
>=20
> Hi Jeff,
> I guess you should rebuild glib-2.0-native rather than glib-2.0?
> Or, can you bump bump the PR in the glib-2.0 recipe and try again? I
> suppose this should work for you.=20
>=20
> Looks we should also rebuild intltool-native.
>=20
> I'll do a complete research and try to figure out all the recipes
> that needs to be rebuilt and bump the PRs.=20
Hi, I worked out a patch:
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Ddcui/bump_P=
R&id=3Dbe638790e41206ed740aec69a8704fe77d1bc0b2
and will send it to the oe-core mailing list.

 Thanks,
-- Dexuan

