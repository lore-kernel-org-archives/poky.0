Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B85E84C8086F
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 06:08:52 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so18632434iwn.35
	for <poky@yoctoproject.org>; Thu, 06 Jan 2011 04:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=jYBoISmeiklK6Ta4gJVtrAiQ7PzmMDEzseqDut2bADM=;
	b=n7R4eUOUj7kp4D2Wjvk0vL3IxP5ViAxDy4HXxnMIilw6C1artMC3o3Rn1aoAdKDATG
	h4Y6Za9a7Yfp39T2Y3MbilDAlSvUlJr8Q/lBkzMKpdyt9CBL5BZNbkTlx/sq5TIru8gG
	tyfzqrB0dbZfAnwvibeZK8LhQjFJP03xXEons=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=cBp0jmGkKNQt5oRWL92kjK0xmv1ZYQ2CgCIbqcsSm0BDBV5jFdXm4nEYDxbDdpzkfX
	4cix8d25tyh8HI/oyaCnjlJjEgybAtkpcCirssAus7ue5bhavA82mrOGx5bsZUmF4yi+
	LIW5I6HNJxDB5/yN762k2fPI0dRGagA6uCzS4=
MIME-Version: 1.0
Received: by 10.231.10.76 with SMTP id o12mr8377509ibo.144.1294315732262; Thu,
	06 Jan 2011 04:08:52 -0800 (PST)
Received: by 10.231.38.11 with HTTP; Thu, 6 Jan 2011 04:08:52 -0800 (PST)
In-Reply-To: <20110106110702.GD20168@kyu3-hedt>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
	<4D20B2B2.3090602@mlbassoc.com> <20110106071418.GB20168@kyu3-hedt>
	<AANLkTinkHGD33rsrJUXBxdva2S_hQXniN=nXFsoU5rMu@mail.gmail.com>
	<20110106110702.GD20168@kyu3-hedt>
Date: Thu, 6 Jan 2011 13:08:52 +0100
Message-ID: <AANLkTimWFZpYchZEJdkymLpHEJKMa=X+cAiTZyE+Siqg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Yu Ke <ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: PREMIRRORS in yocto, do they actually work?
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
X-List-Received-Date: Thu, 06 Jan 2011 12:08:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2011/1/6 Yu Ke <ke.yu@intel.com>:
> On Jan 06, 08:39, Frans Meulenbroeks wrote:
>> 2011/1/6 Yu Ke <ke.yu@intel.com>:
>> > On Jan 02, 10:15, Gary Thomas wrote:
>> >> On 01/02/2011 10:08 AM, Koen Kooi wrote:
>> >> >Hi,
>> >> >
>> >> >I would like to have the fetchter try my PREMIRROS first before tryi=
ng to fetch from git. In OE I have the following in a bbclass:
>> >> >
>> >> >PREMIRRORS_append () {
>> >> >git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
>> >> >}
>> >> >
>> >> >When used in OE that works, but in yocto it doesn't. So I tried to d=
o it poky style in a .inc:
>> >> >
>> >> >PREMIRRORS_append =3D "\
>> >> >git://.*/.* =A0 http:/www.angstrom-distribution.org/sources/ \n"
>> >> >
>> >> >Which also doesn't work since it doesn't try to fetch from there, bu=
t it does mention "http:/www.angstrom-distribution.org/sources/" in the fet=
ch error message when git read-tree fails.
>> >> >
>> >> >So my question: how do I make it work in yocto like it works in OE?
>> >>
>> >> I too have been struggling with this as I'd like to have
>> >> a local repository to hold the current source set. =A0Sadly,
>> >> as you've observed, it doesn't work, at least not as expected.
>> >
>> > I've tried to use file:///some/dir as PREMIRROR, and found it does has=
 issue. The main reason is that the local.py fetcher does not do real copy =
in go() method. Although it make sense in normal fetch case, it does cause =
trouble in try_mirror() case.
>> >
>> > I don't have simple idea to address this issue yet and I will take car=
e of it in the coming fetcher change. As a quick workaround, could you try =
this approach: use http://local/some/dir as PREMIRROR? e.g. if you use /opt=
/source as mirror, you can add to meta/conf/distro/poky.conf:
>> > PREMIRRORS_append =3D "\
>> > git://.*/.* =A0 http://local/opt/source/ \n \
>> > svn://.*/.* =A0 http://local/opt/source/ \n \
>> > ...
>> > "
>> >
>> > in this case, wget.py fetcher will be used, and it works fine in try_m=
irror() case. Also the /opt/source can be read-only.
>> >
>> > Regards
>> > Ke
>>
>> Thanks for the info Ke.
>> One additional question on this topic.
>> is it also possible to block fetching from the original source?
>> I'm looking for an easy, automated way to verify that all sources for
>> our products are indeed on our public server (to verify GPL
>> compliance).
>
> sorry taht I am not aware of such way, maybe other people has ideas.
>
> If it is for one time verification, probably you can try the following pa=
tch. But I am not sure if it is desirable for upstream checked in.
>
> Regards
> Ke
>
> diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__in=
it__.py
> index 67e5add..eb053e1 100644
> --- a/bitbake/lib/bb/fetch/__init__.py
> +++ b/bitbake/lib/bb/fetch/__init__.py
> @@ -286,6 +286,8 @@ def go(d, urls =3D None):
> =A0 =A0 =A0 =A0 if m.forcefetch(u, ud, d) or not localpath:
> =A0 =A0 =A0 =A0 =A0 =A0 # Next try fetching from the original uri, u
> =A0 =A0 =A0 =A0 =A0 =A0 try:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if bb.data.getVar("BB_FETCH_MIRROR_ONLY"=
, d, True) =3D=3D "1":
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0raise FetchError("Only allow to =
fetch from mirror")
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 m.go(u, ud, d)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 localpath =3D ud.localpath
> =A0 =A0 =A0 =A0 =A0 =A0 except FetchError:
>

that looks like a nice patch to me.
Richard, how do you feel about such a patch ?

I can always of course do this in a local patch.

Thanks! Frans

