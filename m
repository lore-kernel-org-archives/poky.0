Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14C044C81260
	for <poky@lists.pokylinux.org>; Fri, 28 Jan 2011 01:42:55 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 23:42:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="652035757"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 23:42:48 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 15:42:03 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 28 Jan 2011 15:42:01 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Fri, 28 Jan 2011 15:42:00 +0800
Thread-Topic: [poky] What's taking so long??
Thread-Index: Acu6XBBMh9SrOoj0SLWEBckxzKxgEAEXJBzA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFC0@shsmsx501.ccr.corp.intel.com>
References: <4D3850B3.2030100@mlbassoc.com>
	<1295619024.14388.30678.camel@rex>	<4D399769.1050803@mlbassoc.com>
	<1295626657.14388.31197.camel@rex>	<4D39F115.90909@mlbassoc.com>
	<4D3B1779.50504@mlbassoc.com>
In-Reply-To: <4D3B1779.50504@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Fri, 28 Jan 2011 07:42:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Gary Thomas wrote:
> On 01/21/2011 01:48 PM, Gary Thomas wrote:
>> On 01/21/2011 09:17 AM, Richard Purdie wrote:
>>> On Fri, 2011-01-21 at 07:25 -0700, Gary Thomas wrote:
>>>> This particular test was isolated, just that one recipe. I noticed
>>>> it before when building a complete image, so running it isolated
>>>> does not seem to make any difference. There is also nothing else
>>>> running on my build machine (it's a separate server that is used
>>>> only for builds)
>>>>
>>>> This is against master as of 2011-01-14
>>>> (897530621fabf3c345c302050a5c21e16097a2ba)
>>>> with my local layers.
>>>>
>>>> What can I look at (alternatively what data can I provide) to help
>>>> understand this?
>>>
>>> You could try pulling in:
>>> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=3Dede381d56b180b384fd
>>> ad98d445e5430819cfade
>>> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=3D7857834691868b7f48f
>>> 732ee78d8770f5473ff68
>>> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=3Dfd88588df029604689d
>>> b9b0e30c55aad68392a5d
>>>
>>> and see if they fix the problem. I'm not sure that they would in a
>>> single task case but who knows. You could also try adding timings as
>>> per my previous email, the change to package.bbclass was simply:
>>>
>>> diff --git a/meta/classes/package.bbclass
>>> b/meta/classes/package.bbclass index 8e7fa26..8b0cb96 100644
>>> --- a/meta/classes/package.bbclass
>>> +++ b/meta/classes/package.bbclass
>>> @@ -1082,6 +1082,7 @@ python package_do_package () { return
>>>
>>> for f in (bb.data.getVar('PACKAGEFUNCS', d, True) or '').split(): +
>>> bb.error("Running %s" % f) bb.build.exec_func(f, d)
>>> }
>>> do_package[dirs] =3D "${SHLIBSWORKDIR} ${PKGDESTWORK} ${D}"
>>>
>>> as I'd like to understand of the 23 minutes, where the time is
>>> being spent.
>>
>> For my board:
>> Fri Jan 21 10:12:13 MST 2011: NOTE: Running task 658 of 661 (ID: 11,
>> /home/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb,
>> do_package) Fri Jan 21 10:12:13 MST 2011: NOTE: package
>> linux-am-2.6.32-r0: task do_package: Started Fri Jan 21 10:12:13 MST
>> 2011: ERROR: Running perform_packagecopy Fri Jan 21 10:12:27 MST
>> 2011:
>> ERROR: Running package_do_split_locales Fri Jan 21 10:12:27 MST 2011:
>> ERROR: Running populate_packages Fri Jan 21 10:12:27 MST 2011:
>> WARNING: <string>:5: RuntimeWarning: tmpnam is a potential security
>> risk to your program Fri Jan 21 10:12:27 MST 2011:
>> Fri Jan 21 10:12:45 MST 2011: NOTE: package linux-am-2.6.32-r0: task
>> do_populate_sysroot: Succeeded Fri Jan 21 10:28:33 MST 2011: ERROR:
>> Running package_do_filedeps Fri Jan 21 10:34:16 MST 2011: ERROR:
>> Running package_do_shlibs Fri Jan 21 10:34:21 MST 2011: ERROR:
>> Running
>> package_do_pkgconfig Fri Jan 21 10:34:23 MST 2011: ERROR: Running
>> read_shlibdeps Fri Jan 21 10:34:23 MST 2011: ERROR: Running
>> package_depchains Fri Jan 21 10:34:23 MST 2011: ERROR: Running
>> emit_pkgdata Fri Jan 21 10:34:23 MST 2011: ERROR: Running
>> do_package_qa
>>
>> For the BeagleBoard:
>> Fri Jan 21 13:32:22 MST 2011: NOTE: Running task 878 of 882 (ID: 17,
>> /home/local/poky-amltd/meta/recipes-kernel/linux/linux-yocto-stable_git.=
bb,
>> do_package) Fri Jan 21 13:32:22 MST 2011: NOTE: package
>> linux-yocto-stable-2.6.34+git0+ed446ecd29e8c0f81ab8630a2db652121eeb0b75_=
0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1:
>> task do_package: Started Fri Jan 21 13:32:23 MST 2011: ERROR:
>> Running perform_packagecopy Fri
>> Jan 21 13:32:25 MST 2011: ERROR: Running package_do_split_locales Fri
>> Jan 21 13:32:26 MST 2011: ERROR: Running populate_packages Fri Jan 21
>> 13:32:27 MST 2011: WARNING: <string>:5: RuntimeWarning: tmpnam is a
>> potential security risk to your program Fri Jan 21 13:32:27 MST 2011:
>> Fri Jan 21 13:32:31 MST 2011: NOTE: package
>> linux-yocto-stable-2.6.34+git0+ed446ecd29e8c0f81ab8630a2db652121eeb0b7
>> 5_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1: task
>> do_populate_sysroot: Succeeded
>> Fri Jan 21 13:32:43 MST 2011: ERROR: Running package_do_filedeps Fri
>> Jan 21 13:35:52 MST 2011: ERROR: Running package_do_shlibs Fri Jan 21
>> 13:35:54 MST 2011: ERROR: Running package_do_pkgconfig Fri Jan 21
>> 13:35:54 MST 2011: ERROR: Running read_shlibdeps Fri Jan 21 13:35:55
>> MST 2011: ERROR: Running package_depchains Fri Jan 21 13:35:55 MST
>> 2011: ERROR: Running emit_pkgdata Fri Jan 21 13:35:55 MST 2011:
>> ERROR:
>> Running do_package_qa
>>
>> Interesting results. I'm going to run it again, with more messages in
>> the two time consuming steps - populate_packages &
>> package_do_filedeps
>>
>
> I've isolated it down to this section of code in 'populate_packages':
>
>       unshipped =3D []
>       for root, dirs, files in os.walk(dvar):
>               for f in files:
>                       path =3D os.path.join(root[len(dvar):], f)
>                       if ('.' + path) not in seen:
>                               unshipped.append(path)
>
>       if unshipped !=3D []:
>               bb.note("the following files were installed but not shipped=
 in any
>               package:") for f in unshipped:
>                       bb.note("  " + f)
>
> The difference comes from what's in that ".../package" tree.
> For my kernel:
>    $ find
>
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/package
> | wc 8567    8567 1098403
> For the OTS BeagleBoard kernel:
>    $ find
> /home/local/bb_poky/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-s=
table-2.6.34+git0+ed446ecd29e8c0f81ab8630a2db652121eeb0b75_0+35521a5a703167=
85a67aca1de1d39a7b84c49ccf-r1/package
>> wc
>       1598    1598  364151
>
> I measured this and in the 'for f in unshipped:' loop above, each
> iteration is taking ~125ms!  I have a hard time understanding why,
> but 8567*125ms =3D 1070.875sec =3D 17.847min!

Hi Richard and Gary,

Kevin and I spent some time investigating this logging issue, and finally w=
e found its cause.

The phenomenon is, if we write a task like:

testlog.bb:

python do_crazylog () {
        for i in range(500):
                bb.note("xdx: hello world.")
}
addtask crazylog

And run the command: "time bitbake testlog -c crazylog -f", it needs about =
68 seconds to print the 500 sentences, which is problematic.

I used "bitbake -P" to do some profiling for this task, and found most time=
 is costed by time.sleep(), and each time it will sleep 0.25 seconds.

Thu Jan 27 16:11:59 2011    profile.log

         922167 function calls (892080 primitive calls) in 69.882 CPU secon=
ds

   Ordered by: cumulative time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.012    0.012   69.887   69.887 /home/dongxiao/poky/bitbake/l=
ib/bb/ui/knotty.py:67(main)
     1391    0.005    0.000   69.829    0.050 /home/dongxiao/poky/bitbake/l=
ib/bb/server/none.py:95(waitEvent)
     1044    0.005    0.000   69.818    0.067 /home/dongxiao/poky/bitbake/l=
ib/bb/server/none.py:121(idle_commands)
      265   66.350    0.250   66.350    0.250 {time.sleep}
      780    0.001    0.000    2.143    0.003 /home/dongxiao/poky/bitbake/l=
ib/bb/cooker.py:156(runCommands)
      780    0.003    0.000    2.142    0.003 /home/dongxiao/poky/bitbake/l=
ib/bb/command.py:91(runAsyncCommand)
      780    0.002    0.000    1.935    0.002 /home/dongxiao/poky/bitbake/l=
ib/bb/cooker.py:738(updateCache)


I bisected the git log and found that the commit introduced this issue is a=
 merge from openembedded.

After this commit, the whole LogRecord object into eventQueue, which contai=
ns more information than only level and messages.

Commit: d3a45c7d41a88d79389fc40eb68816e4939fb6f9.

    Use logging in the knotty ui, and pass the log record across directly

    This kills firing of Msg* events in favor of just passing along LogReco=
rd
    objects.  These objects hold more than just level and message, but can =
also
    have exception information, so the UI can decide what to do with that.

    As an aside, when using the 'none' server, this results in the log mess=
ages in
    the server being displayed directly via the logging module and the UI's
    handler, rather than going through the server's event queue.  As a resu=
lt of
    doing it this way, we have to override the event handlers of the base l=
ogger
    when spawning a worker process, to ensure they log via events rather th=
an
    directly.


Based on our analysis of the current code, the main steps for logging is: (=
knotty ui and none server)

1) Each time when bitbake server fork off a task in execute(), it will crea=
te pipe between server and forked task.

