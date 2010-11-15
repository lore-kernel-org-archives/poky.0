Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E32924C80052
	for <poky@lists.pokylinux.org>; Sun, 14 Nov 2010 19:36:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Nov 2010 17:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,197,1288594800"; d="scan'208";a="857521342"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2010 17:36:22 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 15 Nov 2010 09:36:11 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 15 Nov 2010 09:36:09 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>, Gary Thomas <gary@mlbassoc.com>
Date: Mon, 15 Nov 2010 09:36:08 +0800
Thread-Topic: [poky] SSTATE builds more broken than I thought
Thread-Index: AcuEJYqurQN4uQ4HSGGZReOM/DDgtAAOg8AAAAE442A=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D2A9B4FBD@shsmsx502.ccr.corp.intel.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>
	<4CDCF848.9020703@mlbassoc.com> <1289550656.1272.3179.camel@rex>
	<4CDCFC57.20909@mlbassoc.com> <1289604672.1272.4108.camel@rex>
	<4CDDD3E7.3000305@mlbassoc.com> <1289757488.1272.4980.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D2A9B4F70@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D2A9B4F70@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SSTATE builds more broken than I thought
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
X-List-Received-Date: Mon, 15 Nov 2010 01:36:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Monday, November 15, 2010 9:14 AM
>
>I haven't got time looking into all of them. For random 3 (bzip2, gnome-vf=
s, webkit-gtk),
>they have the same symptom on populate_sysroot, e.g:
>
>basehash changed from c7c1d0c7ea052eef6f6665b8959b44fc to
>3eb4a010cbfb3b15df49d433f6593b0c
>Variable BB_TASKHASH value changed from 9e077b25e1e2c50d4f8a09a9356a6a6c t=
o
>0d6608b425d8a59b21f5874b4914b412
>Hash for dependent task
>/home/poky/tasks/poky/meta/recipes-extended/bzip2/bzip2_1.0.5.bb.do_instal=
l changed
>from c4cba89fa491ecb0916a56f1e75c5f17 to c4e7f58c385e384749cc20ca1bd8fccf
>
>* basehash varies while no variable is explicitly listed by bitbake-diffsi=
gs. I expected
>to see the variable causing difference to be marked explicitly here.
>* taskhash varies due to do_install, however bitbake-diffsigs doesn't list=
 how do_install
>checksum is calculated. I made a quick comparison between run.do_install s=
cripts, with
>major difference still on expanded variables. There may still have some wh=
itelist work
>to be done.
>
>I used same source tree for two builds, which share same sstate-cache dire=
ctory.
>

Another interesting thing. When I compare other prebuilt tasks, all the res=
t tasks
show the difference on task dependencies of do_install, which then results =
in the
taskhash difference. Take 'package' for example:

---

Tasks this task depends on changed from set

(['GLIBCTARGETOS', 'TARGET_VENDOR', 'FILE', 'PACKAGES', 'PR', 'PV', 'packag=
e_do_package', 'DEPLOY_DIR', 'PF', 'PE', 'PN', 'package_rpm_do_package', 'M=
ULTIMACH_TARGET_SYS', 'D', 'TARGET_ARCH', 'TARGET_OS', 'TMPDIR', 'PKGD', 'W=
ORKDIR', 'PACKAGEFUNCS', 'EXTENDPE', 'MULTIMACH_ARCH', 'PACKAGE_PREPROCESS_=
FUNCS'])

to set

(['GLIBCTARGETOS', 'TARGET_VENDOR', 'FILE', 'PACKAGES', 'PR', 'PV', 'packag=
e_do_package', 'DEPLOY_DIR', 'PF', 'PE', 'PN', 'package_rpm_do_package', 'M=
ULTIMACH_TARGET_SYS', 'D', 'TARGET_ARCH', 'TARGET_OS', 'TMPDIR', 'PKGD', 'W=
ORKDIR', 'PACKAGEFUNCS', 'EXTENDPE', 'MULTIMACH_ARCH', 'PACKAGE_PREPROCESS_=
FUNCS'])

Hash for dependent task /home/poky/tasks/poky/meta/recipes-extended/bzip2/b=
zip2_1.0.5.bb.do_install changed from c4cba89fa491ecb0916a56f1e75c5f17 to c=
4e7f58c385e384749cc20ca1bd8fccf

---

First, I carefully checked above dependency list, which show NO difference =
at all.

Second, you can see the taskhash values actually match my earlier post abou=
t
populate_sysroot prebuilts. However at that place no dep info is shown exce=
pt=20
the hashvalue change.

I'll try more to see whether it's consistent.

Thanks
Kevin

