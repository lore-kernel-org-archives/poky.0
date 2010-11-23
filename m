Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C6D44C808B6
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 18:20:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 16:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,239,1288594800"; d="scan'208";a="860361871"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 16:20:01 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 23 Nov 2010 08:19:32 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 23 Nov 2010 08:19:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 23 Nov 2010 08:19:31 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 23 Nov 2010 08:19:20 +0800
Thread-Topic: [poky] [PATCH 0/1] Add blktrace package
Thread-Index: AcuKm7+BkzHzMqJMRUm1QxaohuudVQAB/K3Q
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3A619D9B@shsmsx502.ccr.corp.intel.com>
References: <cover.1290467442.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1290467442.git.tom.zanussi@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] Add blktrace package
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
X-List-Received-Date: Tue, 23 Nov 2010 00:20:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tom Zanussi
>Sent: Tuesday, November 23, 2010 7:11 AM
>
>Add blktrace, one of the tracing/profiling tools mentioned in the Yocto v1=
.0
>tracing/profiling tools list posted here:
>
>https://lists.yoctoproject.org/pipermail/yocto/2010-November/000281.html
>
>Pull URL: git://git.pokylinux.org/poky-contrib.git
>  Branch: tzanussi/traceprof
>  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtzanussi=
/traceprof
>
>Thanks,
>    Tom Zanussi <tom.zanussi@intel.com>
>---
>
>
>Tom Zanussi (1):
>  blktrace: new package
>
> .../conf/distro/include/poky-default-revisions.inc |    1 +
> meta/recipes-core/tasks/task-poky-tools.bb         |    3 +-
> .../blktrace/blktrace/blktrace-makefile.patch      |   53
>++++++++++++++++++++
> meta/recipes-kernel/blktrace/blktrace_git.bb       |   25 +++++++++
> 4 files changed, 81 insertions(+), 1 deletions(-)
> create mode 100644 meta/recipes-kernel/blktrace/blktrace/blktrace-makefil=
e.patch
> create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb

New recipe should start from "r0" for PR.

Thanks
Kevin

