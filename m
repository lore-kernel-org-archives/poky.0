Return-Path: <salvatore.fassi@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E69A84C800A4
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 11:01:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so5126333iym.35
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 09:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=lP/7ctDh+PId09d0UT0fmKZzivv2yOaMXQ/BMOpDFwA=;
	b=LjI2sY0JQ4nDMj57B8P5JYGAl/y0zYv50pGtWo6LjsCvpUXI0tMib5wgEb5JC1o8BB
	ddgXgs6xWP7fBu5xUHZ8LodZrFvYiWzrswvygQA3y54tBfQPHGlMXfxecrSAP6oZHSJ6
	TbLUN9W89Vz66APaSaI63iSvPWakp7f/tEg8g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=q7eD85BFzC/VpHFNwrl+jPNGMUeItnNfA48iPG8KYI6loxritscIEZ0nMM9CAbRYbx
	yUDCXaDqF9uvBu8LinHpDnWATqiTVY1kol2qo1FdQqDUQ3oDhwNDtlUP+16BnLeirsP5
	7T5dRHuf4hC+kZjzZA1hwu4eBuCgnICTj3inA=
MIME-Version: 1.0
Received: by 10.42.71.84 with SMTP id i20mr3551823icj.488.1302278486607; Fri,
	08 Apr 2011 09:01:26 -0700 (PDT)
Received: by 10.42.219.202 with HTTP; Fri, 8 Apr 2011 09:01:26 -0700 (PDT)
Date: Fri, 8 Apr 2011 18:01:26 +0200
Message-ID: <BANLkTim_HeJkV8zqEQ_non9Aq3g57j=6ag@mail.gmail.com>
From: Salvatore Fassi <salvatore.fassi@gmail.com>
To: poky@yoctoproject.org
Subject: xf86-video-fbdev missing on Poky laverne
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
X-List-Received-Date: Fri, 08 Apr 2011 16:01:27 -0000
Content-Type: multipart/alternative; boundary=001517576c8097c97e04a06a56b8

--001517576c8097c97e04a06a56b8
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I need to use the standard xserver-xf86-lite with the xf86-video-fbdev
driver but I've just noticed that it is missing from Poky laverne...
I also noticed that it's available in the standard oe release...how can I
obtain a working recipe for Poky for it?

My purpose is to be able to use a multi touch screen with X...but
unfortunately it seems that it won't work with Xfbdev (the one I'm running
now with poky-image-core).
Can you confirm that it's not possible to use a multitouch screen with
Xfbdev?

Thank you.

Best regards.

Salvo.

--001517576c8097c97e04a06a56b8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<br><br>I need to use the standard xserver-xf86-lite with the xf86-v=
ideo-fbdev driver but I&#39;ve just noticed that it is missing from Poky la=
verne...<br>I also noticed that it&#39;s available in the standard oe relea=
se...how can I obtain a working recipe for Poky for it?<br>
<br>My purpose is to be able to use a multi touch screen with X...but unfor=
tunately it seems that it won&#39;t work with Xfbdev (the one I&#39;m runni=
ng now with poky-image-core).<br>Can you confirm that it&#39;s not possible=
 to use a multitouch screen with Xfbdev?<br>
<br>Thank you.<br><br>Best regards.<br><br>Salvo.<br><br>

--001517576c8097c97e04a06a56b8--
