Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 965D94C8009A
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 18:52:09 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Feb 2011 16:52:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,183,1297065600"; d="scan'208";a="709264154"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2011 16:52:08 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 18 Feb 2011 08:51:18 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 18 Feb 2011 08:51:18 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 18 Feb 2011 08:51:16 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 18 Feb 2011 08:51:15 +0800
Thread-Topic: [poky] [PATCH 1/1] gstreamer: reenable PARALLEL_MAKE
Thread-Index: AcvO04scmNXiDLG7RUiUCoM6d74rJwAMjIlA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3332362D@shsmsx501.ccr.corp.intel.com>
References: <cover.1297940034.git.dongxiao.xu@intel.com>
	<d0bea6b772b8b65b50fff81836a25df8977488c9.1297940034.git.dongxiao.xu@intel.com>
	<4D5D6DE5.2080005@linux.intel.com>
In-Reply-To: <4D5D6DE5.2080005@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] gstreamer: reenable PARALLEL_MAKE
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
X-List-Received-Date: Fri, 18 Feb 2011 00:52:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Darren Hart wrote:
> On 02/17/2011 02:55 AM, Dongxiao Xu wrote:
>> From: Dongxiao Xu<dongxiao.xu@intel.com>
>>=20
>> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
>> ---
>>   .../gstreamer/gstreamer_0.10.31.bb                 |    2 +-
>>   1 files changed, 1 insertions(+), 1 deletions(-)
>>=20
>> diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
>> b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
>> index e7b00ad..c919b18 100644
>> --- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
>> +++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
>> @@ -27,7 +27,7 @@ EXTRA_OECONF =3D "--disable-docs-build
>>   --disable-dependency-tracking --with-check=3D #	mv
>>   ${WORKDIR}/gstregistrybinary.[ch] ${S}/gst/ #}
>>=20
>> -PARALLEL_MAKE =3D ""
>> +#PARALLEL_MAKE =3D ""
>=20
> Shouldn't we remove this rather than comment it out? Leaving it in
> tempts developers to tweak it - which we don't want them to do as it
> will toy with the global settings. =20

Thanks Darren, I've revised the change to remove the line.
See http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Ddxu4/distr=
o

Thanks,
Dongxiao=

