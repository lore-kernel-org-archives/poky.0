Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B098C4C80048
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 03:49:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Dec 2010 01:49:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="362502532"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 01:49:02 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 17:48:46 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 16 Dec 2010 17:48:45 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Thu, 16 Dec 2010 17:48:43 +0800
Thread-Topic: about 'noexec' message
Thread-Index: Acuccp35Z6qXKEqJSZCVhAxHZCaH1gAirW1wAAFsL2A=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4096A4@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex> <4D08E868.6090606@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40965E@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F40965E@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: about 'noexec' message
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
X-List-Received-Date: Thu, 16 Dec 2010 09:49:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Thursday, December 16, 2010 4:46 PM
>
>>From: Gary Thomas [mailto:gary@mlbassoc.com]
>>Sent: Thursday, December 16, 2010 12:10 AM
>>
>>Note to Richard: I'm still seeing a ton of Noexec messages every time I r=
ebuild
>>a package in this tree.  I thought I understood you to say they should ha=
ppen
>>at most once?
>>
>
>Yes, RP's previous patch does reduce the Noexec messages a lot. However th=
ere
>remains one problem. Current stamp file check also calculates the stamp of=
 tasks
>depended on. If those stamps are newer or not exist, the check return Fals=
e to
>indicate mismatched stamp.
>
>In 'noexec' case, some 'noexec' tasks happen to have some dependent tasks
>skipped which thus don't generate stamp files. This makes the check always
>failed for those 'noexec' tasks and thus you always observe the Noexec mes=
sages.
>
>I have a patch to fix that, and will send out soon. :-)
>

Though I managed to remove the rest 'noexec' messages by adding below in=20
check_stamp_task():

	if 'noexec' in taskdep and taskname in taskdep['noexec']
		return True

I realized there's one potential risk. Though 'noexec' task is not executed=
 at all,
it's considered to be a normal task which normally plays the role of the sy=
nc
points. Ideally if there're changes on stamp file of tasks that this 'noexe=
c' task
depends on, we still want to generate a new stamp file for the 'noexec' tas=
k.
That way other tasks depending on that 'noexec' task will trigger rebuild t=
oo.

If we always take 'noexec' task away from the comparison, above chain effec=
t
disappears.

Current comparison condition for stamp files is:

	if not t2 or t1 < t2
		iscurrent =3D False

I'm not sure under which case a stamp file (t2) doesn't exist, and whether =
it's
safe to use:
	if not t2 and not noexec or t2 and t1 < t2:
		iscurrent =3D False

to check stamp file for 'noexec' task.

Or alternative is to simply convert bb.note to bb.debug for 'noexec' messag=
e. :-)

Thanks
Kevin

