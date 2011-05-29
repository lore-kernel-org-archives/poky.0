Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yw0-f43.google.com (mail-yw0-f43.google.com
	[209.85.213.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56C284C800D7
	for <poky@pokylinux.org>; Sat, 28 May 2011 23:08:11 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywa6 with SMTP id 6so1571784ywa.2
	for <poky@pokylinux.org>; Sat, 28 May 2011 21:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=LPB4u+mzjjFj5zeR12mT9tliqM9Puy76hth1ij8Cp80=;
	b=m/ZujsgDfLiCl1ktb3ZdlOhMDKAU+Z6slyOvSUB3ZMDF3jrw1Cf9hTuYDzJT8QHaIy
	XkPizXWcuHpopcQb6ltvjpyKeCErGb5xcdfsfJQcZEbg9ggYFnp6KQ0eHqMtNoVyIjB1
	KYbFbf+dVDzCHFsU+vYjjGqyyPpo7gEVGI0UM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=ScmtU79DE6BZOkzAM4OBCm8gPSg1EjsViOzL9xW7a3a6CsJB8AQHyXYFakJZaWGE56
	u5Wgt8baKLoTk9avSyp1GK2mTb4YRMQPR4JqzhFEVcMwKSbMDx+kNRf+XxZhKPZRyKK6
	MBZNoIMm84OoGj9FblOurHx5GTHmGlCkQsLtg=
MIME-Version: 1.0
Received: by 10.91.65.11 with SMTP id s11mr3189068agk.159.1306642089557; Sat,
	28 May 2011 21:08:09 -0700 (PDT)
Received: by 10.90.96.1 with HTTP; Sat, 28 May 2011 21:08:09 -0700 (PDT)
In-Reply-To: <irrf8q$pfa$1@dough.gmane.org>
References: <loom.20110527T192603-897@post.gmane.org>
	<4DE0002B.2000206@linux.intel.com> <irrf8q$pfa$1@dough.gmane.org>
Date: Sun, 29 May 2011 00:08:09 -0400
Message-ID: <BANLkTimPhWje-5YJ9ZEF8By90GBkEgN9ug@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: poky@pokylinux.org
Subject: Re: Impressions of using Poky to create a BSP
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
X-List-Received-Date: Sun, 29 May 2011 04:08:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, May 28, 2011 at 2:35 PM, Robert Berger
<gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> On 05/27/2011 10:48 PM, Darren Hart wrote:
>>>
>>> Adding a kernel:
>>> =A0 =A0 =A0- So by default the linuxdummy is used, but I wanted to buil=
d my kernel,
>>> =A0 =A0 =A0 =A0I started off by copying the yocto kernel recipes. This =
creates a very funny
>>> =A0 =A0 =A0 =A0bug. My kernel didn't have the meta branch, the task to =
test the branches
>>> =A0 =A0 =A0 =A0executes git log for the branch and this is failing.
>>> =A0 =A0 =A0 =A0The symptoms are not obvious at all. An empty log file i=
s left behind.
>>
>>
>> This is probably best dealt with a kernel recipe writing manual. We have
>> a few things like this forming, but nothing tangible yet.
>>
>>
>
> I'm currently building a manufacturer supplied 3rd party kernel and
> u-boot outside of yocto/poky to avoid all this trouble.

There really shouldn't be any trouble now, in particular out of master.
In the past three weeks, I've helped a few people work through just
this sort of scenario.

>
> It's the classic case of a non mainline 3rd party kernel + patch + config
>
> If it's easy enough to create a BSP this would be my preferred solution
> and it would probably also be a good use case for such a manual.
>
> If you have some documentation (even preliminary) I'm willing to work
> with the people involved to come up with something more substantial. (me
> being the one testing how well the instructions work for my 3rd party
> kernel)

The released docs with yocto 1.0 still apply here. We need to start
there. If they are insufficient, or are missing information, then we'll
get it fixed.

>
> The goal would be to end up with something not much more difficult than
> building the stuff outside of yocto/poky;)

There's a few levels to this comment. The point is that if you use the
linux-yocto recipes, then hopefully someone want to use the tooling
and maintain some extra meta data with the kernel. master already
has changes to auto-create the minimum set of meta data for building
any git tree you throw at it.

But that's just the first step. That bootstrapped data can be used
as the starting point for maintaining and extending things.

Even better than having random kernel versions and potentially
unmaintained patches, is to try and sync up with a kernel version
that yocto (or others) are using as collecting points for embedded
features of interest. From there, we can leverage the work, re-use
it and ultimately get changes into the mainline kernel where they
belong.

So if you've got patches and changes that are of interest, I'd like
to see them from that point of view, just as much as making sure
that the yocto kernel recipes + BSP model work seamlessly.

Cheers,

Bruce



>
> Regards,
>
> Robert
>
> ..."Experience is that marvelous thing that enables you recognize a
> mistake when you make it again." - F. P. Jones
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=3Dget&search=3D0x90320BF1
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

