Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7CF34C80052
	for <poky@lists.pokylinux.org>; Sun, 14 Nov 2010 19:14:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Nov 2010 17:14:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,197,1288594800"; d="scan'208";a="348636808"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 14 Nov 2010 17:14:40 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 15 Nov 2010 09:13:54 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 15 Nov 2010 09:13:54 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 15 Nov 2010 09:13:53 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, Gary Thomas <gary@mlbassoc.com>
Date: Mon, 15 Nov 2010 09:13:51 +0800
Thread-Topic: [poky] SSTATE builds more broken than I thought
Thread-Index: AcuEJYqurQN4uQ4HSGGZReOM/DDgtAAOg8AA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D2A9B4F70@shsmsx502.ccr.corp.intel.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>
	<4CDCF848.9020703@mlbassoc.com> <1289550656.1272.3179.camel@rex>
	<4CDCFC57.20909@mlbassoc.com> <1289604672.1272.4108.camel@rex>
	<4CDDD3E7.3000305@mlbassoc.com> <1289757488.1272.4980.camel@rex>
In-Reply-To: <1289757488.1272.4980.camel@rex>
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
X-List-Received-Date: Mon, 15 Nov 2010 01:14:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Monday, November 15, 2010 1:58 AM
>
>On Fri, 2010-11-12 at 16:55 -0700, Gary Thomas wrote:
>> On 11/12/2010 04:31 PM, Richard Purdie wrote:
>> > On Fri, 2010-11-12 at 01:35 -0700, Gary Thomas wrote:
>> >> On 11/12/2010 01:30 AM, Richard Purdie wrote:
>> >>> On Fri, 2010-11-12 at 01:18 -0700, Gary Thomas wrote:
>> >>>>> Are these all files or are they symlinks? Are they just present fo=
r
>> >>>>> deploy-ipk or are there others?
>> >>>>
>> >>>> They are files.
>> >>>>
>> >>>> Sorry, but I don't understand your other question.  These are the o=
nly
>> >>>> extra files polluting the tree, except for Python *.py? object file=
s
>> >>>> which are also always created.
>> >>>
>> >>> Are there any files related to other sstate tasks such as
>> >>> populate-sysroot*.tgz or package*.tgz or is there just *deploy-ipk*.=
tgz?
>> >>>
>> >>> In other words I'm wondering if this is something specific to the
>> >>> deploy-ipk sstate task...
>> >>
>> >> The only extra files created are *deploy-ipk*.tgz
>> >> This most certainly is restricted to the deploy-ipk sstate task and o=
nly
>> >> happens if SSTATE_MIRRORS is defined.
>> >
>> > This should be fixed in ae98f7eacb9e61fe086d88dc694b4c651af9fee3, it
>> > turns out to be an issue with the local fetcher not searching DL_DIR.
>>
>> Trying the same process as in bug #526, it failed with this error:
>[...]
>
>Right, I messed up those commits. I should know better than make commits
>when travelling and jetlagged.
>
>I ended up reverting the first fixes and pushing a set of different
>fixes.
>
>Previously you (and I think Kevin Tian) reporting bitbake spending a
>huge amount of time thinking about shared state. When I was debugging
>this I noticed a potential cause of that, my local test setups were
>evidently just too fast to notice it. I added another commit:
>
>http://git.pokylinux.org/cgit.cgi/poky/commit/?id=3D89929e1f283c8508c505c9=
731ad93388
>0abf22a1

thanks for the quick fix. I'll verify it later. If basehash/taskhash don't =
change,
the result should be soon. Or else another full rebuild is required as the =
prebuilt base.

btw, I have a quick scan about cases failing to reuse prebuilt (on a built =
in the weekend
at a commit before above commits), there're 31:

