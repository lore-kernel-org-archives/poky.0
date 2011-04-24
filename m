Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67C104C8024E
	for <poky@yoctoproject.org>; Sun, 24 Apr 2011 10:15:21 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Apr 2011 08:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,263,1301900400"; d="scan'208";a="683193209"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 24 Apr 2011 08:15:03 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 24 Apr 2011 23:14:22 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 24 Apr 2011 23:14:21 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sun, 24 Apr 2011 23:14:20 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: Gerard van den Bosch <gerard@de-haardt.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Sun, 24 Apr 2011 23:14:19 +0800
Thread-Topic: [poky] [RFC] Request for your comment on package report system
Thread-Index: AcwAJR0tTdxPqTDWT2CWOus9CDfwpQCbPMJg
Message-ID: <749B9D3DBF0F054390025D9EAFF47F224A6C7192@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F224A66A18A@shsmsx501.ccr.corp.intel.com>
	<4DB02BF4.2040300@de-haardt.com>
In-Reply-To: <4DB02BF4.2040300@de-haardt.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [RFC] Request for your comment on package report system
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
X-List-Received-Date: Sun, 24 Apr 2011 15:15:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


>-----Original Message-----
>From: Gerard van den Bosch [mailto:gerard@de-haardt.com]
>Sent: Thursday, April 21, 2011 9:07 PM
>To: poky@yoctoproject.org
>Cc: Mei, Lei
>Subject: Re: [poky] [RFC] Request for your comment on package report syste=
m
>
>On 04/21/2011 06:18 AM, Mei, Lei wrote:
>> Hi all,
>> 	This is a description for package report system, please help to review =
and
>give your comments on this system. Thanks a lot!
>>
>> The system link is below:
>> http://packages.yoctoproject.org/
>>
>> Yocto package report system is a tool/website which could help people to
>check the latest package information and track the latest/history version
>information. Below is description of its functionalities.
>>
>>
>> --
>>
>>
>> Now we want to do some enhancement for this system in 1.0.1 plan, so do
>you have any comment or thought?
>> Any feedback is welcome :)
>>
>>
>> ---
>> Mei, Lei
>> Email: lei.mei@intel.com
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>Looks very nice.
>Maybe it would be useful to extend the package information with a link to =
the
>recipe in the git repository and "if existing" a list of the patches that =
the recipe
>includes.

Thanks for your comment, I will add this git link feature.

Thanks
Lei

>
>Regards,
>Gerard
>


