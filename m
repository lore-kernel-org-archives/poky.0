Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2A6CE00307
	for <poky@pokylinux.org>; Fri,  4 Nov 2011 08:44:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Nov 2011 08:44:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,456,1315206000"; d="scan'208";a="81273066"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 04 Nov 2011 08:44:29 -0700
Received: from pgsmsx102.gar.corp.intel.com (10.221.44.80) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 4 Nov 2011 23:44:27 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Fri, 4 Nov 2011 23:44:27 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 4 Nov 2011
	23:44:26 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 4 Nov 2011 23:44:19 +0800
Thread-Topic: build result by diabling nls and reducing -native dependencies
	for gettext
Thread-Index: AcybCJ392MwIgoz5SwmcUOoLpyTH/A==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12DBA30CDD@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {4474457B-A0DB-452D-BE82-F9B1D32CD75E}
x-cr-hashedpuzzle: Csss DJhv EEOg ELcQ EQlk EYi6 FCoX IzmM Jv0l K8+z NNHl
	NtDu N4GR OGIw OhNW QbGS; 2;
	cABvAGsAeQBAAHAAbwBrAHkAbABpAG4AdQB4AC4AbwByAGcAOwB5AG8AYwB0AG8AQAB5AG8AYwB0AG8AcAByAG8AagBlAGMAdAAuAG8AcgBnAA==;
	Sosha1_v1; 7; {4474457B-A0DB-452D-BE82-F9B1D32CD75E};
	agBpAGEAagB1AG4ALgB4AHUAQABpAG4AdABlAGwALgBjAG8AbQA=; Fri,
	04 Nov 2011 15:44:20 GMT;
	YgB1AGkAbABkACAAcgBlAHMAdQBsAHQAIABiAHkAIABkAGkAYQBiAGwAaQBuAGcAIABuAGwAcwAgAGEAbgBkACAAcgBlAGQAdQBjAGkAbgBnACAALQBuAGEAdABpAHYAZQAgAGQAZQBwAGUAbgBkAGUAbgBjAGkAZQBzACAAZgBvAHIAIABnAGUAdAB0AGUAeAB0AA==
acceptlanguage: en-US
MIME-Version: 1.0
Subject: build result by diabling nls and reducing -native dependencies for gettext
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
X-List-Received-Date: Fri, 04 Nov 2011 15:44:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
I have a test with Richard's recent patch to improve build performance - "g=
ettext: Switch to disabling nls and reducing -native build dependencies to =
a set of pre built m4 macros", http://git.yoctoproject.org/cgit.cgi/poky/co=
mmit/?id=3Db090fde5c184a64d3dd77c5f87b9596854e272ec.

With the patch, the build time of core-image-sato against qemux86 costs 106=
 minutes. Without the patch, the build time is 114 minutes. So the patch co=
uld give 7% performance gain. Detailed result as above:
w/ commit b090fde5c184a6...
real 106m20s
user 376m39s
sys 51m51s

w/o commit b090fde5c184a6...
w/o
real 114m17s
user 370m3s
sys 50m59s

My testing is performed on a 4-core Core-i7 system with 4GB memory. BB_NUMB=
ER_THREADS and PARALLEL_MAKE are set to 8.

Best Regards,
Jiajun


