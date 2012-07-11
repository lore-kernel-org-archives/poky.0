Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88ED8E00343
	for <poky@yoctoproject.org>; Wed, 11 Jul 2012 08:08:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6BF87Va007529
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jul 2012 08:08:07 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.10) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 11 Jul 2012 08:08:08 -0700
Message-ID: <4FFD96D7.4050400@windriver.com>
Date: Wed, 11 Jul 2012 11:08:07 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1342017991.git.bruce.ashfield@windriver.com>
	<8eb56d8676650879a1551f532ace758bb0bf7939.1342017991.git.bruce.ashfield@windriver.com>
	<4FFD944F.3050903@intel.com> <4FFD9563.7020304@windriver.com>
In-Reply-To: <4FFD9563.7020304@windriver.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] linux-yocto-3.0/meta-yocto: perf script fixes
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
X-List-Received-Date: Wed, 11 Jul 2012 15:08:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-11 11:01 AM, Bruce Ashfield wrote:
> On 12-07-11 10:57 AM, Saul Wold wrote:
>> On 07/11/2012 07:49 AM, Bruce Ashfield wrote:
>>> Updating the yocto reference boards to have the perf scripting fixes
>>> from 3.2/3.4:
>>>
>>> cef17a1 perf: add sgidefs.h to for mips builds
>>> 3258da3 perf: change --root to --prefix for python install
>>> 1f9c25b perf: add 'libperl not found' warning
>>> f2b1bf1 perf: use pkg-config instead of python-config
>>> 568e05f perf tools: Add support to install perf python extension
>>> 7e47f81 Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
>>>
>>> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>> ---
>>> .../linux/linux-yocto-rt_3.0.bbappend | 6 +++---
>>> .../recipes-kernel/linux/linux-yocto_3.0.bbappend | 1 +
>>> 2 files changed, 4 insertions(+), 3 deletions(-)
>>>
>>> diff --git
>>> a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>>> b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>>> index fdd9f7d..274eb82 100644
>>> --- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>>> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>>> @@ -4,13 +4,13 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> COMPATIBLE_MACHINE_atom-pc = "atom-pc"
>>> KMACHINE_atom-pc = "atom-pc"
>>> KBRANCH_atom-pc = "yocto/standard/preempt-rt/base"
>>> -SRCREV_machine_pn-linux-yocto-rt_atom-pc =
>>> "e67428d9966eecec4c081993dc64ceb5c0e64643"
>>> +SRCREV_machine_pn-linux-yocto-rt_atom-pc =
>>> "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
>>>
>>> # mpc8315e-rdb support
>>> COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>>> KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
>>> KBRANCH_mpc8315e-rdb = "yocto/standard/preempt-rt/base"
>>> -SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb =
>>> "e67428d9966eecec4c081993dc64ceb5c0e64643"
>>> +SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb =
>>> "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
>>>
>>> # beagleboard support - 3.0 support has not yet been completed, build
>>> failure
>>> #COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>>> @@ -22,4 +22,4 @@ SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb =
>>> "e67428d9966eecec4c081993dc64ceb
>>> COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>>> KMACHINE_routerstationpro = "routerstationpro"
>>> KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
>>> -SRCREV_machine_pn-linux-yocto-rt_routerstationpro =
>>> "94b9545c58bf4dee8321b800b90958d10875fda8"
>>> +SRCREV_machine_pn-linux-yocto-rt_routerstationpro =
>>> "634ba79510753eecd27a39a315f690f1c9d46efe"
>>> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
>>> b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
>>> index 6de9def..fc1a7df 100644
>>> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
>>> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
>>> @@ -8,6 +8,7 @@ SRCREV_machine_routerstationpro ?=
>>> "af74f58ef6ffdc68cc77d314ad31bd6a322309d3"
>>> SRCREV_machine_mpc8315e-rdb ?=
>>> "0c781e306559d5e9816e202a60aa2543f4eea39e"
>>> SRCREV_machine_beagleboard ?= "567c989c90ce5f2c62f6ef788be763150b65a0fb"
>>>
>>> +
>>> COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>>> COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>>> COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>>>
>> I see changes for atom-pc, mpc, and routerstation, but not the
>> beagleboard, does it not need the change also?
>
>
> Not for -rt at least. I thought we disabled this for ARM. give me
> a minute to double check .... it's easy enough to be safe, I'll
> update them all regardless.

block update done, just to be sure:

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend 
b/meta-yocto/recipes-kernel/linux/l
index 6de9def..00eb4a2 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = 
"yocto/standard/routerstationpro"
  KBRANCH_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
  KBRANCH_beagleboard = "yocto/standard/beagleboard"

-SRCREV_machine_atom-pc ?= "45d64709c00fce6e9b76a638c4ca6f30a8e9d25a"
-SRCREV_machine_routerstationpro ?= 
"af74f58ef6ffdc68cc77d314ad31bd6a322309d3"
-SRCREV_machine_mpc8315e-rdb ?= "0c781e306559d5e9816e202a60aa2543f4eea39e"
-SRCREV_machine_beagleboard ?= "567c989c90ce5f2c62f6ef788be763150b65a0fb"
+SRCREV_machine_atom-pc ?= "834c2a69c87ee7211932f8ec5102a472828abcb1"
+SRCREV_machine_routerstationpro ?= 
"1c17c082b6ee565acc176cde5be835ac4269817b"
+SRCREV_machine_mpc8315e-rdb ?= "f2312437b52dda4499310aacb4c561ba8b8cbeb7"
+SRCREV_machine_beagleboard ?= "3ab688a78cac7b2e32afc83376a53370f2bd13b7"

It's on the branch, same commit message.

Cheers,

Bruce

>
> Cheers,
>
> Bruce
>
>>
>> Sau!
>>
>>
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


