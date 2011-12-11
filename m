Return-Path: <flocirel@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42E26E006B8
	for <poky@yoctoproject.org>; Sun, 11 Dec 2011 02:58:07 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so8044406wgb.11
	for <poky@yoctoproject.org>; Sun, 11 Dec 2011 02:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gnHlVqsdTRviOvz98/NV9ujZ0YhwwFg8bCrfY4d5B3E=;
	b=sIkt59p+pX2zRYoxn5Rzf5+PxePIu6IkUqKBb1fjDB7uDjIwvcYuY3Ba/KWBe80mX6
	+u7hwoFhpRsgtUymggUrmV1bs15wbAIvQIF6IWdWxO0sLDmHHzLzRbqHNFDEQBChkTfM
	1H/eBMz6eECG5CBhY1ePB9PPYWw3JQHvrbjtU=
MIME-Version: 1.0
Received: by 10.227.206.144 with SMTP id fu16mr11663587wbb.23.1323601085854;
	Sun, 11 Dec 2011 02:58:05 -0800 (PST)
Received: by 10.223.75.200 with HTTP; Sun, 11 Dec 2011 02:58:05 -0800 (PST)
Date: Sun, 11 Dec 2011 12:58:05 +0200
Message-ID: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
To: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Sun, 11 Dec 2011 10:58:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I am seeing this issue too. Basically, even if gnutls is not
explicitly added to IMAGE_INSTALL, some GPLv3 rpm (the -extra one) is
getting added to the rootfs in spite of the restriction to not include
GPLv3 packages. Any idea on how to get a list of package dependencies
to get a clue at least on why gnutls (or which of the rpm's it creates
) gets(get) dragged in? Any way to find this out automatically?

