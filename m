Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 700C54C80050;
	Fri, 31 Dec 2010 13:33:12 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so12693668iyb.35
	for <multiple recipients>; Fri, 31 Dec 2010 11:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=/EQZKNsVX8rY0V4nAbXGAcsLK3/mmZKote8i5KGoRZk=;
	b=APitkChrxB64Zd/cEjlJ/OSQnHk/QZ6XT6yb1+08Ncu4kbAeFV+qahz1bTMZ38LNmU
	ToeoDGw+/EoDsSUySKV7FRgLikdaYAzCo3lUVfBEAOhBbWXz1CXW6ApLq013E9SOQIyl
	yHznJH5ZjHK/ykZRIIGIThfVeVv7gXoHpk72A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=IG+PF7VLNAjxMajsTj2zcU43By2r7ywAVtj0voSSq2S0gPiDDaB+XZjxgpqhfP9DlB
	zmHndQ1E6JeldxgJHilYSbFgbIxIDQJ7s7j2dfQeJbvs8j7lBUK5gzXgeNmceHGRnAAz
	+UFJ/L/L/q0N3A/cyrzpg8K4dxeJyxUY66Rzo=
MIME-Version: 1.0
Received: by 10.231.35.75 with SMTP id o11mr1562773ibd.12.1293823992147; Fri,
	31 Dec 2010 11:33:12 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Fri, 31 Dec 2010 11:33:12 -0800 (PST)
In-Reply-To: <AANLkTikJ-L6x9k=LbgO5OQp7x9ozt71R_e2iZxiqrc=9@mail.gmail.com>
References: <cover.1293744156.git.bruce.ashfield@windriver.com>
	<4D1E0FED.4080305@intel.com>
	<AANLkTikJ-L6x9k=LbgO5OQp7x9ozt71R_e2iZxiqrc=9@mail.gmail.com>
Date: Fri, 31 Dec 2010 14:33:12 -0500
Message-ID: <AANLkTi=rBYVQhhs6ktg8jWHu-R5axM1oeEy8+XThHRxv@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto: update to 2.6.37-rc8
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
X-List-Received-Date: Fri, 31 Dec 2010 19:33:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 31, 2010 at 12:51 PM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Fri, Dec 31, 2010 at 12:16 PM, Saul Wold <saul.wold@intel.com> wrote:
>> On 12/30/2010 01:31 PM, Bruce Ashfield wrote:
>>>
>>> Nothing fancy here, just updating to track 2.6.37-rc8. Compile tested
>>> for all arches.
>>>
>> Maybe not fancy, but it's breaking the build! =A0Checkout the distro-tes=
ting
>> autobuild from last night, I am backing this out of distro/master for no=
w.
>
> Interesting. I built all boards on this already. No worries, I'll revisit
> this next week.

Turns out this was trivial. My scripts got the devel and stable kernel
tangled up and the meta branch has a the wrong SRCREV which chains
to the error the builders are seeing.

I'll send a new patch shortly for this and -stable.

Cheers,

Bruce

>
> Bruce
>
>>
>> Sau!
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>> =A0 Branch: zedd/kernel
>>> =A0 Browse:
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel
>>>
>>> Thanks,
>>> =A0 =A0 Bruce Ashfield<bruce.ashfield@windriver.com>
>>> ---
>>>
>>>
>>> Bruce Ashfield (1):
>>> =A0 linux-yocto: update to 2.6.37-rc8
>>>
>>> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 24
>>> ++++++++++----------
>>> =A01 files changed, 12 insertions(+), 12 deletions(-)
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

