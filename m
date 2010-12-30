Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DB844C80FFE
	for <poky@pokylinux.org>; Wed, 29 Dec 2010 18:19:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 16:18:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,246,1291622400"; d="scan'208";a="641592165"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 29 Dec 2010 16:18:41 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 30 Dec 2010 08:17:44 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 30 Dec 2010 08:17:43 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 30 Dec 2010 08:17:43 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Thu, 30 Dec 2010 08:17:39 +0800
Thread-Topic: [poky] [PATCH 0/1] fix SRC_URI for acl
Thread-Index: AcunlnArA+sp0UReS2qhdpB2U96brgAIEgFg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D64C311A4@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kj5oeh@orsmga001.jf.intel.com> <4D1B9905.1030405@intel.com>
In-Reply-To: <4D1B9905.1030405@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 0/1] fix SRC_URI for acl
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
X-List-Received-Date: Thu, 30 Dec 2010 00:19:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Wold, Saul
>Sent: Thursday, December 30, 2010 4:25 AM
>
>On 12/27/2010 04:50 PM, Kevin Tian wrote:
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: tk/laverne
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtk/la=
verne
>>
>> Thanks,
>>      Kevin Tian<kevin.tian@intel.com>
>> ---
>>
>>
>> Kevin Tian (1):
>>    acl: use correct Savannah download link
>>
>>   meta/recipes-support/attr/acl.inc       |    2 +-
>>   meta/recipes-support/attr/acl_2.2.49.bb |    2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>Merged into Maste
>

Could you also merge into Laverne which is what this issue was originally r=
eported?
I sent two separate patches for both master and Laverne but didn't mark it =
clearly
in the title. At least this one is for Laverne:

>>    Branch: tk/laverne
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtk/la=
verne

Thanks
Kevin