2) Server will read the pipe to get "events", and then append it to the ser=
ver eventQueue. Each time it will read 1024 bytes.

3) The UI module (knotty in our case) will wait on getting the event from e=
ventQueue of "none" server, if there are events exist, it will handle the e=
vent. Otherwise, it will sleep 0.25 seconds and see there is any event.


Previsouly before the patch, we only put message and level information into=
 eventQueue, thus each time in read(), we can read a bunch of messages in a=
bove case (about 10 "xdx: hello world.").

However, after passing the whole object, 1024 bytes could only cover 1, 2 o=
r even zero LogRecord objects. Therefore the server is always "starve" to g=
et event from the pipe, and thus the eventQueue is empty in most cases, whi=
ch makes knotty ui sleep.

One of the straightforward idea is to change 1024 to be a bigger number, fo=
r example, 10240. See following patch.

diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index b9d89ec..196b957 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -1637,7 +1637,7 @@ class runQueuePipe():
     def read(self):
         start =3D len(self.queue)
         try:
-            self.queue =3D self.queue + self.input.read(1024)
+            self.queue =3D self.queue + self.input.read(10240)
         except (OSError, IOError):
             pass
         end =3D len(self.queue)

I retested the above case, and it can get a much better results:

After patch:
real    0m9.994s
user    0m3.410s
sys     0m0.390s

