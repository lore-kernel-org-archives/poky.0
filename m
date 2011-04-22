Return-Path: <kergoth@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 985844C80AB0
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 23:35:04 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so470061vws.35
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 21:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=foxO8BO8SEfc9AL916yRRpsPgMsOWrjqjxRqjRZmef0=;
	b=hF1wBUyXo/8C0j5a01TdNnmGN5TOuzMfWfEp8d9ewtefxEMQQkjoxvTxWrKpgsc1SI
	wO42yGfnYej7xvhdGiH1ABVdeXJOf3TWxwG5o6oIBPzGFI4/c3gKWlLbwsy2tSg/DHm8
	nQ2k6oQKydCJ8HbIgXvtN7k2IPjE0PNOnOtFg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=xRQMh0kmLWjsrFx//1KEc5SB49BXvjySUDb7xuxiKkdzqzLYfpbwZib1ztz28mww6F
	wsXTjJYihtLAlrsRhW1Gc1MoELoxiIlEUkD8FdVIXYzrXTtSUilhoaX7h8zEHydvDvJB
	7T+hEZLkaNqG/oFoNSoxiN7nBhk34YBlHSvnI=
Received: by 10.52.180.72 with SMTP id dm8mr1031620vdc.118.1303446904188; Thu,
	21 Apr 2011 21:35:04 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.156.226 with HTTP; Thu, 21 Apr 2011 21:34:44 -0700 (PDT)
In-Reply-To: <4DB102DA.5070205@linux.intel.com>
References: <4DB0C35E.8060004@linux.intel.com>
	<BANLkTikyEPp_4LA5_bZSjFXoBqrbYic8xg@mail.gmail.com>
	<4DB102DA.5070205@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 21 Apr 2011 21:34:44 -0700
X-Google-Sender-Auth: oGcQ7qNxmhQexZpzGwEPzZdl7_Q
Message-ID: <BANLkTimg5Pv0o5VUBbRG8b4YSJi=FWBGQA@mail.gmail.com>
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
X-List-Received-Date: Fri, 22 Apr 2011 04:35:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 21, 2011 at 9:23 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
>
> On 04/21/2011 05:09 PM, Chris Larson wrote:
>> On Thu, Apr 21, 2011 at 4:53 PM, Darren Hart <dvhart@linux.intel.com> wr=
ote:
>>>
>>> From what I could gather, the preferred method is to use the various
>>> loglevel functions from bb. ie:
>>>
>>> bb.fatal() =C2=A0 =C2=A0 =C2=A0A fatal error, the recipe will set the e=
rror code and
>>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0abort.
>>> bb.error() =C2=A0 =C2=A0 =C2=A0A non-fatal error. The error code is set=
, the build
>>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0will be marked a=
s red in the autobuilder.
>>> bb.warn() =C2=A0 =C2=A0 =C2=A0 A non-fatal condition that could affect =
how things
>>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0progress.
>>> bb.debug() =C2=A0 =C2=A0 =C2=A0One of several debug levels.
>>> bb.note() =C2=A0 =C2=A0 =C2=A0 A condition the user should be made awar=
e of
>>> bb.plain() =C2=A0 =C2=A0 =C2=A0typically the output of a tool, such as =
listtasks
>>>
>>> note and plain will go to the console and should be used extremely
>>> sparingly. debug will only go to the console with the -D[D[D]] bitbake
>>> arguments, but should always go to the logs.
>>
>> As far as I know, notes from tasks are no longer displayed with
>> knotty. =C2=A0They certainly aren't in master.
>
>
> Gah, right. I knew that, got lost in maelstrom.
>
>
>>
>>> For annotating your recipe's task's logs, debug should typically be
>>> used. warn() should be used whenever possible over error() so as to not
>>> set the error code.
>>
>> Correct.
>>
>>> The above only covers the python functions in recipes. Unfortunately,
>>> many functions are bash. Most of these recipes use "echo", although
>>> there exist wrappers to echo in base.bbclass:
>>>
>>> oenote
>>> oewarn
>>> oedebug
>>> oefatal
>>>
>>> As these only wrap echo, none of them go to the console without -D[D[D]=
]
>>> flags. Note the absence of oeplain and oeerror. oeplain wouldn't work
>>> the same as bb.plain() as it doesn't go the console, the existing oenot=
e
>>> has a similar problem. I've added oeerror() to my local build. oedebug(=
)
>>> uses "clever" bash tests to check the OEDEBUG loglevel, unfortunately
>>> this causes the function to exit with a failure code when the condition
>>> is not met. I've addressed this as well. There are zero users of the oe=
*
>>> logging calls in "meta" but I did find several users in oe.
>>>
>>> The oe* calls depend on OEDEBUG which is not included in the environmen=
t
>>> whitelists and is not set by the -D[D[D]] arguments. Even adding it to
>>> the whitelist and my environent it wasn't accessible from the bash
>>> function. I was unable to to use oedebug() as I couldn't get the OEDEBU=
G
>>> value set without hardcoding it into base.bbclass.
>>
>> These are largely remnants. =C2=A0I'm not opposed to having the shell
>> functions that output useful things, but at the very least we can use
>> a python snippet to check the current bitbake logging level rather
>> than relying on an old env var. =C2=A0There's currently no way for shell=
 to
