Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2ADF94C811AE
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 22:43:17 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so571310iwn.35
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 20:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=17fm2TvvVVuNYXoLLAdoTv1VqIzq7pP0meT61qzJiVc=;
	b=CCpFISGLEsfZbhyzUDWM2Ff+4nk03ejgbw9BYbmqK6tV39bG3nxirTOgonEsbDwisM
	mO0+MpmwaEb+mcyCgXqTjeOpixdCqNnMQwhuibOUPVusS4SqmshYrwzoYjpteQBRep16
	aHYbKpt+HMr1E6CklEJXq2oL396Rnivke/uUc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=OmOI0ZFS2rzPEbXM90Qnf68Dr5SquPW9gNKCeVA4kyV/UV21VgPUx9WJpo3K7pZ+U2
	Got+/3jkTazBHgd5tz6kY+0CNEPdgTfPBcCjz9nCgZUlRrQLEI39AgVMjKCs947wzZaI
	s3hMDAfIKJ9vrscSz4A9NZ2bFkl14WvRIGeEk=
MIME-Version: 1.0
Received: by 10.231.199.10 with SMTP id eq10mr7570335ibb.112.1296016995927;
	Tue, 25 Jan 2011 20:43:15 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 25 Jan 2011 20:43:15 -0800 (PST)
In-Reply-To: <20110126044110.GB15143@kyu3-hedt>
References: <cover.1295371995.git.ke.yu@intel.com>
	<8dfcbdd661ed90787b9680ea1bcdae45c4372a67.1295371995.git.ke.yu@intel.com>
	<1295978833.14388.50360.camel@rex>
	<AANLkTi=g9Z6c3PSLa=7JUtRS1xbh8KDMOgoBZao2Z24Z@mail.gmail.com>
	<20110126044110.GB15143@kyu3-hedt>
Date: Tue, 25 Jan 2011 23:43:15 -0500
Message-ID: <AANLkTi=8epiNj3D6yJM5uLJ-GCd0NAxdnxsgzFTpUtXi@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Yu Ke <ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 10/11] bb.fetch2: add git unpack
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
X-List-Received-Date: Wed, 26 Jan 2011 04:43:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 25, 2011 at 11:41 PM, Yu Ke <ke.yu@intel.com> wrote:
> On Jan 25, 14:39, Bruce Ashfield wrote:
>> On Tue, Jan 25, 2011 at 1:07 PM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>> > Hi Ke,
>> >
>> > On Wed, 2011-01-19 at 01:48 +0800, Yu Ke wrote:
>> >> git download will clone git repo to local, and git unpack just do a c=
lone with referrence to the original repo
>> >>
>> >> Signed-off-by: Yu Ke <ke.yu@intel.com>
>> >> ---
>> >> =A0bitbake/lib/bb/fetch2/git.py | =A0 16 ++++++++++++++++
>> >> =A01 files changed, 16 insertions(+), 0 deletions(-)
>> >>
>> >> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git=
.py
>> >> index 438756a..bb62a87 100644
>> >> --- a/bitbake/lib/bb/fetch2/git.py
>> >> +++ b/bitbake/lib/bb/fetch2/git.py
>> >> @@ -193,6 +193,22 @@ class Git(Fetch):
>> >> =A0 =A0 =A0 =A0 =A0os.chdir(ud.clonedir)
>> >> =A0 =A0 =A0 =A0 =A0bb.utils.prunedir(codir)
>> >>
>> >> + =A0 =A0def unpack(self, ud, destdir, d):
>> >> + =A0 =A0 =A0 =A0""" unpack the downloaded src to destdir"""
>> >> + =A0 =A0 =A0 =A0subdir =3D ud.parm.get("subpath", "")
>> >> + =A0 =A0 =A0 =A0if subdir !=3D "":
>> >> + =A0 =A0 =A0 =A0 =A0 =A0readpathspec =3D ":%s" % (subdir)
>> >> + =A0 =A0 =A0 =A0else:
>> >> + =A0 =A0 =A0 =A0 =A0 =A0readpathspec =3D ""
>> >> +
>> >> + =A0 =A0 =A0 =A0# extract to ${WORKDIR}/git
>> >> + =A0 =A0 =A0 =A0destdir =3D destdir + "/git/"
>> >> +
>> >> + =A0 =A0 =A0 =A0os.chdir(ud.clonedir)
>> >> + =A0 =A0 =A0 =A0runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.ta=
g, readpathspec), d)
>> >> + =A0 =A0 =A0 =A0runfetchcmd("%s checkout-index -q -f --prefix=3D%s -=
a" % (ud.basecmd, destdir), d)
>> >> + =A0 =A0 =A0 =A0return 1
>> >> +
>> >> =A0 =A0 =A0def supports_srcrev(self):
>> >> =A0 =A0 =A0 =A0 =A0return True
>> >
>> > I know we talked about this via email and you revised the description
>> > to:
>> >
>> > http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dkyu3/f=
etcher-api-v3&id=3D6df3037ea3679b804c2679afba8377b7e3796aca
>> >
>> > I'm wondering if we could optimise this cp command to be a "git clone
>> > -l" or a "git clone -s" (see man git-clone). I'm cc'ing Bruce for his
>> > thoughts on this and whether the linux-yocto tools would have a proble=
m
>> > with either of these.
>>
>> Neither will pose a problem, and for what it is worth, I think using git
>> for the copy from src/dest is a good idea. In other build systems, I'm
>> doing the same thing with --shared (so I know for sure that works), and
>> --local should also be fine.
>
> "git clone" is my first try when cooking the patch, unfortunately I meet =
one issue here. the git clone target dir is ${WORKDIR}, while git requires =
the target dir to be empty, which is not true for ${WORKDIR}, so git clone =
will fail. so I fall back to cp approach.
>
> But I agree that git clone is better. So I'd like use this apprach: git c=
lone to {WORKDIR}/git/, and modify the kernel-yocto.bbclass:do_kernel_check=
out() to use the new layout.
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
I will revise the patch accordingly for review.
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
Regards
> Ke

This may be problematic. The kernel checkout needs to be done in a very
specific way. After the clone, you must have all branches local (no origin/=
)
and in the 'linux' directory. There are other tools that depend on
this particular
layout.

The most efficient way to do this has proven to be to do a bare clone
and then forcibly convert it to a non-bare clone. That gets you the
instantiation
and local branches in a single clone + minor fix ups to the directory.

Just some things to consider, I'll wait to see the patches before commentin=
g
further.

Bruce

>
>>
>> >
>> > The idea would be one central checkout with the references in and then
>> > the subcomponents would all just reference the one local clone saving
>> > diskspace and time.
>>
>> Absolutely. And if someone does something to the central checkout,
>> minor errors ensue, but that can be recovered as well.
>>
>> Cheers,
>>
>> Bruce
>>
>> >
>> > Cheers,
>> >
>> > Richard
>> >
>> >
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> >
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

