Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2FBB44C8009E;
	Wed,  9 Feb 2011 08:00:25 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so189728iyb.35
	for <multiple recipients>; Wed, 09 Feb 2011 06:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=hjQBZXDp2H8N+4Yk09SOg+hlgjM/Ufx4flrcmkXFZtg=;
	b=ER8vHo/IHcBzrGdtmTPZHkjwfDHQhCbAjaXXD9TDlEdCVxWpnJrmUGbOeotaqXOf1p
	mrOTlFsbPqFBq02evtYlKh2sWS6qOJoNXdDr53essOK4uwSThanJz9Iq3WYiuBDa0x6n
	KwNhgY64B9zi4hm8Rx7clVyeOcS3/a8wBjEK4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=Zg/RYFzS5S4fEsx2YmsrrwdP+w76fExIeTXaWY3tvax67ASShIzNsFs8m87HqL6Oy0
	koj+/JFQh+lH46wZ5OiA5OtWO4Hinv91ps1IjeC9sR5dy2pMiugZoqXekv7UI26Rem66
	nbaJOp2OpnqiYWvJffUvxTalxQ2sb2WYgr1KU=
MIME-Version: 1.0
Received: by 10.42.171.6 with SMTP id h6mr6483334icz.121.1297260024826; Wed,
	09 Feb 2011 06:00:24 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 9 Feb 2011 06:00:24 -0800 (PST)
In-Reply-To: <1297250056.1395.6333.camel@rex>
References: <cover.1297232160.git.bruce.ashfield@windriver.com>
	<eaec388c5c2bfcfde022835e359bd9a8f73e9137.1297232160.git.bruce.ashfield@windriver.com>
	<1297250056.1395.6333.camel@rex>
Date: Wed, 9 Feb 2011 09:00:24 -0500
Message-ID: <AANLkTikGYC0Y4kCcUJfPyEQoj2sYY7TaivGQXJQUm1Q8@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] linux-yocto: streamline BSP bootstrapping
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
X-List-Received-Date: Wed, 09 Feb 2011 14:00:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 9, 2011 at 6:14 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2011-02-09 at 01:22 -0500, Bruce Ashfield wrote:
>> In order to build BSPs that were not already integrated into
>> the upstream linux yocto kernel AND keep the git fetcher happy,
>> some fairly complex anonymous python sections were required.
>>
>> These sections cause problems with variable expansion and SRCREV
>> processing.
>>
>> With the updated git fetcher code, we can streamline the BSP
>> boostrapping process and drop 99% of the anonymous python code.
>>
>> This commit has the following changes to support BSP boot strapping
>> and simplication for existing BSPs.
>>
>> =A0 =A0- KMETA is set per-recipe rather than in python code
>> =A0 =A0- undefined machines are no longer used, but instead common
>> =A0 =A0 =A0branch names are set per-recipe
>> =A0 =A0- fallback machine SRCREVs are present in the default revisions
>> =A0 =A0 =A0file
>> =A0 =A0- A new variable YOCTO_KERNEL_EXTERNAL_BRANCH should be set in
>> =A0 =A0 =A0the local.conf for new BSPs instead of being programatically
>> =A0 =A0 =A0determined in the anonymous python.
>> =A0 =A0- No more explicity KMACHINE variable expansion and manipulation,
>> =A0 =A0 =A0since the tools and build phases no longer require it due
>> =A0 =A0 =A0to the per-recipe fallbacks.
>>
>> Integrated/merged BSPs are unaffected by the changes and have been
>> regression tested.
>>
>> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>
>> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/=
conf/distro/include/poky-default-revisions.inc
>> index 9abc4a5..a04fa9e 100644
>> --- a/meta/conf/distro/include/poky-default-revisions.inc
>> +++ b/meta/conf/distro/include/poky-default-revisions.inc
>> @@ -59,7 +59,7 @@ SRCREV_pn-gypsy ??=3D "147"
>> =A0SRCREV_pn-inputproto ??=3D "7203036522ba9d4b224d282d6afc2d0b947711ee"
>> =A0SRCREV_pn-inputproto-native ??=3D "7203036522ba9d4b224d282d6afc2d0b94=
7711ee"
>> =A0SRCREV_pn-inputproto-nativesdk ??=3D "7203036522ba9d4b224d282d6afc2d0=
b947711ee"
>> -SRCREV_pn-kern-tools-native ??=3D "fde7ef8fa8043607752563b9b7908f487eb2=
f7dd"
>> +SRCREV_pn-kern-tools-native ??=3D "4f13a46499261ea181fdc13db5459067df08=
aca7"
>> =A0SRCREV_pn-libdrm ??=3D "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
>> =A0SRCREV_pn-libfakekey ??=3D "e8c2e412ea4a417afc1f30e32cb7bdc508b1dccc"
>> =A0SRCREV_pn-libgdbus ??=3D "aeab6e3c0185b271ca343b439470491b99cc587f"
>> @@ -110,6 +110,7 @@ SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?=3D "68f=
b0b8d73bbb336ffa4a47bc70ec1eab
>> =A0SRCREV_machine_pn-linux-yocto_beagleboard ?=3D "343c06b25b221aa7f7019=
aee83b2d976041fddce"
>> =A0SRCREV_machine_pn-linux-yocto ?=3D "cb4faf3af527e25feee584f39c3956ca0=
c9448c8"
>> =A0SRCREV_meta_pn-linux-yocto ?=3D "5a32d7fe3b817868ebb697d2d883d7439036=
85ae"
>> +SRCREV_machine_pn-linux-yocto ?=3D "cb4faf3af527e25feee584f39c3956ca0c9=
448c8"
>> =A0SRCREV_pn-linux-libc-headers-yocto ??=3D "343c06b25b221aa7f7019aee83b=
2d976041fddce"
>> =A0SRCREV_pn-matchbox-config-gtk ??=3D "3ed74dfb7c57be088a5ab36e446c0ccd=
e9fa1028"
>> =A0SRCREV_pn-matchbox-desktop-sato ??=3D "76"
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/=
recipes-kernel/linux/linux-yocto-stable_git.bb
>> index d4bee77..3c1e669 100644
>> --- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
>> +++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
>
> I merged this with the exception of the second hunk above since it just
> adds a duplicate line.

argh. Sorry about that, I was testing with your changes in my
tree and thought I had rebased them out!

Cheers,

Bruce

>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

