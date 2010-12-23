Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E41EE4C811DE
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 20:03:58 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Dec 2010 18:03:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,216,1291622400"; d="scan'208";a="586496293"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2010 18:03:57 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 10:03:16 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 23 Dec 2010 10:03:16 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Thu, 23 Dec 2010 10:03:14 +0800
Thread-Topic: [poky] [PATCH 0/3]distrodata.bbcalss: To get more precise
	upstream version for pkg report system
Thread-Index: Acuh978qNBk2lUN3RhqEoimXU2chbgARGluQ
Message-ID: <749B9D3DBF0F054390025D9EAFF47F223195EEA4@shsmsx501.ccr.corp.intel.com>
References: <cover.1293023813.git.lei.mei@intel.com>
	<4D122B4D.9070204@intel.com>
In-Reply-To: <4D122B4D.9070204@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/3]distrodata.bbcalss: To get more precise upstream version for pkg report system
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
X-List-Received-Date: Thu, 23 Dec 2010 02:03:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Wold, Saul
>Sent: Thursday, December 23, 2010 12:46 AM
>To: Mei, Lei
>Cc: poky@yoctoproject.org
>Subject: Re: [poky] [PATCH 0/3]distrodata.bbcalss: To get more precise
>upstream version for pkg report system
>
>On 12/22/2010 05:22 AM, Mei Lei wrote:
>> There are some changes to get more recipes upstream version and to
>generate some necessary data for pkg report system.
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: lmei3/pkg-report-system
>>    Browse:
>http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlmei3/pkg-report-s=
ystem
>>
>> Thanks,
>>      Mei Lei<lei.mei@intel.com>
>> ---
>>
>Lei:
>
>There are various issues with these patches please see my comments below
>
>>
>> Mei Lei (3):
>>    distrodata.bbclass: Change for package report system
>Not sure why you needed to add a logpath2 as you are using the same
>LOG_DIR var as logpath. Are you intending to create a separate directory.

Oh, I didn't realize this problem before, I will change this.

>
>Is there a reason you need to have each package into in separate files?
>Can your tool not read 1 larger flat file then we can just use 1 output
>format for the spreadsheet

Ok, I will change this output as one file.
The reason why I generate every output file for every package is that the d=
efault output this is it when I first use checkpkg task long long time ago,=
 so the package report system obey this all the time.
I will change this.

>
>>    base.bbclass: Add inherit information for checkpkg task
>We don't want to inherit the distrodata  by default, you can add this to
>your local.conf

Ok, I understand it.

>
>>    bitbake.conf: Change the GNU_MIRROR to get more precise result
>>
>Not sure how this gives a more precise result, gnu and pub/gnu are the
>same location, one is linked to the other.
>

Ok , I get it. This patch is not necessary.

>Sau!
>
>>   meta/classes/base.bbclass       |    4 +-
>>   meta/classes/distrodata.bbclass |   44
>+++++++++++++++++++++++++++++++-------
>>   meta/conf/bitbake.conf          |    2 +-
>>   3 files changed, 39 insertions(+), 11 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>


