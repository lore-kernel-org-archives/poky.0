Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7861A4C80039
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 19:35:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jan 2011 17:35:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,336,1291622400"; d="scan'208";a="375902384"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 17 Jan 2011 17:35:26 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 18 Jan 2011 09:34:00 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 18 Jan 2011 09:33:41 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 18 Jan 2011 09:33:40 +0800
Thread-Topic: [poky] [PATCH 1/5] staging: Use relative path in
	sysroot-destdir for target recipes
Thread-Index: Acu2l9KR6YtbHbMQQRamiETbx2vy5gADYUXAAAKMdrA=
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31C3DAD2@shsmsx501.ccr.corp.intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
	<a84ff52c94c4299e9c6093539ba25bc5df7769e6.1295042140.git.dongxiao.xu@intel.com>
	<1295304133.14388.15857.camel@rex> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/5] staging: Use relative path in sysroot-destdir for target recipes
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
X-List-Received-Date: Tue, 18 Jan 2011 01:35:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Xu, Dongxiao wrote:
> Hi Richard,
>=20
> Richard Purdie wrote:
>> Hi Dongxaio,
>>=20
>> I agree with this patch as you know and I want to merge it but I'm
>> not entirely sure its 100% right yet.
>>=20
>> On Sat, 2011-01-15 at 06:14 +0800, Dongxiao Xu wrote:
>>> diff --git a/meta/classes/staging.bbclass
>>> b/meta/classes/staging.bbclass index 8432565..4d2991b 100644
>>> --- a/meta/classes/staging.bbclass
>>> +++ b/meta/classes/staging.bbclass
>>> @@ -45,25 +45,25 @@ sysroot_stage_dirs() {
>>>  	from=3D"$1"
>>>  	to=3D"$2"
>>>=20
>>> -	sysroot_stage_dir $from${includedir} $to${STAGING_INCDIR}
>>> +	sysroot_stage_dir $from${includedir} $to${includedir}
>>>  	if [ "${BUILD_SYS}" =3D "${HOST_SYS}" ]; then
>>> -		sysroot_stage_dir $from${bindir} $to${STAGING_DIR_HOST}${bindir}
>>> -		sysroot_stage_dir $from${sbindir}
>>> $to${STAGING_DIR_HOST}${sbindir}=20
>>> -		sysroot_stage_dir $from${base_bindir}
>>> $to${STAGING_DIR_HOST}${base_bindir}
>>> -		sysroot_stage_dir $from${base_sbindir}
>>> $to${STAGING_DIR_HOST}${base_sbindir}
>>> -		sysroot_stage_dir $from${libexecdir}
>>> $to${STAGING_DIR_HOST}${libexecdir}
>>> -		sysroot_stage_dir $from${sysconfdir}
>>> $to${STAGING_DIR_HOST}${sysconfdir}
>>> -		sysroot_stage_dir $from${localstatedir}
>>> $to${STAGING_DIR_HOST}${localstatedir} +		sysroot_stage_dir
>>> $from${bindir} $to${bindir} +		sysroot_stage_dir $from${sbindir}
>>> $to${sbindir} +		sysroot_stage_dir $from${base_bindir}
>>> $to${base_bindir} +		sysroot_stage_dir $from${base_sbindir}
>>> $to${base_sbindir} +		sysroot_stage_dir $from${libexecdir}
>>> $to${libexecdir} +		sysroot_stage_dir $from${sysconfdir}
>>> $to${sysconfdir} +		sysroot_stage_dir $from${localstatedir}
>>>  	$to${localstatedir}  	fi if [ -d $from${libdir} ]  	then
>>> -		sysroot_stage_libdir $from/${libdir} $to${STAGING_LIBDIR}
>>> +		sysroot_stage_libdir $from/${libdir} $to${libdir}  	fi
>>>  	if [ -d $from${base_libdir} ]
>>>  	then
>>> -		sysroot_stage_libdir $from${base_libdir}
>>> $to${STAGING_DIR_HOST}${base_libdir} +		sysroot_stage_libdir
>>> $from${base_libdir} $to${base_libdir}  	fi -	sysroot_stage_dir
>>> $from${datadir} $to${STAGING_DATADIR} +	sysroot_stage_dir
>>>  $from${datadir} $to${datadir} }
>>>=20
>>>  sysroot_stage_all() {
>>> @@ -76,6 +76,7 @@ do_populate_sysroot[dirs] =3D
>>>  			     "${STAGING_DIR_TARGET}/${bindir} ${STAGING_DIR_TARGE
>>>  			     ${STAGING_INCDIR_NATIVE} \ ${STAGING_DATADIR} \
>>>=20
>>> ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET} \ +
>>> ${SYSROOT_DESTDIR}${base_prefix} \  			     ${S} ${B}"
>>>=20
>>>  # Could be compile but populate_sysroot and do_install shouldn't
>>> run at the same time @@ -103,8 +104,8 @@ python do_populate_sysroot
>>> () {=20
>>>=20
>>>  SSTATETASKS +=3D "do_populate_sysroot"
>>>  do_populate_sysroot[sstate-name] =3D "populate-sysroot"
>>> -do_populate_sysroot[sstate-inputdirs] =3D
>>> "${SYSROOT_DESTDIR}/${STAGING_DIR}"
>>> -do_populate_sysroot[sstate-outputdirs] =3D "${TMPDIR}/sysroots"
>>> +do_populate_sysroot[sstate-inputdirs] =3D
>>> "${SYSROOT_DESTDIR}/${base_prefix}"
>>> +do_populate_sysroot[sstate-outputdirs] =3D "${STAGING_DIR_HOST}/"
>>=20
>>=20
>> The reason why is I'm still not 100% comfortable with the two lines
>> above. They look unbalanced and should really be paired to match
>> such that they'd either be:=20
>>=20
>> do_populate_sysroot[sstate-inputdirs] =3D
>> "${SYSROOT_DESTDIR}/${base_prefix}"
>> do_populate_sysroot[sstate-outputdirs] =3D
>> "${STAGING_DIR_HOST}/${base_prefix}"
>>=20
>> or
>>=20
>> do_populate_sysroot[sstate-inputdirs] =3D "${SYSROOT_DESTDIR}"
>> do_populate_sysroot[sstate-outputdirs] =3D "${STAGING_DIR_HOST}"
>>=20
>> but just looking at code I'm having trouble working out whether
>> either, both or neither of these would work and in which cases.
>>=20
>> The cross/crosssdk recipes are a mess as they install into two
>> different sysroots. Dexuan is working on some changes to improve that
>> so I'm least worried about those two classes and the patch I just
>> merged for libgcc is going to help. I'm therefore aiming for this to
>> work for the target/native/nativesdk/cross-canadian cases and the
>> cross/crosssdk one is secondary and can be messy for now if needed.
>>=20
>> I feel most comfortable aiming for the latter of my two options
>> above, does that work assuming we hack cross/crosssdk to do whatever
>> is needed to make them work with it? Can the others then remain
>> unaltered?
>=20
>=20
> ${base_prefix} has some kinds of values considerring different recipe
> type. (we do not discuss cross and crosssdk)=20
>=20
> Normal target recipe: base_prefix =3D ""
> Native recipes: base_prefix =3D "${STAGING_DIR_NATIVE}"
> Nativesdk recipes: base_prefix =3D "${SDKPATHNATIVE}"
> Cross-canadian recipes: base_prefix =3D "${SDKPATHNATIVE}"
>=20
> For target recipes, the input and output dirs should be:
> Input: ${SYSROOT_DESTDIR}
> Output: ${STAGING_DIR_HOST}
>=20
> For native recipes, the input and output dirs should be:
> Input: ${SYSROOT_DESTDIR}/${STAGING_DIR_NATIVE}
> Output: "${STAGING_DIR_NATIVE}"
>=20
> For nativesdk recipes, the input and output dirs should be:
> Input: ${SYSROOT_DESTDIR}/${SDKPATHNATIVE}
> Output: "${STAGING_DIR_HOST}/${SDKPATHNATIVE}
>=20
> For cross-canadian recipes, the input and output dirs should be:
> Input: ${SYSROOT_DESTDIR}/${SDKPATHNATIVE}
> Output: "${STAGING_DIR_HOST}/${SDKPATHNATIVE}
>=20
> It is workable if change to your latter option.
> do_populate_sysroot[sstate-inputdirs] =3D "${SYSROOT_DESTDIR}"
> do_populate_sysroot[sstate-outputdirs] =3D "${STAGING_DIR_HOST}"
>=20
> In this case we need to specially handle native cases.

Native case could also be handled by that pair, since for native, STAGING_D=
IR_HOST is "".

Thanks much for your hint, this simplifies the patch.

-- Dongxiao

>=20
>>=20
>> The other minor thing I'm thinking about is adding a definition of:
>>=20
>> bindir_crossscripts =3D "${bindir}/crossscripts"
>>=20
>> to bitbake.conf (near the top next to bindir_cross) and using that in
>> the sysroot functions.
>=20
> OK, I will change accordingly.
>=20
> Thanks,
> Dongxiao
>=20
>>=20
>> Cheers,
>>=20
>> Richard


