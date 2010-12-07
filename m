Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gx0-f169.google.com (mail-gx0-f169.google.com
	[209.85.161.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id B89114C80039
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 09:20:44 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk5 with SMTP id 5so18042gxk.28
	for <poky@yoctoproject.org>; Tue, 07 Dec 2010 07:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=jb3Q6lyq7DXr5TEkGB2gUPqPJQXPmu93bTeGYMK3stU=;
	b=fdryZ4PZUz0r9qcRoKtFdxJkEr7OBehU/REYcTYYsh0bSSj5amGUmZX9xhuK00FFWL
	z2oNcpt0b2hbKcrPZeaw/yqRMJUQMDkzW1mRe2VBGKD791JsbjjJLfRLFejCgs3+OEHD
	X7/V9OQRxkoFmc5DZHnfiT9pGtp0YRTxnSyYM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=KE7Vq7rcsnuT2RcD1HIo8iVt19pPkkfifwPurWOSJHazNBxDA3beW5A9AIML+t57Lr
	nYz15kCBr66rCiJxgwv7V3cT1HPh+++7zSUxev2DGfoOZrPHVW5u0UgRFoKILMhWVi3m
	p/A+92AwWJpeV8bkPOC2bRId7zhBWOJpjtAsI=
MIME-Version: 1.0
Received: by 10.231.37.197 with SMTP id y5mr2228116ibd.54.1291735243726; Tue,
	07 Dec 2010 07:20:43 -0800 (PST)
Received: by 10.231.207.5 with HTTP; Tue, 7 Dec 2010 07:20:43 -0800 (PST)
In-Reply-To: <4CFDAE16.3030703@linux.intel.com>
References: <4CFD6EFA.8050503@linux.intel.com> <4CFD8581.5080106@windriver.com>
	<4CFDAE16.3030703@linux.intel.com>
Date: Tue, 7 Dec 2010 10:20:43 -0500
Message-ID: <AANLkTik8z2AWBEzQeFrR91SJvanNpgQ9TbjV8O375wg-@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, poky@yoctoproject.org
Subject: Re: Proper recipe naming and PV definition
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
X-List-Received-Date: Tue, 07 Dec 2010 15:20:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 6, 2010 at 10:46 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 12/06/2010 04:53 PM, Bruce Ashfield wrote:
>>
>> On 10-12-06 6:17 PM, Darren Hart wrote:
>>>
>>> I'm having trouble determining what the best practice is for naming a
>>> linux kernel recipe.
>>>
>>> The meta-linaro layer contains a linux-linaro recipe, and eventually I'd
>>> like it to contain two. One for the stable kernel and one for the
>>> development kernel. These are currently 2.6.35 and 2.6.37 respectively.
>>> I currently have:
>>>
>>> linux-linaro-2.6.35_git.bb
>>> PV=2.6.35
>>>
>>> This results in directory names in the build tree like:
>>> linux-linaro-2.6.36_2.6.35 (or similar, with the version duplicated). As
>>> I understand it, the PV _must_ contain a standard Linux kernel version
>>> along the lines of 2.6.[0-9]+-* (and parsing fails without it).
>>>
>>> In order to both track the version and distinguish between stable and
>>> dev, would something like the following be appropriate? This also
>>> replaces _git with _KERNELVER (as proposed by Marcin).
>>>
>>> linux-linaro-stable_2.6.35.bb
>>> PV=2.6.35+git${SRCREV}
>>>
>>> linux-linaro-dev_2.6.37.bb
>>> PV=2.6.37+git${SRCREV}
>>
>> For me the _git is not negotiable. It is the indication of
>> the source of the package. One of the main points about building
>> from an upstream git source is that we can bump it via the
>> SRCREV and leave the recipe alone.
>>
>> I'm going to continue using this:
>>
>> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> You have SRCPV here - I believe you intended SRCREV - correct?
>

Nope. Have a look at the recipe on your disk .. SRCPV.

> If so, then your PV looks the same as mine above. The place where I replaced
> the _git was in the filename of the recipe. It still isn't clear to me what
> the _VERSION part of recipe-name_VERSION.bb is meant to indicate or how
> exactly it is used. It clearly isn't the exact and complete version of the
> source, that is what PE.PV is for, and PR identifies the recipe version (for
> lack of a better description).
>
> For linux-yocto, _git is not actually very descriptive, while
> linux-yocto_2.6.34 and linux-yocto_2.6.37 are (there are two git trees - so
> "_git" doesn't tell the user much about where the source comes from).
> Whether the backing sourcecode source is a tarball, a git tree, or something
> else entirely is, IMO, an implementation detail which is adequately
> described by the PV we have agreed on above. This is used in the directory
> name of the build and IIRC in the messages printed to the console and logs,
> so the package and it's source should remain clear.

Quite simply, I don't want to have to juggle these constantly. And having
no version in the recipe allows me to easily EOL kernel trees and we can
control the support cost. Hence why for now, I'm not putting versions in
those recipe names.

Cheers,

Bruce

>
> I do appreciate the value of -stable and -dev naming which don't have to
> change just because the underlying version changed - although I can see the
> argument that being forced to change when the version changes makes the
> change obvious to all users - which can be valuable.
>
> A few more iterations on this and I think we'll have something :-)
>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