Before patch:
real    1m8.614s
user    0m3.460s
sys     0m0.320s

This is a bottle neck for those cases which have a loop of "bb.note", like =
Gary found in the package bbclass for kernel recipes.

But for normal "bb.note", it may not benefit a lot. So this logging issue m=
ay be not a key point to the current long building time.

But anyhow, I am scheduling a test for this patch to see whether it helps f=
or our common build result, like poky-image-minimal, etc.

Comments and thoughts on it?

Thanks,
Dongxiao


>
> I also found that later on, in 'do_filedeps()', some packages take an
> extraordinary amount of time.  Looking at a few:
> Sat Jan 22 09:17:55 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --provides
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-image
> Sat Jan 22 09:17:55 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --requires
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-image
> Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --provides
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-dev
> Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --requires
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-dev
> Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --provides
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-vmlinux
> Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --requires
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-vmlinux
> Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --provides
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-misc
> Sat Jan 22 09:20:36 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --requires
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-misc
> Sat Jan 22 09:23:28 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --provides
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-module-crc-itu-t
> Sat Jan 22 09:23:28 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --requires
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-module-crc-itu-t
> Sat Jan 22 09:23:28 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --provides
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-module-g-cdc
> Sat Jan 22 09:23:29 MST 2011: ERROR: do_filedeps:
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.=
sh
> --rpmdeps
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps
> --requires
> /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.=
6.32-r0/packages-split/kernel-module-g-cdc
>
> You'll see that most take a few seconds (at most), but the
> 'kernel-misc'
> package is taking 6 minutes by itself!  This particular sub-package
> seems to be completely different between the two kernels.
> Mine:
> -rwxrw-r-- 1 gthomas gthomas  8627800 Jan 22 09:25
> tmp/deploy/ipk/cobra3530p60/kernel-misc_2.6.32-r0_cobra3530p60.ipk
> OTS BeagleBoard:
> -rwxrw-r-- 1 gthomas gthomas    72014 Jan 22 10:12
> tmp/deploy/ipk/beagleboard/kernel-misc_2.6.34+git0+ed446ecd29e8c0f81ab863=
0a2db652121eeb0b75_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1_beagleboar=
d.ipk
>
> I think this boils down to the actual kernel recipe - mine (attached)
> is based on the older setup and includes "linux.inc" whereas the
> BeagleBoard was built using a newer recipe which includes
> "linux-yocto.inc"
> I tried just changing to use linux-yocto, but there seems to be much
> different and nothing seemed to build properly anymore.  Any comments
> on this would be appreciated.
>
> At least now I know where the time is being spent...


