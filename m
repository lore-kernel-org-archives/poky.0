Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9503C4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 03:31:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2011 01:31:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,343,1291622400"; d="scan'208";a="648632147"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2011 01:31:06 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 19 Jan 2011 17:30:58 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 19 Jan 2011 17:30:58 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 19 Jan 2011 17:30:56 +0800
Thread-Topic: strange libgcc build failure in autobuilder
Thread-Index: Acu3u5UscklEi5KBRI24YIZFfRvHgA==
Message-ID: <1865303E0DED764181A9D882DEF65FB685BC552DE0@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: strange libgcc build failure in autobuilder
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
X-List-Received-Date: Wed, 19 Jan 2011 09:31:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I saw some libgcc(the new recipe I added days ago) failure that I can't rep=
roduce locally.
e.g.,  "qemux86 poky-image-sdk failed": http://autobuilder.pokylinux.org:80=
10/builders/nightly-internal-incremental/builds/16/steps/shell_5/logs/stdio

libgcc's do_package failed:
ERROR: Error executing a python function in /builds2/pokybuilds/nightly-int=
ernal/build/meta/recipes-devtools/gcc/libgcc_4.5.1.bb:
IOError: [Errno 2] No such file or directory: '/builds2/pokybuilds/nightly-=
internal/build/build/tmp/sysroots/i586-poky-linux/shlibs/cairo-perf-utils.l=
ist'

It's odd -- why cario-perf-utils.list is involved...

Thanks,
-- Dexuan
=20

