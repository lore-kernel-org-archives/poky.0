Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79B47E00595
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 10:14:29 -0800 (PST)
Received: by pbcc11 with SMTP id c11so1645059pbc.35
	for <poky@yoctoproject.org>; Wed, 01 Feb 2012 10:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=O0pj1mi7PHNvaeDMSFdk2Vys/f/mPus8dbe6lx79BK0=;
	b=k3VXD9sRUoGkkEwFayIspgMBCPZymlYYn0buH77UafOBEn/jln0vq9Odt5mDXmSigY
	qXnlBymMIIvhl91WaNIismylGC4BhfPxwVmV/ae++Hr5Eih/HAGbkGqW8gC1mHiBwFPg
	rcgQhUskGsjR7vvLtUTYFmmV364R/x3vYjrBc=
MIME-Version: 1.0
Received: by 10.68.224.105 with SMTP id rb9mr42553915pbc.75.1328120069125;
	Wed, 01 Feb 2012 10:14:29 -0800 (PST)
Received: by 10.143.7.11 with HTTP; Wed, 1 Feb 2012 10:14:28 -0800 (PST)
In-Reply-To: <CADkTA4MLgXCH5HGCDxUx+sfSdph5bnL19+p5+9Cn-cBdkQXeyA@mail.gmail.com>
References: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C00789E7@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Oeb78DP==N7MD98L5Pc7vWPt4ccsHiOVbhN7dyzNkZMw@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C0078A17@IRSMSX102.ger.corp.intel.com>
	<CADkTA4MLgXCH5HGCDxUx+sfSdph5bnL19+p5+9Cn-cBdkQXeyA@mail.gmail.com>
Date: Wed, 1 Feb 2012 13:14:28 -0500
Message-ID: <CADkTA4On0R0hoSdKLMcP_XmeRTAyj1qAvLgTJP1N=fZqViYrzA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Simple recipe for local kernel/git development
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
X-List-Received-Date: Wed, 01 Feb 2012 18:14:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 1, 2012 at 10:30 AM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Wed, Feb 1, 2012 at 10:22 AM, O'donoghue, Bryan
> <bryan.odonoghue@intel.com> wrote:
>>> Are you working from yocto master ?
>>
>> Yes.
>>
>> Our "poky" directory is from a fairly recent yocoto pull ~ 3 weeks
>>
>>> That being said, if you aren't using meta or aren't using existing BSP
>>> patches (and
>>> branches), then starting from a yocto kernel tree isn't strictly
>>> required. In fact, it
>>> probably confuses things.
>>
>> It confuses me !
>
> It's simple enough, fragments are really handy, as are getting the feature
> patches and isolation board changes.
>
> But if this isn't something maintained, or that is something more of a transient
> thing, then doing any extra setup can be a pain.
>
>>
>>>
>>> The tools can work with a korg tree, using a defconfig, etc. In a nice
>>> coincidence, I'm
>>> completing re-validation of the example korg recipe today.
>>
>> Yes - assume this is a korg snapshot (it basically is)
>>
>> All I need to do is to build the korg snapshot from a local git repo and apply a defconfig (it sounds simple when you type it like that)
>
> Easily supported. I'll follow up once my fetches have completed here
> and I see that the
> recipe builds properly.

Sorry for the slow reply, I got bogged down fixing a few things.

I confirmed that the sample recipe I mentioned still builds. Although
I do have some
tweaks to things that I'm preparing for master at the moment. But they are
cosmetic/streamlining changes, not fundamental issues.

The recipe I was referring to is here:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky-extras/tree/meta-kernel-dev/recipes-kernel/linux/linux-korg.bb

cloning poky-extras and looking in meta-kernel-dev will get you your own copy.

The recipe is intended to build kernel.org, or really any git
repository, plus a defconfig.

It creates some minimal infrastructure to work with the yocto tools,
and to create someplace
that work could be done, and then flipped into a formatted kernel
feature. But the branch that
is built is created automatically and directly off the point you
specify. Which in our case would
be master HEAD.

You'd need to tweak the kernel version, etc, but in the end it the
build system that consumes
and uses that, more than the kernel build itself.

Cheers,

Bruce



>
> Cheers,
>
> Bruce
>
>> -------------------------------------------------------------
>> Intel Ireland Limited (Branch)
>> Collinstown Industrial Park, Leixlip, County Kildare, Ireland
>> Registered Number: E902934
>>
>> This e-mail and any attachments may contain confidential material for
>> the sole use of the intended recipient(s). Any review or distribution
>> by others is strictly prohibited. If you are not the intended
>> recipient, please contact the sender and delete all copies.
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

