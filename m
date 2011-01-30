Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 412CF4C8026D
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 20:57:48 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jan 2011 18:57:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="652492718"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2011 18:57:42 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 30 Jan 2011 10:57:41 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sun, 30 Jan 2011 10:57:40 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Joshua Lock' <josh@openedhand.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Sun, 30 Jan 2011 10:57:39 +0800
Thread-Topic: [poky] [Dexuan: Jan 28: PULL 13/16] xkeyboard-config: upgrade
	from 2.0 to 2.1
Thread-Index: Acu/DMH5pH3q33/jScOHftT7sgT5jABHFq2w
Message-ID: <1865303E0DED764181A9D882DEF65FB685EBCB6C3D@shsmsx502.ccr.corp.intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
	<17a26b55ed1004cc28d4e2d39da5ca09ee868939.1296171289.git.dexuan.cui@intel.com>
	<1296233963.2704.31.camel@scimitar>
In-Reply-To: <1296233963.2704.31.camel@scimitar>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [Dexuan: Jan 28: PULL 13/16] xkeyboard-config: upgrade from 2.0 to 2.1
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
X-List-Received-Date: Sun, 30 Jan 2011 02:57:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Joshua Lock wrote:
> On Fri, 2011-01-28 at 07:40 +0800, Dexuan Cui wrote:
>> From: Dexuan Cui <dexuan.cui@intel.com>
>>=20
>> Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
>> ---
>>  ...board-config_2.0.bb =3D> xkeyboard-config_2.1.bb} |    6 ++----
>>  1 files changed, 2 insertions(+), 4 deletions(-)
>>  rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_2.0.bb =3D>
>> xkeyboard-config_2.1.bb} (76%)=20
>>=20
>> diff --git a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
>> b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb similarity
>> index 76% rename from
>> meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb =20
>> rename to meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
>> index 358bf84..637f880 100644
>> --- a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
>> +++ b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
>> @@ -7,10 +7,8 @@ LIC_FILES_CHKSUM =3D
>> "file://COPYING;md5=3D0e7f21ca7db975c63467d2e7624a12f9"=20
>>=20
>>  SRC_URI =3D
>> "http://people.freedesktop.org/~svu/xkeyboard-config-${PV}.tar.bz2"=20
>>=20
>> -SRC_URI[md5sum] =3D "bb8a98ee61cdc4bd835fdfd2b5cee3e6"
>> -SRC_URI[sha256sum] =3D
>> "175f275f5a041edda41fe0f27e59061d1d9c6615959475e4d68ad773b6a2e376"=20
>> -SECTION =3D "x11/libs"
>> -DEPENDS =3D "intltool xkbcomp-native glib-2.0"
>=20
> I assume you didn't mean to delete the DEPENDS and SECTION lines here?

Hi Joshua,
Thanks a for pointing this out!
It's my mistake -- looks I removed them accidently when rebasing... Sorry!
I've resent the new commit and ask Saul to pull it.

Thanks,
-- Dexuan

