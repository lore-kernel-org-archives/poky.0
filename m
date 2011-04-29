Return-Path: <jiajun.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A56E4C80ABA
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 01:20:28 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Apr 2011 23:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,285,1301900400"; d="scan'208";a="427600450"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 28 Apr 2011 23:20:27 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 29 Apr 2011 14:19:18 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 29 Apr 2011 14:19:17 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 29 Apr 2011 14:19:16 +0800
Thread-Topic: [poky] [PATCH 1/1] qemuimagetest: Enable toolchain automation
	tests	in qemuimagetest
Thread-Index: AcwGK7sO6AKhpz52RO+Zf8abJntabgACTG3g
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A51F2C729@shsmsx501.ccr.corp.intel.com>
References: <cover.1304004540.git.jiajun.xu@intel.com>
	<5b319e5682fdbf8fd0c431b59d8f9d946e325bfe.1304004540.git.jiajun.xu@intel.com>
	<4DBA4831.6020906@intel.com>
In-Reply-To: <4DBA4831.6020906@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] qemuimagetest: Enable toolchain automation tests	in qemuimagetest
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
X-List-Received-Date: Fri, 29 Apr 2011 06:20:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>> diff --git a/meta/classes/populate_sdk.bbclass
>> b/meta/classes/populate_sdk.bbclass
>> index 413eb52..70670ba 100644
>> --- a/meta/classes/populate_sdk.bbclass
>> +++ b/meta/classes/populate_sdk.bbclass
>> @@ -1,6 +1,9 @@
>>   inherit meta toolchain-scripts
>>   inherit populate_sdk_${IMAGE_PKGTYPE}
>> +IMAGETEST ?=3D "dummy"
>> +inherit imagetest-${IMAGETEST}
>> +
> Why does this need to be added here?
>=20
> I understand that when IMAGETEST is set to qemu in the local.conf file
> that it will be pulled in, but why to populate_sdk?
>=20

Hi Saul,
Do you mean IMAGETEST should not be inherited in populate_sdk? Do you think=
 it OK to inherit IMAGETEST in meta-toolchain.bb?

diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/m=
eta/meta-toolchain.bb
index 94c8a91..ab98bf9 100644
--- a/meta/recipes-core/meta/meta-toolchain.bb
+++ b/meta/recipes-core/meta/meta-toolchain.bb
@@ -6,6 +6,7 @@ PR =3D "r4"
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285e=
c7b81fdeb3b58 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788=
c80a0384361b4de20420"

-inherit populate_sdk
+IMAGETEST ?=3D "dummy"
+inherit populate_sdk imagetest-${IMAGETEST}


> Sau!

Best Regards,
Jiajun



