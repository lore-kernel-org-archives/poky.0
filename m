Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEC174C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 12:17:48 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so680352iyb.35
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 10:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=7/caYbaexltYRrmhe7dYAbbvaVjTYnu/LeogLTF40Qk=;
	b=sQmyBtJUCNP+qV4z3Bjz1OTpORHisMgRrE180DxwmUPBfjJBiPlN0b78Lt89zbO1FW
	ZbpH/24TFlVncvT3d2w8BtHBZTNpcEsF5jP4c1uOvC5lzU7cj25xlq4O0iZbQ55R1RWW
	UFY/J6nvs8L9jTf8DRKzEIBSW9494EJeIdJZQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=hCMNX1pgfsMkDjXp2zQ5EFA4iGmieTYoxPeJmgJ/nggB1HTKo/tCX0/WP1rGAtSW1J
	bIrBgUU+mpqrbiS7a24M+E2rAvfKtYZ6ulwclhZ1aMzPoT6SmvpTdrpY+dO32kk2Q0PE
	sY1Ub0zhc+eB78wz1DBkN9L+BScGLno3yF0kw=
MIME-Version: 1.0
Received: by 10.231.190.139 with SMTP id di11mr1127873ibb.21.1292609868382;
	Fri, 17 Dec 2010 10:17:48 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Fri, 17 Dec 2010 10:17:48 -0800 (PST)
In-Reply-To: <4D0B8D17.9020805@linux.intel.com>
References: <4D0AA615.7050505@linux.intel.com>
	<AANLkTi=Ydq_ttWB6=P8F9wCx06Q6zWMzCuT4FwvdmWL7@mail.gmail.com>
	<4D0B8D17.9020805@linux.intel.com>
Date: Fri, 17 Dec 2010 13:17:48 -0500
Message-ID: <AANLkTinOo8=C76Ej8iPFe0Z+ZYAr2GA61PeYb9kZMbHQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: kernel SRCREV and meta series woes re new preempt_rt recipe
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
X-List-Received-Date: Fri, 17 Dec 2010 18:17:49 -0000
X-Groupsio-MsgNum: 1428
Content-Type: multipart/mixed; boundary=0016367b6c8409c10104979f3041

--0016367b6c8409c10104979f3041
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 17, 2010 at 11:17 AM, Darren Hart <dvhart@linux.intel.com> wrot=
e:
> On 12/17/2010 05:53 AM, Bruce Ashfield wrote:
>>
>> On Thu, Dec 16, 2010 at 6:51 PM, Darren Hart<dvhart@linux.intel.com>
>> =A0wrote:
>>>
>>> Hey Bruce,
>>>
>>> (lots of logs, explanation all through to the end)
>>>
>>> I'm running into a couple issues I haven't been able to explain.
>>> I'm building from poky-contrib dvhart/rt which I rebased against
>>> zedd/kernel today (646be7efc3c2a966607526439e3ad812cb4ae3f8). My
>>> local.conf has 'MACHINE?=3Dqemux86-64'.
>>
>> This repo is missing a paired up kernel repo modification, but it should
>> be sane.
>>
>>>
>>> You can see the linux-yocto-rt recipe in my contrib branch mentioned
>>> above, but for quick reference, here's the diff from linux-yocto-stable=
:
>>
>> one demerit point fine for a non-unified diff ;)
>
> Heh, in this case I thought the simple diff did a better job highlighting
> the only significant change was:

I just never read non-unified diffs anymore, so my brain shuts off :)

