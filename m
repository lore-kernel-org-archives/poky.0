Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B3A24C80B6E
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 09:01:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so493991iyb.35
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 07:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=9R3prO6qF1hi1Ljb9fwBT+96Of32LDAd0zYhAIXt1oM=;
	b=S7rHjwtZSXJkHWLr6i9LUuSU7pgSkm1zJwJUm/IRAdErwWGav3guYZIivIEQvnStLa
	nyKJZO5FhUK2l8Y9QRJ/DoHyvi4QOuh/ii5b/cKr51sJsqRKz7JG1qDqP+8NutneIgmZ
	upM7/YzxlTuGvTeL6wKEVVWoSE2mqivRaY6tk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=iJiyFkOZrL8UggDGfvneAmdd9HtDLfUMNa1Ffk/nxASGqHhsZMSFFDGvLpgeVe2Dde
	s3kDiZ8PhcVoJKl1OiKXxC6pz7sO7pcbDp1hEe7jNEloyMSPBoTEcGTciJzqXBdP4w8f
	koaigCA/JKfk/V5a5hKcsCbmFaGD0GCvyES4o=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr8251671iba.37.1296054088218; Wed,
	26 Jan 2011 07:01:28 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 26 Jan 2011 07:01:28 -0800 (PST)
In-Reply-To: <20110126082530.GA31432@kyu3-hedt>
References: <cover.1295371995.git.ke.yu@intel.com>
	<8dfcbdd661ed90787b9680ea1bcdae45c4372a67.1295371995.git.ke.yu@intel.com>
	<1295978833.14388.50360.camel@rex>
	<AANLkTi=g9Z6c3PSLa=7JUtRS1xbh8KDMOgoBZao2Z24Z@mail.gmail.com>
	<20110126044110.GB15143@kyu3-hedt>
	<AANLkTi=8epiNj3D6yJM5uLJ-GCd0NAxdnxsgzFTpUtXi@mail.gmail.com>
	<20110126082530.GA31432@kyu3-hedt>
Date: Wed, 26 Jan 2011 10:01:28 -0500
Message-ID: <AANLkTinDutu+fKK9h95fSgYbLe7Dj3zCBR=Th-AyUzAk@mail.gmail.com>
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
X-List-Received-Date: Wed, 26 Jan 2011 15:01:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 26, 2011 at 3:25 AM, Yu Ke <ke.yu@intel.com> wrote:
> On Jan 25, 23:43, Bruce Ashfield wrote:
>> On Tue, Jan 25, 2011 at 11:41 PM, Yu Ke <ke.yu@intel.com> wrote:
>> > "git clone" is my first try when cooking the patch, unfortunately I me=
et one issue here. the git clone target dir is ${WORKDIR}, while git requir=
es the target dir to be empty, which is not true for ${WORKDIR}, so git clo=
ne will fail. so I fall back to cp approach.
>> >
>> > But I agree that git clone is better. So I'd like use this apprach: gi=
t clone to {WORKDIR}/git/, and modify the kernel-yocto.bbclass:do_kernel_ch=
eckout() to use the new layout.
>> > I will revise the patch accordingly for review.
>> > Regards
>> > Ke
>>
>> This may be problematic. The kernel checkout needs to be done in a very
>> specific way. After the clone, you must have all branches local (no orig=
in/)
>> and in the 'linux' directory. There are other tools that depend on
>> this particular
>> layout.
>>
>> The most efficient way to do this has proven to be to do a bare clone
>> and then forcibly convert it to a non-bare clone. That gets you the
>> instantiation
>> and local branches in a single clone + minor fix ups to the directory.
>>
>> Just some things to consider, I'll wait to see the patches before commen=
ting
>> further.
>>
>> Bruce
>
> Bruce, thanks for the comments. You are right. I realize that kernel chec=
kout need to output a specific layout, so I only change the input layout of=
 kernel checkout. more specificly, change the input dir from ${WORKDIR}/.gi=
t to ${WORKDIR}/git/.git. and the output layout is unchanged.
>
> please see if the revised patch works for you:

I haven't actually tried the patch, but just by having a look at it, it loo=
ks
fine. No harm in the directory shuffling at all, and it makes more sense
this way.

Cheers,

Bruce

