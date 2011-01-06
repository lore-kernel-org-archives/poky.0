Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0A714C80FAD
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 01:39:47 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so18456717iwn.35
	for <poky@yoctoproject.org>; Wed, 05 Jan 2011 23:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=OvF9zAxef+O8hnUsRoH66j7ukPhlLsqwicdw+rqJwEQ=;
	b=ShE5nZyG0VjaylIZFb+nhpviYHfjsrLDSetlvuNFAs2cgK1iVIMGFze2nIJY1quQOC
	FqAXArVEQ6rovse2frUfiNreYHD31izX68zS+KNKmPvDuq1zXYeNoPvLCiDNxo2vHe2E
	1mpWBJ0OkUkm+A26FkCGRTCtPvqZdeUuzaZEw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	b=kbp7LFIEN4lfpw4EZyh6qsPeJJdRozqKNGvDiTdRofzLWnOwSGRVK4/30QFM3tP9lc
	EnJNxhMUBSbHghhKfSDMNODUPItBUlRMVr1COFwTD7Y1eW4Bu2pjhMcbMCFT9TqmST/4
	qiCXjQ+scwkGM+WAGnRMjRcXYh9DkxJKXpQ1M=
MIME-Version: 1.0
Received: by 10.231.20.68 with SMTP id e4mr23908333ibb.194.1294299587364; Wed,
	05 Jan 2011 23:39:47 -0800 (PST)
Received: by 10.231.38.11 with HTTP; Wed, 5 Jan 2011 23:39:47 -0800 (PST)
In-Reply-To: <20110106071418.GB20168@kyu3-hedt>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
	<4D20B2B2.3090602@mlbassoc.com> <20110106071418.GB20168@kyu3-hedt>
Date: Thu, 6 Jan 2011 08:39:47 +0100
Message-ID: <AANLkTinkHGD33rsrJUXBxdva2S_hQXniN=nXFsoU5rMu@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Yu Ke <ke.yu@intel.com>, poky@yoctoproject.org
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
X-List-Received-Date: Thu, 06 Jan 2011 07:39:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2011/1/6 Yu Ke <ke.yu@intel.com>:
> On Jan 02, 10:15, Gary Thomas wrote:
>> On 01/02/2011 10:08 AM, Koen Kooi wrote:
>> >Hi,
>> >
>> >I would like to have the fetchter try my PREMIRROS first before trying =
to fetch from git. In OE I have the following in a bbclass:
>> >
>> >PREMIRRORS_append () {
>> >git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
>> >}
>> >
>> >When used in OE that works, but in yocto it doesn't. So I tried to do i=
t poky style in a .inc:
>> >
>> >PREMIRRORS_append =3D "\
>> >git://.*/.* =A0 http:/www.angstrom-distribution.org/sources/ \n"
>> >
>> >Which also doesn't work since it doesn't try to fetch from there, but i=
t does mention "http:/www.angstrom-distribution.org/sources/" in the fetch =
error message when git read-tree fails.
>> >
>> >So my question: how do I make it work in yocto like it works in OE?
>>
>> I too have been struggling with this as I'd like to have
>> a local repository to hold the current source set. =A0Sadly,
>> as you've observed, it doesn't work, at least not as expected.
>
> I've tried to use file:///some/dir as PREMIRROR, and found it does has is=
sue. The main reason is that the local.py fetcher does not do real copy in =
go() method. Although it make sense in normal fetch case, it does cause tro=
uble in try_mirror() case.
>
> I don't have simple idea to address this issue yet and I will take care o=
f it in the coming fetcher change. As a quick workaround, could you try thi=
s approach: use http://local/some/dir as PREMIRROR? e.g. if you use /opt/so=
urce as mirror, you can add to meta/conf/distro/poky.conf:
> PREMIRRORS_append =3D "\
> git://.*/.* =A0 http://local/opt/source/ \n \
> svn://.*/.* =A0 http://local/opt/source/ \n \
> ...
> "
>
> in this case, wget.py fetcher will be used, and it works fine in try_mirr=
or() case. Also the /opt/source can be read-only.
>
> Regards
> Ke

Thanks for the info Ke.
One additional question on this topic.
is it also possible to block fetching from the original source?
I'm looking for an easy, automated way to verify that all sources for
our products are indeed on our public server (to verify GPL
compliance).

Frans

