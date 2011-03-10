Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5592A4C804BD
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 00:41:43 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Mar 2011 22:41:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,294,1297065600"; d="scan'208";a="400456029"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 09 Mar 2011 22:41:42 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 10 Mar 2011 14:40:40 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 10 Mar 2011 14:40:39 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 10 Mar 2011 14:40:38 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Yu, Ke" <ke.yu@intel.com>
Date: Thu, 10 Mar 2011 14:40:37 +0800
Thread-Topic: [poky] [PATCH 1/1] connman: add xuser to the dbus permission list
Thread-Index: AcvdmZi3JiHB96b8QIG6r//kyfD72AAiZ9Sw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A335C965C@shsmsx501.ccr.corp.intel.com>
References: <cover.1299254646.git.dongxiao.xu@intel.com>
	<11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>
	<20110308140320.GG23315@kyu3-hedt>
In-Reply-To: <20110308140320.GG23315@kyu3-hedt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 10 Mar 2011 06:41:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ke,

Yu, Ke wrote:
> Hi Dongxiao,
>=20
> Thanks for the fix. I just feel it may be better to do it in rootless
> x routine, instead of connman. because the "xuser" is introduced by
> rootless x routine, and the user name is configurable by
> /etc/X11/Xusername (details in
> meta/recipes-graphics/x11-common/xserver-nodm-init.bb: pkg_postinst).
> if the user name changed by user configuration, the connman will
> break again.   =20

Thanks for pointing it out, your concern is reasonable. Hardcode xuser in
connman's config file will have problems if user did any change to the name=
.
 =20
>=20
> So I wonder if connman has the standard interface to grant
> permission, so that rootless x routine can call it to grant xuser
> permission. e.g. =20
> - A group-based policy, i.e. for any user belongs to the connman
> group, it will has the required dbus permission.=20
> - or a standalone command like "connman-perm xuser" which can add
> xuser into connman-dbus.conf=20

I found there is another item in the connman.conf, named "at_console",
which can authenticate permissions to user.
That module needs libpam as its basic. It seems that currently sato image
didn't install pam into target system.

The original commit was checked in master, at least it will not block QA's =
testings.

I will think about using more convenient way to fix the problem.

Thanks,
Dongxiao

>=20
> Also another alternative is: in connman pkg_postinst, get x user name
> from /etc/X11/Xusername, then grant the user permission. in this
> case, at least you won't need to hardcode the xuser name. =20
>=20
> Regards
> Ke
>=20
> On Mar 07, 16:00, Dongxiao Xu wrote:
>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>=20
>> Some platform (like atom-pc) enables rootless X, thus the connman
>> frontend run on it need the permission to connect with connman by
>> dbus.
>> This commit grants permission to xuser.
>>=20
>> This fixes [BUGID #779]
>>=20
>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>> ---
>>  .../connman-0.65/add_xuser_dbus_permission.patch   |   21
>>  ++++++++++++++++++++
>>  meta/recipes-connectivity/connman/connman_0.65.bb  |    3 +- 2
>> files changed, 23 insertions(+), 1 deletions(-)  create mode 100644
>> meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permissi
>> on.patch
>>=20
>> diff --git
>> a/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permis
>> sion.patch
>> b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permis
>> sion.patch
>> new file mode 100644
>> index 0000000..787d49b
>> --- /dev/null
>> +++
>> b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_pe
>> +++ rmission.patch @@ -0,0 +1,21 @@ +Some platform (like atom-pc)
>> enables rootless X, thus we need to add +the xuser in the list. +
>> +Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com> +
>> +diff -ruN connman-0.65-orig/src/connman-dbus.conf
>> connman-0.65/src/connman-dbus.conf +---
>> connman-0.65-orig/src/connman-dbus.conf	2011-03-04
>> 09:34:49.000000000 +0800 ++++
>> connman-0.65/src/connman-dbus.conf	2011-03-04 09:35:21.000000000
>> +0800 +@@ -7,6 +7,12 @@ +         <allow
>> send_interface=3D"net.connman.Agent"/> +         <allow
>> send_interface=3D"net.connman.Counter"/> +     </policy> ++    <policy
>> user=3D"xuser"> ++        <allow own=3D"net.connman"/> ++        <allow
>> send_destination=3D"net.connman"/> ++        <allow
>> send_interface=3D"net.connman.Agent"/> ++        <allow
>> send_interface=3D"net.connman.Counter"/> ++    </policy> +     <policy
>> at_console=3D"true"> +         <allow send_destination=3D"net.connman"/>
>> +     </policy>=20
>> diff --git a/meta/recipes-connectivity/connman/connman_0.65.bb
>> b/meta/recipes-connectivity/connman/connman_0.65.bb
>> index 0b077e1..8bb84a1 100644
>> --- a/meta/recipes-connectivity/connman/connman_0.65.bb
>> +++ b/meta/recipes-connectivity/connman/connman_0.65.bb @@ -1,5 +1,5
>>  @@ require connman.inc
>> -PR =3D "r0"
>> +PR =3D "r1"
>>=20
>>  EXTRA_OECONF +=3D "\
>>    ac_cv_path_WPASUPPLICANT=3D/usr/sbin/wpa_supplicant \ @@ -21,6 +21,7
>> @@ EXTRA_OECONF +=3D "\  SRC_URI  =3D "\
>>  =20
>>  =20
>> http://www.kernel.org/pub/linux/network/connman/connman-${PV}.tar.gz
>>    \ file://fix-shutdown-ap-disconnect.patch \ +=20
>>  file://add_xuser_dbus_permission.patch \ file://connman \ "
>>=20
>> --
>> 1.7.1
>>=20
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


