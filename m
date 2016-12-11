Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09C03E008CA; Sun, 11 Dec 2016 08:36:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7BCEE00563
	for <poky@yoctoproject.org>; Sun, 11 Dec 2016 08:36:29 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id p66so8213389pga.2
	for <poky@yoctoproject.org>; Sun, 11 Dec 2016 08:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=ZuJetgCucEmrAoPgt6ywlBXtGxgCgaSxe4QwLz7wi28=;
	b=M6pTUUL9gGjMrkNVO8zr+VQ4FNosn7s9QT3ps/rqwchA2p0zq1g49Hw9qOLLcGeft0
	nHRUbfGnmDkm1ueBKwHzeRE1pzVw/bsP7ILU4lAleNXifeo5GrnTonV/yTkGu54E3ra6
	x2vVv7SvUViapTqPvCLWJgnEqzvEujDLumoHB8VNXrMg4Vbu16hh/Fuzauyslv60oOiD
	2THJ9zGM0acM2N3jbJFvE9VUdGRqtOl+iDHVGUGHo6m4XkW2I04qatmzniwxbv5SCaED
	HKqou6PWudgOw+E0OhfjqX93AR040U4qNFjIxqXZXSJAsBGiSmvo6n3A3WpkXGswItCk
	VFBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ZuJetgCucEmrAoPgt6ywlBXtGxgCgaSxe4QwLz7wi28=;
	b=GkAFSTzhxhQAjXVPScXwHaa+aZMBsOAIUWZOQ9RrVDTjRhZO/0oBSK2h3DztRsX0o9
	WtoqHwI428vjwguNExLi2Gbn6HFPb7RgvXMuQVGof01FVKG47m0Sjv1dR60Vz4Wg6YnN
	VIEkLpkpSCupxzkRARYRDxxpHusPiHtlEkrop7qtQecRkKbB+kyPy+2jH+GU/XfaD5Ca
	lAsr9h0ZLlbW8T2Zy+4lr9MFBcdvzBGPaP7j2kFlLP1NHx/KBkHu1d56eRejqyYvw5dU
	uhS4bKxP9rQfDVgVnXnAvXnk2RWN4Fwp7JR37iBfmArCufffTcn7Wq+9sUEXlwn9vCyL
	AmPA==
X-Gm-Message-State: AKaTC01nLC7KLK1n3JPmRyciwmbnMw/EI7vDso+Kjf26ySkcoxxOsrARIapI50+4gT43OQ==
X-Received: by 10.84.138.3 with SMTP id 3mr58351702plo.108.1481474188734;
	Sun, 11 Dec 2016 08:36:28 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:9c6:15d3:23d9:f61d?
	([2601:202:4001:9ea0:9c6:15d3:23d9:f61d])
	by smtp.googlemail.com with ESMTPSA id
	k25sm70656204pfg.84.2016.12.11.08.36.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Dec 2016 08:36:28 -0800 (PST)
To: Panagiotis Tamtamis <tamtamis@gmail.com>
References: <CAJq++8RcxWck6eVnOsCmoZsVE5L3tCRAzwOcOCQvp1m1zayEPg@mail.gmail.com>
	<dd703aa9-54a8-1888-f162-d9c655029631@gmail.com>
	<CAJq++8TZ5OOZzohGp80TRbr2wRX3_ebt88TG2268TysifKV-iA@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <497c5402-da5c-66b2-fbe7-1d2ac419c2f3@gmail.com>
Date: Sun, 11 Dec 2016 08:36:27 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAJq++8TZ5OOZzohGp80TRbr2wRX3_ebt88TG2268TysifKV-iA@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: morty support for e500 (p1020, p2020)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 11 Dec 2016 16:36:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 12/07/2016 05:37 AM, Panagiotis Tamtamis wrote:
> Armin patch at master already exists.
> commit 8a81facc23fd54b095940372e05de2356579c97c

Got it. in my staging.
> 
> So it would be better to merge it from there, I guess.

Thanks,
Armin
> 
> Br,
> Tamis
> 
> 2016-12-06 21:17 GMT+02:00 akuster808 <akuster808@gmail.com>:
> 
>> On 12/6/16 12:41 AM, Panagiotis Tamtamis wrote:
>>> Morty branch does not compile clean for ppc e500.
>>> Problem is a missing break at bin utils.
>>>
>>> Patch:
>>> diff --git a/meta/recipes-devtools/binutils/binutils-2.27.inc
>>> b/meta/recipes-devtools/binutils/binutils-2.27.inc
>>> index fc81721..f5bdc90 100644
>>> --- a/meta/recipes-devtools/binutils/binutils-2.27.inc
>>> +++ b/meta/recipes-devtools/binutils/binutils-2.27.inc
>>> @@ -37,6 +37,7 @@ SRC_URI = "\
>>>       file://0015-binutils-mips-gas-pic-relax-linkonce.diff \
>>>
>>> file://0015-Refine-.cfi_sections-check-to-only-consider-compact-.patch \
>>>
>>> file://0016-Fix-seg-fault-in-ARM-linker-when-trying-to-parse-a-b.patch \
>>> +
>>> file://binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch \
>>>  "
>>>  S  = "${WORKDIR}/git"
>>>
>>> diff --git
>>> a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
>> 8941017bc0226b60ce306d5271df15820ce66a53.patch
>>> b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
>> 8941017bc0226b60ce306d5271df15820ce66a53.patch
>>> index e69de29..9759525 100644
>>> ---
>>> a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
>> 8941017bc0226b60ce306d5271df15820ce66a53.patch
>>> +++
>>> b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
>> 8941017bc0226b60ce306d5271df15820ce66a53.patch
>>> @@ -0,0 +1,26 @@
>>> +From: Alan Modra <amodra@gmail.com <mailto:amodra@gmail.com>>
>>> +Date: Tue, 30 Aug 2016 11:27:32 +0000 (+0930)
>>> +Subject: ppc apuinfo for spe parsed incorrectly
>>> +X-Git-Url:
>>> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;
>> a=commitdiff_plain;h=8941017bc0226b60ce306d5271df15820ce66a53
>>> +
>>> +ppc apuinfo for spe parsed incorrectly
>>> +
>>> +apuinfo saying SPE resulted in mach = bfd_mach_ppc_vle due to a
>>> +missing break.
>>> +
>>> +       PR 20531
>>> +       * elf32-ppc.c (_bfd_elf_ppc_set_arch): Add missing "break".
>>> +---
>>> +
>>> +diff --git a/bfd/elf32-ppc.c b/bfd/elf32-ppc.c
>>> +index 92299bc..1dd6d78 100644
>>> +--- a/bfd/elf32-ppc.c
>>> ++++ b/bfd/elf32-ppc.c
>>> +@@ -2246,6 +2246,7 @@ _bfd_elf_ppc_set_arch (bfd *abfd)
>>> +               case PPC_APUINFO_BRLOCK:
>>> +                 if (mach != bfd_mach_ppc_vle)
>>> +                   mach = bfd_mach_ppc_e500;
>>> ++                break;
>>> +
>>> +               case PPC_APUINFO_VLE:
>>> +                 mach = bfd_mach_ppc_vle;
>>>
>>>
>>>
>>> But should I push this change since NXP removed its support and conf
>>> files at meta-fsl-ppc for morty branch?
>>
>> Yes please send a patch. Please check master to make sure we don't need
>> the fix there too.
>>
>> - Armin
>>>
>>>
>>> Best regards,
>>> Tamis
>>>
>>> --
>>> Think simple!
>>>
>>>
>>
>>
> 
> 

