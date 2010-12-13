Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f182.google.com (mail-iw0-f182.google.com
	[209.85.214.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4175C4C810D2;
	Mon, 13 Dec 2010 00:19:21 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn39 with SMTP id 39so11590247iwn.13
	for <multiple recipients>; Sun, 12 Dec 2010 22:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=4HFRDzVoiWhRABladbPqzN1Kgl1yM2eQoMgH0zx8tpY=;
	b=pS0bP19lzbIpSek8SisZ/PsQyg0cHgTFZ68j1FwW04MPo+VLCyImXooMrPK2EqdFnJ
	2tXXEMQ+4z7cjYtrd8bQ0DP6hhlNuaj9WkM+HumFAbjqHUMzCpsM4byVCaAiEJ5g7jjZ
	IjL/nz7Z8ITjQlL/UlridzU8bDpAnJjW+9FB0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=gkHqSQLSACc8kal0zWUn1IQmEktjOitB4nc39HiSCQ6WnPMj+fkHVq4eqPGlmLIpFo
	petbQEOu0UfKjgg4A6ab3e7daRoLfVI9pk0MDjQeGYA0Z7i+zyoAYsd6nitkKCA8ViGy
	ptZL+uvJk/ITa5JsqGqYG242LEKvwk1m5tbR8=
MIME-Version: 1.0
Received: by 10.231.33.129 with SMTP id h1mr1329850ibd.129.1292221160843; Sun,
	12 Dec 2010 22:19:20 -0800 (PST)
Received: by 10.231.207.1 with HTTP; Sun, 12 Dec 2010 22:19:20 -0800 (PST)
In-Reply-To: <4D05A9B5.9060408@windriver.com>
References: <4D03D481.4050104@linux.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A317D6F75@shsmsx501.ccr.corp.intel.com>
	<AANLkTimmRm=o9L=L=TuQ58Pd4or4eeNZtOWr=Hq6Un_y@mail.gmail.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A317D70F3@shsmsx501.ccr.corp.intel.com>
	<4D05A9B5.9060408@windriver.com>
Date: Mon, 13 Dec 2010 01:19:20 -0500
Message-ID: <AANLkTimFfkPTAyj4u0AtkOFth+wQSMvx-yF+4TZZwasi@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Milestone 2 Stabilization Branch Created (Resend)
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
X-List-Received-Date: Mon, 13 Dec 2010 06:19:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 13, 2010 at 12:05 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 10-12-13 12:03 AM, Xu, Jiajun wrote:
>>>
>>> On Sun, Dec 12, 2010 at 9:10 PM, Xu, Jiajun<jiajun.xu@intel.com> =A0wro=
te:
>>>>>
>>>>> [Resend with correct mailing lists]
>>>>>
>>>>>
>>>>> Yocto / Poky Folks:
>>>>>
>>>>> Thanks to everyone's hard work, we are currently on working getting
>>>>> the first build of M2 started and available for QA testing on Monday.
>>>>>
>>>>> I have pushed out the lastest commit that was pending in the
>>>>> distro/master area to both master and create a builds/milestone
>>>>> branch which is where bug fixes for M2 will go.
>>>>>
>>>>> There is currently an issue with the PPC Kernel build on this branch
>>>>> and that is being worked, this may impact getting a PPC build
>>>>> available by Monday.
>>>>>
>>>>> For the next week as we stabilize M2, please ensure that any patch
>>>>> or pull requests indicate that this is for M2 or not. =A0By default
>>>>> all commits will go to master regardless.
>>>>>
>>>>
>>>> Hi Saul,
>>>> Nightly build is near finished now. PPC and some non-x86 real
>>>> hardware
>>>
>>> target building failed. I begin downloading them now and will start QA
>>> testing.
>>>
>>> Is there somewhere I can check a log of the build errors ? We flipped
>>> in the
>>> 2.6.37 kernel and associated tools, but the any hardware targets
>>> should still be building 2.6.34 and be unaffected.
>>>
>>> If it isn't a kernel that failed to build .. then I'm less help :)
>>>
>>
>> For beagleboard,
>> http://autobuilder.pokylinux.org:8010/builders/nightly-release/builds/14=
6/steps/shell_46/logs/stdio/text.
>> For mpc8315e-rdb,
>> http://autobuilder.pokylinux.org:8010/builders/nightly-release/builds/14=
6/steps/shell_49/logs/stdio/text.
>
> Both those boards are building random kernels .. one is building
> the omap-pm (which is broken) and the other built linux-dummy.
>
> So something went wrong with the merge of the new kernel, and could
> be related to the board compatibility .. I'll have a look.

I made some changes (patch will be out shortly), they fix the emenlow, and
I can easily build the fsl and beagleboard out of the box with the changes
in place. Looks like a couple of boards were dropped from the stable
kernel recipe in all the chaos.

Bruce

>
> Bruce
>
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>>> Thanks
>>>>> =A0 =A0 =A0Sau!
>>>>> Saul Wold
>>>>> Yocto Component Wrangler @ Intel
>>>>> Yocto Project / Poky Build System
>>>>>
>>>>> _______________________________________________
>>>>> poky mailing list
>>>>> poky@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/poky
>>>>
>>>> Best Regards,
>>>> Jiajun
>>>>
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>>>
>>>
>>>
>>>
>>
>> Best Regards,
>> Jiajun
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

