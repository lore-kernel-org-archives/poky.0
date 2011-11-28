Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABAE6E0030A
	for <poky@yoctoproject.org>; Mon, 28 Nov 2011 09:35:02 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2011 09:34:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="80740265"
Received: from unknown (HELO [10.255.15.251]) ([10.255.15.251])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2011 09:34:54 -0800
Message-ID: <4ED3C63E.9060900@linux.intel.com>
Date: Mon, 28 Nov 2011 09:34:54 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Derek Browne <derek.browne@intel.com>, Joshua Lock <josh@linux.intel.com>
References: <CAJa-nAwJ_EFLovm_+wr-n+WaRsDscCCfCgFtAnsCYNdy4Cx3AA@mail.gmail.com>
In-Reply-To: <CAJa-nAwJ_EFLovm_+wr-n+WaRsDscCCfCgFtAnsCYNdy4Cx3AA@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: ERROR: Execution of event handler 'run_buildstats' failed on non-local storage
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
X-List-Received-Date: Mon, 28 Nov 2011 17:35:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2011 09:22 AM, Derek Browne wrote:
> Hi all,
>
> I have run into an issue completing a build on non-local storage(NFS).
>
> Current configuration:
> Poky Edison branch with commit revision :
> c5bdef56175c0b6863e3d588a5a2c23cbea7b568
> Using the default local.conf configuration(qemux86) with a build
> target of core-image-minimal.
>
> An error is thrown at the beginning of the build:
>
> ERROR: Execution of event handler 'run_buildstats' failed
> Traceback (most recent call last):
>    File "run_buildstats(e)", line 18, in
> run_buildstats(e=<bb.event.BuildStarted object at 0x11c3450>)
>    File "buildstats.bbclass", line 21, in
> set_device(e=<bb.event.BuildStarted object at 0x11c3450>)
> UnboundLocalError: local variable 'rdev' referenced before assignment
>
This has been fixed in Master see

  http://bugzilla.pokylinux.org/show_bug.cgi?id=1700

This should be a candidate for the 1.1.1 stable branch being worked on 
currently also.

The fix should apply to your version of buildstats.bbclass.

Sau!

> The build then continues with the initial 126 host dependency build
> tasks, which makes it very easy to miss the error output. The build
> then stops when the 126 initial build tasks are completed and does not
> continue.
>
> Due to the build being performed on non-local storage as apposed to a
> physical drive, the build cannot access the disk statistics via
> /proc/diskstats.
>
> To make the build continue, a hack had to be introduced to the
> /poky/meta/classes/buildstats.bbclass .The disk device(rdev) was hard
> coded to an available physical drive sda1. As shown below:
>
> diff --git a/meta/classes/buildstats.bbclass b/meta/classes/buildstats.bbclass
> index 55cbb3c..8718e79 100644
> --- a/meta/classes/buildstats.bbclass
> +++ b/meta/classes/buildstats.bbclass
> @@ -52,6 +52,7 @@ def set_device(e):
>       device=os.stat(tmpdir)
>       majordev=os.major(device.st_dev)
>       minordev=os.minor(device.st_dev)
> +    rdev = "sda1"
>       for line in open("/proc/diskstats", "r"):
>           if majordev == int(line.split()[0]) and minordev ==
> int(line.split()[1]):
>              rdev=line.split()[2]
>
>
> This allows the build to run to completion. Should I report this as a
> bug via bugzilla ?
>
> Thanks,
> Derek
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