>
> LINUX_KERNEL_TYPE =3D "preempt_rt"
>
>>
>>>
>>> =A0 =A0 =A0 =A0$ diff linux-yocto-stable_git.bb linux-yocto-rt_stablegi=
t.bb
>>> =A0 =A0 =A0 =A014a15
>>> =A0 =A0 =A0 =A0> =A0LINUX_KERNEL_TYPE =3D "preempt_rt"
>>> =A0 =A0 =A0 =A021c22
>>> =A0 =A0 =A0 =A0< =A0COMPATIBLE_MACHINE =3D
>>> "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|=
mpc8315e-rdb|beagleboard)"
>>> =A0 =A0 =A0 =A0---
>>> =A0 =A0 =A0 =A0> =A0COMPATIBLE_MACHINE =3D "(qemux86-64)"
>>> =A0 =A0 =A0 =A032a34
>>> =A0 =A0 =A0 =A0> =A0 =A0 =A0 print "LINUX_KERNEL_TYPE_EXTENSION: ",
>>> bb.data.getVar("LINUX_KERNEL_TYPE_EXTENSION", d)
>>> =A0 =A0 =A0 =A037a40,41
>>> =A0 =A0 =A0 =A0> =A0#SRCREV_machine_pn-linux-yocto-rt_qemux86-64 =3D
>>> "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>>> =A0 =A0 =A0 =A0> =A0#SRCREV =3D "f49444f06875894389e640bcda6c3f6ceb1f0c=
3e"
>>>
>>> I determined the SRCREV from:
>>> =A0 =A0 =A0 =A0$ git log --pretty=3Doneline origin/common_pc_64-preempt=
_rt -1
>>> =A0 =A0 =A0 =A0f49444f06875894389e640bcda6c3f6ceb1f0c3e Merge branch 's=
tandard'
>>> into common_pc_
>>>
>>
>> That should be the right rev.
>>
>
> Richard,
>
> Any thoughts on this first error - from here down to Bruce's comment?

I've just finished building a preempt_rt kernel using the -stable kernel an=
d
your recipes. One line fix, that was completely non-obvious. I had to dig
down through the various fetchers after finally getting stack trace that le=
ad
me to the missing variable. It is sort of obvious, now that I found and fix=
ed
it :)

Attached is what allowed me to build:

NOTE: package linux-yocto-rt-2.6.34+git0+50ccd2b3213b6a1bacb3f898c035119802=
dac420_0+f49444f06875894389e640bcda6c3f6ceb1f0c3e-r0:
task do_package_write_rpm: Succeeded
NOTE: Noexec task 805 of 806 (ID: 16,
/home/bruce/poky/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb,
do_package_write)
NOTE: Noexec task 806 of 806 (ID: 6,
/home/bruce/poky/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb,
do_build)
NOTE: Tasks Summary: Attempted 806 tasks of which 785 didn't need to
be rerun and 0 failed.

YMMV

Bruce

