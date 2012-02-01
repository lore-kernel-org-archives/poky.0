Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A306FE00594
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 07:18:03 -0800 (PST)
Received: by dadv6 with SMTP id v6so986762dad.28
	for <poky@yoctoproject.org>; Wed, 01 Feb 2012 07:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TeDn3yFBwxkeoBZqo+bgozAjiFqZiqYpy2WkLit4PN0=;
	b=OoqKdPOemkM4M1lNlTCfOmyeH7s33Glntq8a/Nuyl5tYP5Rob5fur/1J0IUisuxbs7
	CBTjwmMbOCKR3OnVPI3u3x3NcNepKM1NazLJs0AhYhwVqNSJSTzJFnzyH/5W/+W7x0I1
	GoY3/UTJXQpPY5mF7A8AO8TUhVW/gPHC5i8eA=
MIME-Version: 1.0
Received: by 10.68.83.105 with SMTP id p9mr61002951pby.92.1328109482517; Wed,
	01 Feb 2012 07:18:02 -0800 (PST)
Received: by 10.143.7.11 with HTTP; Wed, 1 Feb 2012 07:18:02 -0800 (PST)
In-Reply-To: <B80010913FB1F346A630B7F2E18A60C00789E7@IRSMSX102.ger.corp.intel.com>
References: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C00789E7@IRSMSX102.ger.corp.intel.com>
Date: Wed, 1 Feb 2012 10:18:02 -0500
Message-ID: <CADkTA4Oeb78DP==N7MD98L5Pc7vWPt4ccsHiOVbhN7dyzNkZMw@mail.gmail.com>
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
X-List-Received-Date: Wed, 01 Feb 2012 15:18:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 1, 2012 at 10:09 AM, O'donoghue, Bryan
<bryan.odonoghue@intel.com> wrote:
>>
>> There's no requirement of a meta branch if the repository isn't a full
>> yocto repository, and I have several more enhancements in this area
>> that
>> will be part of M3.
>>
>> So the question that I have is .. what is your local kernel repository
>> that
>> you are working with ?
>>
>> Cheers,
>>
>> Bruce
>
> Hi Bruce.
>
> I've taken a git clone of linux-yocto-dev the current kernel on yoctoproject.org
>
> All I really want to do in simple terms is to have that local git repository
>
> a. Be the kernel
> b. Be configured by one defconfig (not a bunch of fragments)
>
> If you have a bitbake recipe that accomplishes this it'd be highly useful to me !

There are several. Since you are starting from a yocto base, the meta
branch really
shouldn't be a problem for you.

Are you working from yocto master ?

That being said, if you aren't using meta or aren't using existing BSP
patches (and
branches), then starting from a yocto kernel tree isn't strictly
required. In fact, it
probably confuses things.

The tools can work with a korg tree, using a defconfig, etc. In a nice
coincidence, I'm
completing re-validation of the example korg recipe today.

So if you confirm the above, I can send along/point you to something
that should
meet your needs. (assuming everything works in my tests ;)

Cheers,

Bruce

>
> -------------------------------------------------------------
> Intel Ireland Limited (Branch)
> Collinstown Industrial Park, Leixlip, County Kildare, Ireland
> Registered Number: E902934
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

