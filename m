Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f51.google.com (mail-ww0-f51.google.com [74.125.82.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D29B4C80517
	for <poky@lists.yoctoproject.org>; Tue, 22 Feb 2011 16:06:33 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwe15 with SMTP id 15so7471323wwe.8
	for <poky@lists.yoctoproject.org>; Tue, 22 Feb 2011 14:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=hhP/RXHBNxO+JgUSrHe64qhVRLjT3Fvrf9YXBEAiFq4=;
	b=I9ZEeLmvfVhhNouBzvMSafI+i2+nI7F45wcYdgbz65Pg0aBzFbRyTiO2jCHcpRWObR
	PdgADwJhzRfhT2pN1R6izwrdIwmafGQJL+pyqlzWRGwtz3Rn6bA1dQA+dtwhhyBS5B5i
	uS2xnUp7zrHgbuOEH5iZdH5t/jTMmpmtXjvkM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=XlKDLSkQ2LPVgiiFCl0ORqGGmv/HMIiAGJZPy8qjztyyGJSBzZffd3xMBWyJZFDLtk
	BYUGComZdW+LKt3/slyV5bwTukE4x4YOtEco5Rr9ZWtlQ/4JLjUbNMD54OzbYTqKxaPi
	K1ao/dtko6ZUu7ZK895uZRxyKhEJXZ6U0p7qI=
Received: by 10.216.166.67 with SMTP id f45mr3657230wel.112.1298412392156;
	Tue, 22 Feb 2011 14:06:32 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.246.11 with HTTP; Tue, 22 Feb 2011 14:06:12 -0800 (PST)
In-Reply-To: <AANLkTi==59FW4R15YrsSSR8EHWRgn2Gh9BJ2rUVPMWS+@mail.gmail.com>
References: <AANLkTi==59FW4R15YrsSSR8EHWRgn2Gh9BJ2rUVPMWS+@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 22 Feb 2011 15:06:12 -0700
X-Google-Sender-Auth: SqOWJ3hbJUfUKk9A3qNvx4V1zMg
Message-ID: <AANLkTinEjcR+J67A8CzR+oYSrhSZZK6sjHCcN8iL5TBb@mail.gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: poky@lists.yoctoproject.org
Subject: Re: Problem with METADATA_* vars
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
X-List-Received-Date: Tue, 22 Feb 2011 22:06:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 18, 2011 at 2:34 AM, Koen Kooi <koen@dominion.thruhere.net> wro=
te:
> I have a simple recipe that does:
>
> export METADATA_REVISION
> export METADATA_BRANCH
> export TARGET_SYS
>
> do_install() {
> =C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}
> =C2=A0=C2=A0=C2=A0 echo "Angstrom ${DISTRO_VERSION}" > ${D}${sysconfdir}/=
angstrom-version
> =C2=A0=C2=A0=C2=A0 echo "Built from branch: ${METADATA_BRANCH}" >>
> ${D}${sysconfdir}/angstrom-version
> =C2=A0=C2=A0=C2=A0 echo "Revision: ${METADATA_REVISION}" >>
> ${D}${sysconfdir}/angstrom-version
> =C2=A0=C2=A0=C2=A0 echo "Target system: ${TARGET_SYS}" >>
> ${D}${sysconfdir}/angstrom-version
>
> =C2=A0=C2=A0=C2=A0 [..]
> }

I realize this isn't a fix for the problem you're reporting, but your
exports are completely unnecessary here.  Your uses of ${} inside a
shell function are expanded by bitbake, not the shell.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

