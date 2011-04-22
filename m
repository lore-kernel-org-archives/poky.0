Return-Path: <kergoth@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7F7F4C80A73
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 19:09:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so306443vws.35
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 17:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=h/qMIWeB4R+bdREnNPQdhBP37SZXV54MMzqKTaAywDs=;
	b=ZBGH9QW/ps4FqlmcxrZkFM0875WWkU22Y51eaH8VLtLzDG7oA4Wq+s3E5erugiaTd8
	tYuLIiW0w/hcLvHgbBV3UlJ3kLkvDBiZyVZ1FJAVAaXv9+duFa7Wp3eLUfYntzaQaLIL
	VYVIokaWCJkGc8CxEcGVXBitL/uvemvev6AV0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=piqe7xW7rIjf1kUYXKKc2jhjfuTFvpTMs0AgwbH0gQ0mNAHKtjkAw3sFLSP6V0W/cF
	Z3cxqR3V1vqpErLyVCYw8YrS+kQl1QusHngEWej1fDcwaft0Pn9WvPl/nw2yrOVrdHc4
	IMYDRP7Wr39wo3br4jmqKHICyecYctNOXsWaM=
Received: by 10.52.93.115 with SMTP id ct19mr757551vdb.238.1303430963186; Thu,
	21 Apr 2011 17:09:23 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.156.226 with HTTP; Thu, 21 Apr 2011 17:09:03 -0700 (PDT)
In-Reply-To: <4DB0C35E.8060004@linux.intel.com>
References: <4DB0C35E.8060004@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 21 Apr 2011 17:09:03 -0700
X-Google-Sender-Auth: 627QCwfvb4ynotuigwN-YE0sDBg
Message-ID: <BANLkTikyEPp_4LA5_bZSjFXoBqrbYic8xg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Logging: mechanisms and best practices
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
X-List-Received-Date: Fri, 22 Apr 2011 00:09:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 21, 2011 at 4:53 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
>
> From what I could gather, the preferred method is to use the various
> loglevel functions from bb. ie:
>
> bb.fatal() =C2=A0 =C2=A0 =C2=A0A fatal error, the recipe will set the err=
or code and
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0abort.
> bb.error() =C2=A0 =C2=A0 =C2=A0A non-fatal error. The error code is set, =
the build
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0will be marked as =
red in the autobuilder.
> bb.warn() =C2=A0 =C2=A0 =C2=A0 A non-fatal condition that could affect ho=
w things
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0progress.
> bb.debug() =C2=A0 =C2=A0 =C2=A0One of several debug levels.
> bb.note() =C2=A0 =C2=A0 =C2=A0 A condition the user should be made aware =
of
> bb.plain() =C2=A0 =C2=A0 =C2=A0typically the output of a tool, such as li=
sttasks
>
> note and plain will go to the console and should be used extremely
> sparingly. debug will only go to the console with the -D[D[D]] bitbake
> arguments, but should always go to the logs.

As far as I know, notes from tasks are no longer displayed with
knotty.  They certainly aren't in master.

> For annotating your recipe's task's logs, debug should typically be
> used. warn() should be used whenever possible over error() so as to not
> set the error code.

Correct.

> The above only covers the python functions in recipes. Unfortunately,
> many functions are bash. Most of these recipes use "echo", although
> there exist wrappers to echo in base.bbclass:
>
> oenote
> oewarn
> oedebug
> oefatal
>
> As these only wrap echo, none of them go to the console without -D[D[D]]
> flags. Note the absence of oeplain and oeerror. oeplain wouldn't work
> the same as bb.plain() as it doesn't go the console, the existing oenote
> has a similar problem. I've added oeerror() to my local build. oedebug()
> uses "clever" bash tests to check the OEDEBUG loglevel, unfortunately
> this causes the function to exit with a failure code when the condition
> is not met. I've addressed this as well. There are zero users of the oe*
> logging calls in "meta" but I did find several users in oe.
>
> The oe* calls depend on OEDEBUG which is not included in the environment
> whitelists and is not set by the -D[D[D]] arguments. Even adding it to
> the whitelist and my environent it wasn't accessible from the bash
> function. I was unable to to use oedebug() as I couldn't get the OEDEBUG
> value set without hardcoding it into base.bbclass.

These are largely remnants.  I'm not opposed to having the shell
functions that output useful things, but at the very least we can use
a python snippet to check the current bitbake logging level rather
than relying on an old env var.  There's currently no way for shell to
output things to the bitbake UI's display.  In the long term, we
should be able to provide small command-line scripts which communicate
with the current running bitbake server the same way the current
running UI does.

> So... before I start breaking things, I wanted to make sure I fully
> understand how these mechanisms are intended to be used. Also, I would
> very much like to see a consistent interface between bash and python
> fragments that have the same semantics. There are also at least two more
> logging mechanisms I stumbled across withing the bitbake source. One is
> marked deprecated, and I'm not sure how the other is meant to be used.
> The two I mentioned above seem to be the right ones for recipes to use.

This is correct.  Internal bitbake code should be using the python
logging framework at this time.  For now, the api functions
bb.{error,warn,...} are correct for the metadata.

> Would people consider the following to be appropriate:
>
> o Remove BBDEBUG from local.conf.sample as it appears not be used.

Agreed.

> o Modify oedebug to always echo the message as all echos only go to the
> =C2=A0logs anyway. A future change may enhance the oe* calls to print to =
the
> =C2=A0console for oenote, a new oeplain, and oedebug based on -D[D[D]] an=
d
> =C2=A0BBDEBUG.

This would lose us functionality unnecessarily.  We can
programmatically check the bitbake debugging level from ${@}.  E.g.:

if ${@['false', 'true'][bb.msg.debug_level['default']]}; then
  echo "DEBUG: " "$@"
fi

> o Remove OEDEBUG as it doesn't seem to fit with the current BBDEBUG,
> =C2=A0-D[D[D]] mechanisms nor with the expectation that all debug stateme=
nts
> =C2=A0get sent to the logs.

Agreed.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

