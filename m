Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f51.google.com (mail-ww0-f51.google.com [74.125.82.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CC594C80FA8
	for <poky@pokylinux.org>; Fri, 17 Dec 2010 07:49:56 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwe15 with SMTP id 15so637212wwe.8
	for <poky@pokylinux.org>; Fri, 17 Dec 2010 05:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=Ab/VZSorPXF2PwFh5D+PLKBIUOY4Bf0Cq2rcF6qV4QQ=;
	b=o9iPvpg4BsUhA+j7hV/UgGwD1DfC+2QSxhxm4xf2euGvOZms1fCgu7ITC08+0nY9KW
	wziJRD2feQctCXFl+Bu3RdxOR/44hbecLEBRWmR8QaGVUPOmuIC6r/j0yuMNbnVsJ8pc
	aKhQ5/NmZQ8pmB3Cy6WvUsY65IVFBevJ8UBms=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=XfaqyJresXIoRAk6EbuCaCympKifdP5IZSuLSgSEeaz0CN6O/Vkg9rqTIhWqjNttGv
	sMKrMAPwE1pP48uKXlDgRPe83VryqRfRjUT98qaUs9IrzoyVbQonUWbh2JxXY7E+3cCn
	t17kaWa1FPbq6DIPqvqN+bOLOY6bkMeU7f9e4=
Received: by 10.216.220.219 with SMTP id o69mr1130981wep.57.1292593795427;
	Fri, 17 Dec 2010 05:49:55 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Fri, 17 Dec 2010 05:49:35 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 17 Dec 2010 06:49:35 -0700
X-Google-Sender-Auth: 0SM2e5dGnYATenkyb8So0Ejf9h4
Message-ID: <AANLkTi=ViynyC5=Dmm_MDqOLz8_R-ThxxPwHYYRWBU9a@mail.gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: perl binary hard-code path hurts sstate
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
X-List-Received-Date: Fri, 17 Dec 2010 13:49:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 16, 2010 at 10:29 PM, Tian, Kevin <kevin.tian@intel.com> wrote:
> (change the title to better reflect the ongoing thread)
>
> sstate.bbclass solves the absolute path issue by encoding a special patte=
rn
> (FIXMESTAGINGDIR) in all sysroot paths captured in plain text files (head=
ers,
> config files, etc.), and then replace them with new path when installing =
into a
> different directory. This works well until below issue is reported.
>
> The problem is that perl includes absolute path inside its binary:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0xxx/usr/lib/perl/5.8.8/CORE/libperl.so
> (Nitin, please correct me whether this is the actual case)
>
> I'm not sure how to work around it to allow a successful sstate reuse.
>
> On the other hand, perhaps we could introduce some blacklist to mark some
> packages not sstate-able? I think such case is rare. After rebuilding per=
l from
> scratch in the new build dir, the error disappears and the build is conti=
nuing.
> I'll see whether there're other similar issues cross the build.

These sorts of issues aren't new, or fun, sadly.  We've run into many
like this using packaged staging.  We had to use the variable to
disable packaged-staging for exactly this reason, so something similar
for sstate would indeed be useful for this.  Most of us lack the time
to patch upstreams with true package relocatability, unfortunately.
Note that there are cases where projects will obey environment
variables to override the hardcoded default paths, and in those cases
one can generate wrappers for native/cross/nativesdk binary
execution.. not ideal, but gets the job done, and there's a
convenience function for generating them in the upstream OE classes.

In the past, I've used a script that rebuilt every recipe, one by one,
with all of its dependencies prebuilt using a different build path.
Something like that would likely be useful for catching these sorts of
issues with sstate as well.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