>> output things to the bitbake UI's display. =C2=A0In the long term, we
>> should be able to provide small command-line scripts which communicate
>> with the current running bitbake server the same way the current
>> running UI does.
>
>
> If they are remnants, would anyone object to my replacing them with:
>
> bbplain()
> bbnote()
> bbwarn()
> bbdebug()
> bberror()
> bbfatal()
>
> ?
>
> My hope is to get something working now, even if it is just to the logs,
> that we can extend the functionality of by integrating it with bitbake
> logging later - without changing the interface.

Seems reasonable to me.

>>
>>> So... before I start breaking things, I wanted to make sure I fully
>>> understand how these mechanisms are intended to be used. Also, I would
>>> very much like to see a consistent interface between bash and python
>>> fragments that have the same semantics. There are also at least two mor=
e
>>> logging mechanisms I stumbled across withing the bitbake source. One is
>>> marked deprecated, and I'm not sure how the other is meant to be used.
>>> The two I mentioned above seem to be the right ones for recipes to use.
>>
>> This is correct. =C2=A0Internal bitbake code should be using the python
>> logging framework at this time. =C2=A0For now, the api functions
>> bb.{error,warn,...} are correct for the metadata.
>
>
> "For now"... Do you expect to see a change here? I don't want to go off
> canonicalizing my recipes if the recipes logging API is likely to change
> significantly from what I use.

As far as I know there are no plans to change the API for recipes.  I
could see it being beneficial in certain particular cases, e.g. if one
wants to send their messages to a particular domain, but I doubt it's
worth the trouble.

>>
>>> Would people consider the following to be appropriate:
>>>
>>> o Remove BBDEBUG from local.conf.sample as it appears not be used.
>>
>> Agreed.
>>
>>> o Modify oedebug to always echo the message as all echos only go to the
>>> =C2=A0logs anyway. A future change may enhance the oe* calls to print t=
o the
>>> =C2=A0console for oenote, a new oeplain, and oedebug based on -D[D[D]] =
and
>>> =C2=A0BBDEBUG.
>>
>> This would lose us functionality unnecessarily.
>
>
> Well... right now it doesn't work at all ;-)
>
>
>> We can
>> programmatically check the bitbake debugging level from ${@}. =C2=A0E.g.=
:
>>
>> if ${@['false', 'true'][bb.msg.debug_level['default']]}; then
>> =C2=A0 echo "DEBUG: " "$@"
>> fi
>
>
> The problem I have with this approach is that it limits what gets sent
> to the logs. As I understand it, the -D[D[D]] mechanism is meant to
> limit what gets sent to the console, but all debug output should go to
> the logs.
>
> So until we integrate this with the bitbake logger, I think it makes the
> most sense to just print it all to the logs.
>
> Am I off in the weeds here?

Nope, well spotted, that's an excellent point.  Better to lean toward
verbosity for useful logs.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