>
>
>>> First, bitbake is complaining about SRCREV while parsing
>>> linux-yocto-rt_stablegit.bb:
>>>
>>> =A0 =A0 =A0 =A0$ bitbake linux-yocto-rt
>>> =A0 =A0 =A0 =A0NOTE: Handling BitBake files: | (0236/0803) [29 %]
>>> =A0 =A0 =A0 =A0LINUX_KERNEL_TYPE_EXTENSION: =A0preempt-rt # dvhart debu=
g
>>> =A0 =A0 =A0 =A0NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV =
to a valid
>>> value while evaluating:
>>> =A0 =A0 =A0 =A0${@bb.fetch.get_srcrev(d)}
>>> =A0 =A0 =A0 =A0NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV =
to a valid
>>> value while evaluating:
>>> =A0 =A0 =A0 =A0${LINUX_VERSION}+git${SRCPV}
>>> =A0 =A0 =A0 =A0NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV =
to a valid
>>> value while evaluating:
>>> =A0 =A0 =A0 =A0${PN}-${EXTENDPE}${PV}-${PR}
>>> =A0 =A0 =A0 =A0NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV =
to a valid
>>> value while evaluating:
>>> =A0 =A0 =A0 =A0${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
>>> =A0 =A0 =A0 =A0NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV =
to a valid
>>> value while evaluating:
>>> =A0 =A0 =A0 =A0${WORKDIR}/linux
>>> =A0 =A0 =A0 =A0NOTE:<class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV =
to a valid
>>> value while evaluating:
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cd ${S}
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -f ${WORKDIR}/defconfig ]; then
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0defconfig=3D${WORKDIR}/defconfig
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>>>
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kbranch=3D${KBRANCH}
>>>
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0# simply ensures that a branch of the ri=
ght name has been
>>> created
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0createme ${ARCH} ${kbranch} ${defconfig}
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ $? -ne 0 ]; then
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "ERROR. Could not c=
reate ${kbranch}"
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>>>
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0# updates or generates the target descri=
ption
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -n "${KERNEL_FEATURES}" ]; then
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 addon_features=3D"--feature=
s ${KERNEL_FEATURES}"
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0updateme ${addon_features} ${ARCH} ${WOR=
KDIR}
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ $? -ne 0 ]; then
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "ERROR. Could not u=
pdate ${kbranch}"
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>>>
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0# executes and modifies the source tree =
as required
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0patchme ${kbranch}
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ $? -ne 0 ]; then
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "ERROR. Could not m=
odify ${kbranch}"
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>>>
>>> =A0 =A0 =A0 =A0NOTE: Error expanding variable do_patch
>>> =A0 =A0 =A0 =A0ERROR: Please set SRCREV to a valid value while parsing
>>> /home/dvhart/data/poky.git/meta/recipes-kernel/linux/linux-yocto-rt_sta=
blegit.bb
>>> =A0 =A0 =A0 =A0NOTE: Handling BitBake files: - (0802/0803) [99 %]Comman=
d
>>> execution failed: Traceback (most recent call last):
>>> =A0 =A0 =A0 =A0 =A0File
>>> "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/command.py", line 85=
, in
>>> runAsyncCommand
>>> =A0 =A0 =A0 =A0 =A0 =A0self.cooker.updateCache()
>>> =A0 =A0 =A0 =A0 =A0File
>>> "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/cooker.py", line 804=
, in
>>> updateCache
>>> =A0 =A0 =A0 =A0 =A0 =A0if not self.parser.parse_next():
>>> =A0 =A0 =A0 =A0 =A0File
>>> "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/cooker.py", line 103=
6, in
>>> parse_next
>>> =A0 =A0 =A0 =A0 =A0 =A0raise ParsingErrorsFound
>>> =A0 =A0 =A0 =A0ParsingErrorsFound
>>>
>>
>>> I have added a SRC_REV in poky-default-revisions:
>>> =A0 =A0 =A0 =A0+# preempt_rt SRCREVs
>>> =A0 =A0 =A0 =A0+SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?=3D
>>> "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>>
>> I've seen this man times, and typically it has always had to do with
>> processing order of the files related to the fetcher. I'm hoping
>> Richard reads this and can jump in with more details, since this is
>> something internal to BB and not something I've had the pleasure
>> of adding or digging into very much.
>>
>>>
>>>
>>> If I add the following to linux-yocto-rt_stablegit.bb:
>>> =A0 =A0 =A0 =A0SRCREV =3D "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>>
>> This hits it with a hammer .. yes. Because you set this, we aren't
>> counting on the machine specific override of SRCREV to set the
>> variable. =A0So this ensures that the variable has *something*, just
>> not something that the fetcher will use properly.
>
>
> But will it send the proper information to the kernel tools? I understand
> something needs to get fixed in bitbake or the linux-yocto recipe
> components, but does this short-cut that to allow us to examine the
> kernel-tools issues?
>
>
>>>
>>>
>>> I get passed the parse error, but do_patch fails:
>>>
>>> =A0 =A0 =A0 =A0Unstaged changes after reset:
>>> =A0 =A0 =A0 =A0M =A0 =A0 =A0 .gitignore
>>> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/DocBook/kgdb.tmpl
>
> <snip>
>
>>> =A0 =A0 =A0 =A0Aborting
>>> =A0 =A0 =A0 =A0warning: could not find ktypes/temp.scc
>>> =A0 =A0 =A0 =A0./0-wrs_meta-temp-33ebe31bfbabe8a7793524c85ea65707.sco: =
line 14:
>>> temp_68b329da9893e34099c7d8ad5cb9c940: command not found
>>> =A0 =A0 =A0 =A0ERROR. Could not locate meta series for common_pc_64-pre=
empt_rt
>>> =A0 =A0 =A0 =A0ERROR: Task failed: ('function do_patch failed',
>>> '/vol/1/dvhart/poky.git/build/tmp/work/qemux86-64-poky-linux/linux-yoct=
o-rt-2.6.34+git1+f49444f06875894389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894=
389e640bcda6c3f6ceb1f0c3e-r0/temp/log.do_patch.30710')
>>
>>
>> This means you built a random temporary board and when the branch
>> validation steps kicked in, they declared that patches were not present,
>> and tried to re-push changes (which were really there) and hence caused
>> your failure.
>>
>> It implies that your tools weren't up to date to me. Since I made change=
s
>> to allow it to locate the proper meta series adapting for the _ vs -
>> in the name.
>
> I thought we left the _ in the kernel repository and only munged it to - =
in
> the bitbake string. The log mentions "common_pc_64-preempt_rt" which I to=
ok
> to mean it was looking for the right thing. Is this not the case?
>
>>
>> I'll check the SRCREV I pushed for the tools and see if it is out of dat=
e.
>>
>>>
>>>
>>> I look at look at the linux directory:
>>> =A0 =A0 =A0 =A0$ cd
>>> tmp/work/qemux86-64-poky-linux/linux-yocto-rt-2.6.34+git1+f49444f068758=
94389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894389e640bcda6c3f6ceb1f0c3e-r0/l=
inux/
>>> =A0 =A0 =A0 =A0$ git branch
>>> =A0 =A0 =A0 =A0 =A0arm_versatile_926ejs-standard
>>> =A0 =A0 =A0 =A0 =A0atom-pc-standard
>>> =A0 =A0 =A0 =A0 =A0beagleboard-standard
>>> =A0 =A0 =A0 =A0 =A0blacksand-standard
>>> =A0 =A0 =A0 =A0 =A0common_pc-preempt_rt
>>> =A0 =A0 =A0 =A0 =A0common_pc-standard
>>> =A0 =A0 =A0 =A0 =A0common_pc_64-preempt_rt
>>> =A0 =A0 =A0 =A0 =A0common_pc_64-standard
>>> =A0 =A0 =A0 =A0 =A0crownbay-standard
>>> =A0 =A0 =A0 =A0 =A0davinci-consolidated-2.6.34-merge
>>> =A0 =A0 =A0 =A0 =A0emenlow-standard
>>> =A0 =A0 =A0 =A0 =A0fsl-mpc8315e-rdb-standard
>>> =A0 =A0 =A0 =A0 =A0kgdb-2.6.34-base-merge
>>> =A0 =A0 =A0 =A0 =A0master
>>> =A0 =A0 =A0 =A0 =A0mti_malta32_be-standard
>>> =A0 =A0 =A0 =A0 =A0mti_malta32_le-standard
>>> =A0 =A0 =A0 =A0 =A0omap-base-merge
>>> =A0 =A0 =A0 =A0 =A0preempt_rt
>>> =A0 =A0 =A0 =A0 =A0qemu_ppc32-standard
>>> =A0 =A0 =A0 =A0 =A0routerstationpro-standard
>>> =A0 =A0 =A0 =A0 =A0rt-2.6.34-base-merge
>>> =A0 =A0 =A0 =A0 =A0standard
>>> =A0 =A0 =A0 =A0 =A0wrs_base
>>> =A0 =A0 =A0 =A0 =A0wrs_meta
>>> =A0 =A0 =A0 =A0 =A0wrs_meta-orig
>>> =A0 =A0 =A0 =A0* wrs_meta-temp
>>>
>>> This suggests to me that I'm not hitting the previous
>>> no-local-branches-after-clone issues, and that "common_pc-preempt_rt"
>>> does indeed exist. A quick review of the linux-2.6-wrs.git wrs_meta
>>> branch wrs directory suggests all the preempt-rt meta data exists and
>>> matches the expected naming.
>>>
>>> =A0 =A0 =A0 =A0$ find wrs -name "*preempt_rt*"
>>> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/bsp/common_pc/common_pc-preempt_rt.=
scc
>>> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/bsp/common_pc_64/common_pc_64-preem=
pt_rt.scc
>>> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/ktypes/preempt_rt
>>> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.cfg
>>> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.scc
>>> =A0 =A0 =A0 =A0wrs/cfg/meta/common_pc-preempt_rt-meta
>>> =A0 =A0 =A0 =A0wrs/cfg/meta/common_pc_64-preempt_rt-meta
>>> =A0 =A0 =A0 =A0wrs/patches/common_pc_64-preempt_rt
>>> =A0 =A0 =A0 =A0wrs/patches/preempt_rt
>>> =A0 =A0 =A0 =A0wrs/patches/common_pc-preempt_rt
>>>
>>>
>>> Any thoughts on what might be going wrong?
>>
>> Just the tools :) Since I just built the same thing here and it worked.
>> I'll
>> grab your recipe and have a look at the SRCREV and hopefully send a
>> consolidated series ASAP.
>
> dvhart@doubt:wr-kernel-tools.git$ git log --pretty=3Doneline -1
> 796d7fef92b2eed449c17c14441587ff0c465368 configme: check alternate
> meta-series
>
> $ grep kern-tools
> ../../../meta/conf/distro/include/poky-default-revisions.inc
> SRCREV_pn-kern-tools-native ??=3D "796d7fef92b2eed449c17c14441587ff0c4653=
68"
>
> They appear to be in agreement, and that SRCREV is for the META_ALT patch=
 -
