Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 538304C80FBE
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 20:36:42 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 18:36:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869160422"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 18:36:41 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:35:09 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 10:35:08 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>
Date: Fri, 17 Dec 2010 10:35:06 +0800
Thread-Topic: [poky] Shared state prebuild copy bug report (bug #602)
Thread-Index: Acudkl/NBGPZudlmQkiFDIJ9N2W/gwAAIaQw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409899@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
In-Reply-To: <4D0ACB43.8050909@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Shared state prebuild copy bug report (bug #602)
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
X-List-Received-Date: Fri, 17 Dec 2010 02:36:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Garman, Scott A
>Sent: Friday, December 17, 2010 10:30 AM
>
>On 12/16/2010 06:19 PM, Tian, Kevin wrote:
>>> I'm guessing Perl creates a configuration file somewhere in the sysroot
>>> which contains full pathnames to it's Perl module directories. That
>>> config file gets rolled into the prebuild package and cannot be used on
>>> another build directory.
>>>
>>
>> I think so, just curious how it may be reproduced in my side. I just hav=
e one
>> linux box in front now. :/
>>
>> Or could you search which file @INC actually points to and its content?
>
>It appears that @INC is encoded into the perl interpreter itself. cd
>into your native sysroot directory and run ./usr/bin/perl -V
>
>To reproduce this, bitbake an image in one directory. Then, create a
>separate directory somewhere else, and copy your sstate-cache over to
>the second build area. Finally (and this is important), rename your
>original build area.
>
>I'd bet that will make this reproducable.
>

ah, I see your point. The rename is very point here as it may hide such iss=
ue
if original dir exists.

I'll try whether I can reproduce it.

Thanks
Kevin

