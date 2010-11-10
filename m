Return-Path: <adamthecamper@gmail.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CAB34C80BCF
	for <poky@lists.pokylinux.org>; Wed, 10 Nov 2010 11:06:50 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pug.o-hand.com (Postfix)
	id 8562712EC2F5; Wed, 10 Nov 2010 11:43:26 -0600 (CST)
Received: from mail-pv0-f172.google.com (mail-pv0-f172.google.com
	[74.125.83.172])
	by pug.o-hand.com (Postfix) with ESMTP id 5CB6B12EC1F4
	for <poky@o-hand.com>; Wed, 10 Nov 2010 11:43:26 -0600 (CST)
Received: by pvc21 with SMTP id 21so182148pvc.3
	for <poky@o-hand.com>; Wed, 10 Nov 2010 09:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:from:date
	:message-id:subject:to:content-type:content-transfer-encoding;
	bh=elXIlOCFqBMOEsusagYuulV+JRijAl+NTJiKfLnQMxk=;
	b=lch/+ad291Ox02wecZ6T2wDvlmE0P0so/JH9uW90yhThiAaWdKZVnk5F4haFGiGB9D
	hszcR1qfXd4Kr+9HB7MOM1W2J4bK7lEvbyROavEvT1K4TEW3GpLgfrodEmc9Jj33jdcC
	5HCdi+QWxhfqS49UOHNViavVrLZzwpTT8rVuk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type
	:content-transfer-encoding;
	b=kvGuaWthprSz9eO84UeZzvvzTAm0mxvd42aujeQfmfB2yXUJekxywltB39C0Wm9QXD
	D4/tLuDEt9yIOLDVG83N0ymjrnSlTBEd7WoH9MjHQ4PeDow9XqF/q9EO6bPKAlDZ56kq
	DegN0ZRH8UggW8QPGXYruQlEdP3luvjlZCb8E=
Received: by 10.42.216.142 with SMTP id hi14mr5596399icb.511.1289408804224;
	Wed, 10 Nov 2010 09:06:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.231.17.141 with HTTP; Wed, 10 Nov 2010 09:06:24 -0800 (PST)
From: Adam Saleh <adamthecamper@gmail.com>
Date: Wed, 10 Nov 2010 18:06:24 +0100
Message-ID: <AANLkTimhDA7iuBkedMY-Q64n38Wc861ymKe-hrH6cg2k@mail.gmail.com>
To: poky@o-hand.com
Subject: How much space does poky need?
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
X-List-Received-Date: Wed, 10 Nov 2010 17:06:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am making myself a poky-build server, and I remember that when in
use, build system with all downloaded and compiled packages could take
up a quite a lot of space (several gigs). Unfortunately, I don=C2=A7t
remember how many.
Could you advise me how large partition should I set for the
enviroment? I plan on building mainly qemu-x86 and qemu-arm targets.

Thanks

Adam