> but it wasn't obvious to me if that was the one to account for -_ manglin=
g.
>
> --
> Darren Hart
> Yocto Linux Kernel
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

--0016367b6c8409c10104979f3041
Content-Type: text/x-patch; charset=US-ASCII; name="rt-fix.patch"
Content-Disposition: attachment; filename="rt-fix.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ghtejaba0

ZGlmZiAtLWdpdCBhL21ldGEvY29uZi9kaXN0cm8vaW5jbHVkZS9wb2t5LWRlZmF1bHQtcmV2aXNp
b25zLmluYyBiL21ldGEvY29uZi9kaXN0cm8vaW5jbHVkZS9wb2t5LWRlZmF1bHQtcmV2aXNpb25z
LmluYwppbmRleCA4Y2FhNDVjLi5mOWJhOTY5IDEwMDY0NAotLS0gYS9tZXRhL2NvbmYvZGlzdHJv
L2luY2x1ZGUvcG9reS1kZWZhdWx0LXJldmlzaW9ucy5pbmMKKysrIGIvbWV0YS9jb25mL2Rpc3Ry
by9pbmNsdWRlL3Bva3ktZGVmYXVsdC1yZXZpc2lvbnMuaW5jCkBAIC05Nyw2ICs5Nyw4IEBAIFNS
Q1JFVl9tYWNoaW5lX3BuLWxpbnV4LXlvY3RvLXN0YWJsZV9iZWFnbGVib2FyZCA/PSAiMDQzMTEx
NWM5ZDcyMGZlZTViYjEwNWY2YTc0CiBTUkNSRVZfbWV0YV9wbi1saW51eC15b2N0by1zdGFibGUg
Pz0gIjUwY2NkMmIzMjEzYjZhMWJhY2IzZjg5OGMwMzUxMTk4MDJkYWM0MjAiCiAjIHByZWVtcHRf
cnQgU1JDUkVWcwogU1JDUkVWX21hY2hpbmVfcG4tbGludXgteW9jdG8tcnRfcWVtdXg4Ni02NCA/
PSAiZjQ5NDQ0ZjA2ODc1ODk0Mzg5ZTY0MGJjZGE2YzNmNmNlYjFmMGMzZSIKK1NSQ1JFVl9tZXRh
X3BuLWxpbnV4LXlvY3RvLXJ0ID89ICI1MGNjZDJiMzIxM2I2YTFiYWNiM2Y4OThjMDM1MTE5ODAy
ZGFjNDIwIgorCiAjIGRldmVsb3BtZW50IFNSQ1JFVnMKIFNSQ1JFVl9tYWNoaW5lX3BuLWxpbnV4
LXlvY3RvX3FlbXVhcm0gPSAiODdlMDBhMmQ0N2JhODBiNGFkMWY5MTcwY2IzZjZjZjgxZjIxZDcz
OSIKIFNSQ1JFVl9tYWNoaW5lX3BuLWxpbnV4LXlvY3RvX3FlbXVtaXBzID0gIjcyMzFlNDczZGQ5
ODFhMjhlM2NlYTlmNjc3ZWQ2MDU4M2U3MzE1NTAiCg==

--0016367b6c8409c10104979f3041--
