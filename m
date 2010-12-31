Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87F9C4C80039
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 07:12:27 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so12453704iyb.35
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 05:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=noB5aV1HLIo3VqKJFTE1qszWJnEqRyAp+8IrtEA06u0=;
	b=aClhenZK1u+qGIIonnUty3o82Np4GEAQ8FgoqXE2pVc+4lNjugNtEo4p+Tuej09NY9
	QEbtwkgZTKsVZdF6gZtLCy55hxEAy1XP/c68B3DBwFxkdSlshNZ4PUtMWiQO5MNMGRvQ
	7iP3plTX+QKu/ujzSTMIBVIlrBjuc9ROI6Jok=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=ZkX3ic5O7qwXPz6UZn4tyXO06b3fNUOmA3Luw+rQedkM5Ho8NwltWlqg4lViszZKW+
	DEgW9uGIGIro3Ic7V15CSg42Qmy65+K0QRYgjTfZVh1NqrRTkO+KzzCyMjIbMIL1s30K
	fkkLSSdeR4khkpGZ3zbf5m9DOAEr+TSLtuXwU=
MIME-Version: 1.0
Received: by 10.231.207.73 with SMTP id fx9mr6713041ibb.137.1293801147006;
	Fri, 31 Dec 2010 05:12:27 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Fri, 31 Dec 2010 05:12:26 -0800 (PST)
In-Reply-To: <4D1D890E.1010205@linux.intel.com>
References: <cover.1293731824.git.dvhart@linux.intel.com>
	<a01f0a62cfa9dfd7d3c9809f9cb439100a9eb61d.1293731824.git.dvhart@linux.intel.com>
	<AANLkTi=HVSpVxnx9QbU++mRMMW=csPz13PyT+vVX28b7@mail.gmail.com>
	<4D1D07E7.7010000@linux.intel.com>
	<AANLkTi=Vb-Dp_FgSg45n2FjwbRYN7UfjQSgjGFadrn-s@mail.gmail.com>
	<4D1D890E.1010205@linux.intel.com>
Date: Fri, 31 Dec 2010 08:12:26 -0500
Message-ID: <AANLkTikUpBTaEYfawXL0BdZYKdn6M_PS+ELSgKfS5Og9@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] trace-cmd: fix cross-compilation
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
X-List-Received-Date: Fri, 31 Dec 2010 13:12:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 31, 2010 at 2:41 AM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> On 12/30/2010 10:08 PM, Bruce Ashfield wrote:
>>
>> On Thu, Dec 30, 2010 at 5:29 PM, Darren Hart<dvhart@linux.intel.com>
>> =A0wrote:
>>>
>>> On 12/30/2010 01:02 PM, Bruce Ashfield wrote:
>>>>
>>>> On Tue, Dec 28, 2010 at 8:17 PM, Darren Hart<dvhart@linux.intel.com>
>>>> =A0wrote:
>>>>>
>>>>> The trace-cmd Makefile forces certain variables, such as CC and AR.
>>>>> It was using the host gcc and loader, fix it to use the poky-built
>>>>> cross-compiler and linker.
>>>>>
>>>>> inherit pkgconfig to ensure we don't use the host pkg-config.
>>>>>
>>>>> Remove unecessary variables from the oemake commands, such as ARCH
>>>>> and LD which aren't used by the Makefile.
>>>>>
>>>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>>>> CC: Tom Zanussi<tom.zanussi@intel.com>
>>>>
>>>> I actually hacked up the original of this one .. ;)
>>>
>>> Right, sorry, forgot to check git blame on this one.
>>
>> Probably wouldn't have helped, in the recipe re-org it looks like my bla=
me
>> was dropped :)
>>
>>>
>>>>
>>>>
>>>>> ---
>>>>> =A0meta/recipes-kernel/trace-cmd/trace-cmd_git.bb | =A0 12 +++++-----=
--
>>>>> =A01 files changed, 5 insertions(+), 7 deletions(-)
>>>>>
>>>>> diff --git a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>>> b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>>> index e375afc..a7eca5f 100644
>>>>> --- a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>>> +++ b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>>> @@ -2,18 +2,16 @@ DESCRIPTION =3D "User interface to Ftrace"
>>>>> =A0LICENSE =3D "GPL"
>>>>> =A0LIC_FILES_CHKSUM =3D
>>>>> "file://COPYING;md5=3D751419260aa954499f7abaabaa882bbe"
>>>>>
>>>>> -PR =3D r1
>>>>> +PR =3D r2
>>>>> =A0PV =3D "1.0.4+git${SRCPV}"
>>>>>
>>>>> +inherit pkgconfig
>>>>> +
>>>>> =A0SRC_URI =3D
>>>>>
>>>>> "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;=
protocol=3Dgit"
>>>>> =A0S =3D "${WORKDIR}/git"
>>>>>
>>>>> -
>>>>> -do_compile() {
>>>>> - =A0 =A0 =A0 oe_runmake ARCH=3D"${ARCH}" CC=3D"${CC}" LD=3D"${LD}"
>>>>> prefix=3D${prefix}
>>>>> -}
>>>>> +EXTRA_OEMAKE =3D "'CC=3D${CC}' 'AR=3D${AR}' 'prefix=3D${prefix}'"
>>>>
>>>> So we've determined that we don't need ARCH anymore ? At one point
>>>> this did. Or is it coming from the pkgconfig inheritance now ?
>>>
>>> Good question. My understanding of setting these variables here was to
>>> override whatever the Makefile was using. This makefile doesn't use ARC=
H
>>> at
>>
>> They were initially imported from a non-bitbake build of the tool, so
>> there
>> very well could have been differences introduced simply by the history.
>> But
>> yes, they were passed to override the defaults of the trace-cmd Makefile
>> and prevent the defaults from being used.
>>
>> At one point, there were arch specific switches in the build to adapt to=
 a
>> different userspace on a per-arch basis. But those changes were circa
>> March 2010 and they never were picked up.
>>
>>> all. Am I missing something about how this is used?
>>
>> It doesn't look like it, I was more noticing that you dropped ARCH, and
>> was just looking to see if there were more details than just the commit
>> message.
>
> Nope, looks like trace-cmd's Makefile has just changed some.
>
> Are you OK with these patches then?

I am. Acked/Reviewed-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Bruce

>
> --
> Darren Hart
> Yocto Linux Kernel
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

