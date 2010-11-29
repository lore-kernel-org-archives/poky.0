Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DEF84C80039
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 23:27:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 21:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="631086784"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 21:27:06 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 29 Nov 2010 13:26:57 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 29 Nov 2010 13:26:56 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, "He, Qing" <qing.he@intel.com>
Date: Mon, 29 Nov 2010 13:26:54 +0800
Thread-Topic: [poky] [PATCH 1/1] curl: fix native dependency
Thread-Index: AcuPQga4Px2j+qulRkO0K7yoVNEJigAQxS5A
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
In-Reply-To: <1290954166.27143.217.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Mon, 29 Nov 2010 05:27:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Sunday, November 28, 2010 10:23 PM
>
>On Wed, 2010-11-17 at 16:26 +0800, Qing He wrote:
>> @@ -25,6 +24,10 @@ EXTRA_OECONF =3D "--with-zlib=3D${STAGING_LIBDIR}/../=
 \
>>  		--enable-crypto-auth \
>>  		"
>>
>> +EXTRA_OECONF_append =3D " --with-gnutls=3D${STAGING_LIBDIR}/../"
>> +EXTRA_OECONF_virtclass-native_append =3D " --without-gnutls"
>> +EXTRA_OECONF_virtclass-nativesdk_append =3D " --without-gnutls"
>> +
>>  do_configure_prepend() {
>>  	sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
>>  }
>
>I'm going to push a fix but I wanted to note that the above is not
>correct. Let me walk through this since I expect various people find
>this confusing.
>
>EXTRA_OECONF_virtclass-native_append =3D "X"
>
>means append "X" to the variable EXTRA_OECONF_virtclass-native
>
>So as bitbake expands this,
>
>EXTRA_OECONF_virtclass-native =3D "X" (since EXTRA_OECONF_virtclass-native
>was empty)
>
>When bitbake expands overrides, the virtclass-native can be removed and
>this overwrites the original EXTRA_OECONF variable so EXTRA_OECONF
>becomes just X.

I guess this will not happen, since finalize() first expands override and t=
hen
handle append/prepend. In that way virtclass-native has been expanded befor=
e
append is handled, and thus finally we'll get a variable EXTRA_OECONF_virtc=
lass-native
which ends up to mean nothing in the database. Is it true?

>
>Now taking:
>
>EXTRA_OECONF_append_virtclass-native =3D "X"
>
>This is different. In this case, when overrides are expanded, this
>becomes EXTRA_OECONF_append and then X is added to EXTRA_OECONF.
>
>If the virtclass-native is never expanded (not in OVERRIDES), the append
>is never "seen" by bitbake.
>
>Unfortunately rewriting the above to:
>
>EXTRA_OECONF_append =3D " --with-gnutls=3D${STAGING_LIBDIR}/../"
>EXTRA_OECONF_append_virtclass-native =3D " --without-gnutls"
>EXTRA_OECONF_append_virtclass-nativesdk =3D " --without-gnutls"
>
>doesn't help since we end up with two appends in the native/nativesdk
>cases. There is a way out of this though:

This also confuses me a bit. When virtclass-native is expanded, EXTRA_OECON=
F_append
is simply a variable. In that case the expanded value should override the 1=
st assignment
of EXTRA_OECONF_append, and then we should get:

EXTRA_OECONF_append =3D " --without-gnutls "

and then that's what we expect.

I guess I may still overlook something here, and really appreciate your exp=
lanation
on the whole flow which is helpful. :-)

Thanks
Kevin

>
>+CURLGNUTLS =3D " --with-gnutls=3D${STAGING_LIBDIR}/../"
>+CURLGNUTLS_virtclass-native =3D "--without-gnutls"
>+CURLGNUTLS_virtclass-nativesdk =3D "--without-gnutls"
>
>and then reference CURLGNUTLS in EXTRA_OECONF which is what my update
>does :)
>
>Cheers,
>
>Richard
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

