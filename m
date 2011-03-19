Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A90F64C800A6
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 20:45:34 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so6161991iwr.35
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 18:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=03o7gLRsMmyJXR/wt39oEiW1pQ6ZxWmfdF9H1IFXpfg=;
	b=LeCHd+NLgg0NCjH7GDQXT566IkfeGhi8qiokWAn+VaRD+7vjrxooqZ+rFuhwu+N6uq
	5qvSvJVxZwTdVNT7qRzp/nDNN9AiFHS7udTrqSaXbUl97bG1G2qQjb5UzM2WriF1pUxw
	WvHkfg6fd8cOe9B9VTkA2LbpgbuEhfWWgRfnw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=SRu6hUcIUvO43FP8S0cEuQO5rXS3rpGn61p3/QXq1xr2nIJBhI1WSZzgA3JtmmRsaR
	UOETaNKfA95IXzgHtwgo9AuE4kFdzwmutGNQTMQBpq0yHbXXY3CGvguemKc3NuTIN830
	fSFHiN49fg0DRCDBjn99MCsHvPAdK3yo5oK34=
MIME-Version: 1.0
Received: by 10.42.1.76 with SMTP id 12mr2246601icf.522.1300499132971; Fri, 18
	Mar 2011 18:45:32 -0700 (PDT)
Received: by 10.231.147.134 with HTTP; Fri, 18 Mar 2011 18:45:32 -0700 (PDT)
In-Reply-To: <1300460758.8530.4.camel@elmorro>
References: <1bdc18$jtdv00@fmsmga002.fm.intel.com>
	<AANLkTikFB9w+x9XNk407hf8MEVum0E4bqxPT1mGYmp6G@mail.gmail.com>
	<1300460758.8530.4.camel@elmorro>
Date: Fri, 18 Mar 2011 21:45:32 -0400
Message-ID: <AANLkTi=ELDD_XGUXaBe2zoa==-hO7B0xJ2TABmrV2Pn3@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [KERNEL][linux-yocto][PATCH 0/1] Fix for bug 888
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
X-List-Received-Date: Sat, 19 Mar 2011 01:45:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 18, 2011 at 11:05 AM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> On Fri, 2011-03-18 at 07:05 -0700, Bruce Ashfield wrote:
>> On Thu, Mar 17, 2011 at 2:45 PM, Tom Zanussi <tom.zanussi@intel.com> wro=
te:
>> > From: Tom Zanussi <tom.zanussi@intel.com>
>> >
>> > Fixes [BUGID #888]. =A0Please pull.
>> >
>> > Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
>> > =A0Branch: tzanussi/crownbay-bugfix-888
>> > =A0Browse: http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.37-c=
ontrib/log/?h=3Dtzanussi/crownbay-bugfix-888
>>
>> I'm back to location in the world with a working access to the
>> internet :)
>>
>> These look good to me.
>>
>> What's the timeline for getting this into the tree? I can merge this in =
about
>> 10 hours from now, and have it in for the weekend.
>>
>
> Hi Bruce,
>
> The timeline looks to be shorter than that, but no problem, I'm just
> going to resubmit them using the good old SRC_URI method, so Richard can
> pull them in...

ok. Just back now ... I'll do these merges over the weekend, and
we'll have them for master, and bernard can stay as is (unless
Richard wants to do any propagation to that branch).

Cheers,

Bruce

>
> Thanks,
>
> Tom
>
>> Cheers,
>>
>> Bruce
>>
>> >
>> > Tom Zanussi (1):
>> > =A0crownbay: update a handful of EMGD licenses
>> >
>> > =A0drivers/gpu/drm/emgd/emgd/pal/Makefile.include =A0 =A0 | =A0 39 ++-=
-
>> > =A0.../emgd/pvr/services4/system/common/sysconfig.c =A0 | =A0287 +++++=
+++++----------
>> > =A0.../drm/emgd/pvr/services4/system/plb/sysconfig.c =A0| =A0 64 +++--=
-
>> > =A0.../drm/emgd/pvr/services4/system/tnc/sysconfig.c =A0| =A0 64 +++--=
-
>> > =A0.../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h | =A0 48 ++--
>> > =A05 files changed, 246 insertions(+), 256 deletions(-)
>> >
>> >
>>
>>
>>
>
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

