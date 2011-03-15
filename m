Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0E144C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 01:41:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so294410wyb.35
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 23:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=3WNn6uXK9cJAxvqq1RynWTYqQIDMc/NlWyVyzLTqeGk=;
	b=gB13pnOgZ9YJfCqb/Uh5LfpQLjHgJhQFmTrvtMuG62bpsDIhsqhhSSoMZvO8eS3Y1v
	6QvCdKQjIr2ucIJEBpDpmiwyEYkgedEUiwhu6P6X6JV2UXhC+VPNqhmMt80PvOPQ4UQ0
	dtAniWRRahLhhnijClrTmMNX7eI5R5Nf2ZdTE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=lKk1aadwcFsH58eIEYR/FEQzwndX5TUJTtR+JHjx9aefEYjJyQPtVwXfG7R3ipdwO3
	wiMMgCK9VX4pemJR5YNbeSdZRwRIaU506K6FutAeyIOh5B86q3XSmgqJs/kxVnP6SRkI
	6/HuKteBjhTeF8mAsfLYG4Hf/Xx/CYF88fk/Q=
MIME-Version: 1.0
Received: by 10.216.62.77 with SMTP id x55mr551109wec.59.1300171276664; Mon,
	14 Mar 2011 23:41:16 -0700 (PDT)
Received: by 10.216.236.166 with HTTP; Mon, 14 Mar 2011 23:41:16 -0700 (PDT)
In-Reply-To: <AANLkTi=bahdLUNge_zTEbqz_EiptcAyV+xpQKfG1NE3Y@mail.gmail.com>
References: <AANLkTi=bahdLUNge_zTEbqz_EiptcAyV+xpQKfG1NE3Y@mail.gmail.com>
Date: Tue, 15 Mar 2011 12:11:16 +0530
Message-ID: <AANLkTikZfHe2irEzbjWqRHuj0zD8DQ=vf99-FjWCfuxF@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: Re: Problem while adding krb5
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
X-List-Received-Date: Tue, 15 Mar 2011 06:41:18 -0000
Content-Type: multipart/alternative; boundary=000e0ce0b84217c06a049e7fb7ca

--000e0ce0b84217c06a049e7fb7ca
Content-Type: text/plain; charset=ISO-8859-1

hi,
    I am placing the log when I build it.

NOTE: package krb5-1.6.3-r6: task do_package_write_rpm: Started
NOTE: Creating RPM package for krb5-dbg
*NOTE: Not creating empty RPM package for krb5*
*NOTE: Not creating empty RPM package for krb5-doc*
NOTE: Creating RPM package for krb5-dev
*NOTE: Not creating empty RPM package for krb5-locale*
NOTE: package krb5-1.6.3-r6: task do_package_write_rpm: Succeeded


By seeing this log I checked the /deploy-rpms folder, it has created only
krb5-dbg and krb5-dev as it stated in the log. But still even these rpms are
empty. I checked using less command. I think this might be the problem
rootfs is not going to find krb5.
Can anyone please suggest me the way to find the solution. Your help will be
greatly appreciated.



Thanks and regards,
Kubera Samrat

--000e0ce0b84217c06a049e7fb7ca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

hi,<br> =A0 =A0 I am placing the log when I build it.<br><br>NOTE: package =
krb5-1.6.3-r6: task do_package_write_rpm: Started<br>NOTE: Creating RPM pac=
kage for krb5-dbg<br><b>NOTE: Not creating empty RPM package for krb5</b><b=
r>
<b>NOTE: Not creating empty RPM package for krb5-doc</b><br>NOTE: Creating =
RPM package for krb5-dev<br><b>NOTE: Not creating empty RPM package for krb=
5-locale</b><br>NOTE: package krb5-1.6.3-r6: task do_package_write_rpm: Suc=
ceeded<br>
<br><br>By seeing this log I checked the /deploy-rpms folder, it has create=
d only krb5-dbg and krb5-dev as it stated in the log. But still even these =
rpms are empty. I checked using less command. I think this might be the pro=
blem rootfs is not going to find krb5. <br>
Can anyone please suggest me the way to find the solution. Your help will b=
e greatly appreciated.<br><br><br><br>Thanks and regards,<br>Kubera Samrat<=
br>

--000e0ce0b84217c06a049e7fb7ca--