>
> git unpack patch - http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/co=
mmit/?h=3Dkyu3/git-unpack&id=3De654e3d75550282c4d112f1050465cde850c93e9
>
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 08daa20..eadbf33 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -194,6 +194,31 @@ class Git(Fetch):
> =A0 =A0 =A0 =A0 os.chdir(ud.clonedir)
> =A0 =A0 =A0 =A0 bb.utils.prunedir(codir)
>
> + =A0 =A0def unpack(self, ud, destdir, d):
> + =A0 =A0 =A0 =A0""" unpack the downloaded src to destdir"""
> +
> + =A0 =A0 =A0 =A0subdir =3D ud.parm.get("subpath", "")
> + =A0 =A0 =A0 =A0if subdir !=3D "":
> + =A0 =A0 =A0 =A0 =A0 =A0readpathspec =3D ":%s" % (subdir)
> + =A0 =A0 =A0 =A0else:
> + =A0 =A0 =A0 =A0 =A0 =A0readpathspec =3D ""
> +
> + =A0 =A0 =A0 =A0destdir =3D os.path.join(destdir, "git/")
> + =A0 =A0 =A0 =A0if os.path.exists(destdir):
> + =A0 =A0 =A0 =A0 =A0 =A0bb.utils.prunedir(destdir)
> +
> + =A0 =A0 =A0 =A0if 'fullclone' in ud.parm:
> + =A0 =A0 =A0 =A0 =A0 =A0runfetchcmd("git clone -l -n %s %s" % (ud.cloned=
ir, destdir), d)
> + =A0 =A0 =A0 =A0 =A0 =A0if os.path.exists("%s/.git/refs/remotes/origin" =
% ud.clonedir):
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0runfetchcmd("cp -af %s/.git/refs/remotes=
/origin/* %s/.git/refs/remotes/origin/" %(ud.clonedir, destdir), d)
> + =A0 =A0 =A0 =A0 =A0 =A0if os.path.exists("%s/.git/packed-refs" % ud.clo=
nedir):
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0runfetchcmd("cp -af %s/.git/packed-refs =
%s/.git/" %(ud.clonedir, destdir), d)
> + =A0 =A0 =A0 =A0else:
> + =A0 =A0 =A0 =A0 =A0 =A0os.chdir(ud.clonedir)
> + =A0 =A0 =A0 =A0 =A0 =A0runfetchcmd("%s read-tree %s%s" % (ud.basecmd, u=
d.tag, readpathspec), d)
> + =A0 =A0 =A0 =A0 =A0 =A0runfetchcmd("%s checkout-index -q -f --prefix=3D=
%s -a" % (ud.basecmd, destdir), d)
> + =A0 =A0 =A0 =A0return True
> +
> =A0 =A0 def supports_srcrev(self):
> =A0 =A0 =A0 =A0 return True
>
> kernel checkout patch - http://git.pokylinux.org/cgit/cgit.cgi/poky-contr=
ib/commit/?h=3Dkyu3/git-unpack&id=3Db1916da1f1a8b7e3c4b50d540918aa72be704d9=
a
>
> diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yoct=
o.bbclass
> index 8479b39..ca1fb15 100644
> --- a/meta/classes/kernel-yocto.bbclass
> +++ b/meta/classes/kernel-yocto.bbclass
> @@ -89,11 +89,11 @@ do_patch() {
> =A0}
>
> =A0do_kernel_checkout() {
> - =A0 =A0 =A0 if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
> + =A0 =A0 =A0 if [ -d ${WORKDIR}/git/.git/refs/remotes/origin ]; then
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "Fixing up git directory for ${LINUX_=
KERNEL_TYPE}/${KMACHINE}"
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0rm -rf ${S}
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mkdir ${S}
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 mv ${WORKDIR}/.git ${S}
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 mv ${WORKDIR}/git/.git ${S}
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -e ${S}/.git/packed-refs ]; then
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cd ${S}
>
>
>>
>> >
>> >>
>> >> >
>> >> > The idea would be one central checkout with the references in and t=
hen
>> >> > the subcomponents would all just reference the one local clone savi=
ng
>> >> > diskspace and time.
>> >>
>> >> Absolutely. And if someone does something to the central checkout,
>> >> minor errors ensue, but that can be recovered as well.
>> >>
>> >> Cheers,
>> >>
>> >> Bruce
>> >>
>> >> >
>> >> > Cheers,
>> >> >
>> >> > Richard
>> >> >
>> >> >
>> >> >
>> >> > _______________________________________________
>> >> > poky mailing list
>> >> > poky@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/poky
>> >> >
>> >>
>> >>
>> >>
>> >> --
>> >> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> >> thee at its end"
>> >> _______________________________________________
>> >> poky mailing list
>> >> poky@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/poky
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

