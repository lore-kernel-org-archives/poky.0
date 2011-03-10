Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6F0A4C80050
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 01:24:38 -0600 (CST)
Received: by wwd20 with SMTP id 20so1460452wwd.11
	for <poky@yoctoproject.org>; Wed, 09 Mar 2011 23:24:37 -0800 (PST)
Received: by 10.227.202.73 with SMTP id fd9mr2953129wbb.72.1299741876754;
	Wed, 09 Mar 2011 23:24:36 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id w25sm2161361wbd.17.2011.03.09.23.24.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 09 Mar 2011 23:24:35 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A335C965C@shsmsx501.ccr.corp.intel.com>
Date: Thu, 10 Mar 2011 08:24:34 +0100
Message-Id: <1CB73E45-68B9-4AA7-A16E-536B66DBCB59@dominion.thruhere.net>
References: <cover.1299254646.git.dongxiao.xu@intel.com>
	<11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>
	<20110308140320.GG23315@kyu3-hedt>
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C965C@shsmsx501.ccr.corp.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] connman: add xuser to the dbus permission list
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
X-List-Received-Date: Thu, 10 Mar 2011 07:24:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 10 mrt 2011, om 07:40 heeft Xu, Dongxiao het volgende geschreven:

> Hi Ke,
>=20
> Yu, Ke wrote:
>> Hi Dongxiao,
>>=20
>> Thanks for the fix. I just feel it may be better to do it in rootless
>> x routine, instead of connman. because the "xuser" is introduced by
>> rootless x routine, and the user name is configurable by
>> /etc/X11/Xusername (details in
>> meta/recipes-graphics/x11-common/xserver-nodm-init.bb: pkg_postinst).
>> if the user name changed by user configuration, the connman will
>> break again.   =20
>=20
> Thanks for pointing it out, your concern is reasonable. Hardcode xuser =
in
> connman's config file will have problems if user did any change to the =
name.
>=20
>>=20
>> So I wonder if connman has the standard interface to grant
>> permission, so that rootless x routine can call it to grant xuser
>> permission. e.g. =20
>> - A group-based policy, i.e. for any user belongs to the connman
>> group, it will has the required dbus permission.=20
>> - or a standalone command like "connman-perm xuser" which can add
>> xuser into connman-dbus.conf=20
>=20
> I found there is another item in the connman.conf, named "at_console",
> which can authenticate permissions to user.
> That module needs libpam as its basic. It seems that currently sato =
image
> didn't install pam into target system.

Note that at_console is utterly broken, I discussed it with Marcel in =
the past and he agrees something different needs to get used, but at =
that time (2008) there wasn't a good candidate.=20

regards,

Koen=

