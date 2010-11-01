Return-Path: <rcwoolley@gmail.com>
Received: from mail-wy0-f171.google.com (mail-wy0-f171.google.com
	[74.125.82.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id C08904C80044
	for <poky@pokylinux.org>; Mon,  1 Nov 2010 12:07:37 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb39 with SMTP id 39so5960896wyb.2
	for <poky@pokylinux.org>; Mon, 01 Nov 2010 10:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=I2Pyuifzer8/R9xcxVV/Aa7JmLlG0B9OQdG6wPMRt+o=;
	b=Pr51gse7dMasmitnV6zy/+vaw9UdFpUuhI/uhH/1ODgczsjaPJBP2lfrPfz+8sa9LL
	ymQFrWMwyUGPmvjBR6yOYXUHNsolo4zeSt3jgXzL37ESZYE4m4HZQrTdHogphy7vvtUA
	cN64FMOFwFIBbVX8u8iEDxoiPN7KQvJJIf1qo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=anoR+pYermb9f7KbM50FIzgkGDspeuq2mtkU21vR9h1mfVHfugM0u08N0Vz8DlCnEe
	43RpRYZGDPz+UmgwOfydhOvgbGvm1oX5uKhjf7e4jrlFxH8rYIxFkUeRN70QzV50zVZK
	X/S43hPL0ioX4E3lC7MeKOkYWIqSZsUvtfTLU=
MIME-Version: 1.0
Received: by 10.216.13.207 with SMTP id b57mr7926952web.32.1288631254101; Mon,
	01 Nov 2010 10:07:34 -0700 (PDT)
Received: by 10.216.74.79 with HTTP; Mon, 1 Nov 2010 10:07:34 -0700 (PDT)
In-Reply-To: <4CCBD4B3.1090300@windriver.com>
References: <AANLkTikxFm-z7tUAJV8zMvxOqQ3u3A9GbaSdJy0yuJjr@mail.gmail.com>
	<4CCBD4B3.1090300@windriver.com>
Date: Mon, 1 Nov 2010 13:07:34 -0400
Message-ID: <AANLkTim-uqWgVo7Pj9dnu80RGn4VyP4gSYfAMF4-W51d@mail.gmail.com>
From: Rob Woolley <rcwoolley@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky@pokylinux.org
Subject: Re: do_rootfs() RPM error message
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 17:07:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks, Mark.

I've filed the bug: http://bugzilla.pokylinux.org/show_bug.cgi?id=3D517

Best regards,
Rob

On Sat, Oct 30, 2010 at 4:17 AM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
> Please file a bug in the bugzilla.yoctoproject.org and attach the patch.
> =A0I'll get it generated as soon as I get back to the states from CELF.
>
> --Mark
>
> On 10/29/10 8:48 PM, Rob Woolley wrote:
>>
>> Hi,
>>
>> I ran into a minor build system glitch and wanted to share the
>> workaround I used.
>>
>> I was following the steps in the Poky quick start guide. =A0When the
>> build got to the do_rootfs() task, the rpm command complained on all
>> packages with:
>>
>> =A0 =A0 =A0 =A0installing package<PKG> =A0needs 125MB on the /boot files=
ystem
>>
>> My /boot partition is only 100MB which is what triggered the problem.
>>
>> However, since the disk space on the host filesystem is irrelevant for
>> assembling the rootfs for the target, I added --ignoresize to the rpm
>> line that triggered the problem.
>>
>> I suspect that it's related to the fact that rpm -U was used with
>> --justdb and without --root. =A0It may be needed on similar rpm calls as
>> well.
>>
>> Once I made the change my build completed successfully.
>>
>> Cheers,
>> Rob
>>
>> diff --git a/meta/classes/rootfs_rpm.bbclass
>> b/meta/classes/rootfs_rpm.bbclass
>> index 6e9cbba..ceab7c9 100644
>> --- a/meta/classes/rootfs_rpm.bbclass
>> +++ b/meta/classes/rootfs_rpm.bbclass
>> @@ -80,7 +80,7 @@ fakeroot rootfs_rpm_do_rootfs () {
>> =A0 =A0 =A0 =A0 # an actual package install!
>> =A0 =A0 =A0 =A0 ${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat
>> ${DEPLOY_DIR_RPM}/solvedb.macro`" \
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 -D "__dbi_cdb create mp_mmapsize=3D128Mb=
 mp_size=3D1Mb
>> nofsync" \
>> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 -U --justdb --noscripts --notriggers --nop=
arentdirs
>> --nolinktos \
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 -U --justdb --noscripts --notriggers --nop=
arentdirs
>> --nolinktos --ignoresize \
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${IMAGE_ROOTFS}/install/install.manifest
>>
>> =A0 =A0 =A0 =A0 if [ ! -z "${PACKAGE_INSTALL_ATTEMPTONLY}" ]; then
>> _______________________________________________
>> poky mailing list
>> poky@pokylinux.org
>> https://lists.pokylinux.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky
>