NOTE: package calibrateproto-0.0+git0+1da6fd1e2c7a49648245c98481fabea8b9690=
a8c-r2: task do_install: Succeeded
NOTE: package sat-solver-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-=
r1: task do_install: Succeeded
NOTE: package bzip2-1.0.5-r3: task do_install: Succeeded
NOTE: package libxcalibrate-0.0+git0+209d83af61ed38a002c8096377deac292b3e39=
6c-r0: task do_install: Succeeded
NOTE: package hal-0.5.14-r2: task do_install: Succeeded
NOTE: package task-poky-boot-1.0-r7: task do_install: Succeeded
NOTE: package trace-cmd-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891=
-r1: task do_install: Succeeded
NOTE: package procps-3.2.7-r9: task do_install: Succeeded
NOTE: package xtscal-0.6.3-r12: task do_install: Succeeded
NOTE: package kexec-tools-2.0.1-r0: task do_install: Succeeded
NOTE: package poky-image-sato-1.0-r0: task do_install: Succeeded
NOTE: package connman-0.56-r2: task do_install: Succeeded
NOTE: package gnome-vfs-2.24.3-r0: task do_install: Succeeded
NOTE: package libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r3:=
 task do_install: Succeeded
NOTE: package oprofileui-0.0+svnr197-r0: task do_install: Succeeded
NOTE: package zypper-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1=
: task do_install: Succeeded
NOTE: package gst-plugins-base-0.10.29-r1: task do_install: Succeeded
NOTE: package libowl-av-0.0+svnr398-r4: task do_install: Succeeded
NOTE: package gaku-0.0+svnr399-r3: task do_install: Succeeded
NOTE: package owl-video-0.0+svnr394-r2: task do_install: Succeeded
NOTE: package bluez4-4.66-r0: task do_install: Succeeded
NOTE: package gst-plugins-bad-0.10.19-r2: task do_install: Succeeded
NOTE: package eds-dbus-2.30+git0+7337d11aed576e7caaa12b4e881ad8d33668799f-r=
1: task do_install: Succeeded
NOTE: package tasks-0.16-r0: task do_install: Succeeded
NOTE: package dates-0.4.11+git0+514185dc1f6588085fda41eb59898b93d0487dd4-r0=
: task do_install: Succeeded
NOTE: package contacts-0.12+git0+19853893fdb595de6aa59db0d9dc2f9451ed2933-r=
0: task do_install: Succeeded
NOTE: package gst-plugins-good-0.10.23-r0: task do_install: Succeeded
NOTE: package gst-meta-base-0.10-r8: task do_install: Succeeded
NOTE: package linux-wrs-2.6.34+git0+5adcf6fbcd7491d8d3e1805929f575041d43923=
5_0+aae69fdf104b0a9d7b3710f808aac6ab303490f7-r12: task do_install: Succeede=
d
NOTE: package webkit-gtk-1.3.2+svnr62027-r0: task do_install: Succeeded
NOTE: package web-webkit-0.0+svnr110-r2: task do_install: Succeeded

I haven't got time looking into all of them. For random 3 (bzip2, gnome-vfs=
, webkit-gtk),
they have the same symptom on populate_sysroot, e.g:

basehash changed from c7c1d0c7ea052eef6f6665b8959b44fc to 3eb4a010cbfb3b15d=
f49d433f6593b0c
Variable BB_TASKHASH value changed from 9e077b25e1e2c50d4f8a09a9356a6a6c to=
 0d6608b425d8a59b21f5874b4914b412
Hash for dependent task /home/poky/tasks/poky/meta/recipes-extended/bzip2/b=
zip2_1.0.5.bb.do_install changed from c4cba89fa491ecb0916a56f1e75c5f17 to c=
4e7f58c385e384749cc20ca1bd8fccf

* basehash varies while no variable is explicitly listed by bitbake-diffsig=
s. I expected
to see the variable causing difference to be marked explicitly here.
* taskhash varies due to do_install, however bitbake-diffsigs doesn't list =
how do_install
checksum is calculated. I made a quick comparison between run.do_install sc=
ripts, with
major difference still on expanded variables. There may still have some whi=
telist work
to be done.

I used same source tree for two builds, which share same sstate-cache direc=
tory.

>
>which should make things faster (n^2 faster where n is the number of
>tasks).
>
>Thanks again for testing and reporting the issues, I believe this code
>will make a significant difference for people once it works reliably and
>we're close to making that happen.
>

Agree. :-)

Thanks,
Kevin

