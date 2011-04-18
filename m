Return-Path: <akshat.embedded@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9386D4C804D9
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 01:20:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so3374435qwj.35
	for <poky@yoctoproject.org>; Sun, 17 Apr 2011 23:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=1U+Cb2htAogZUz+0rpGp0GJhpulmBT0bLvIaITECq00=;
	b=tQIrAbXTds3wewTC+12zJ5rb57nWxrrQaFqir3wfUeaY1Lr8MqfW+LNStGe/3lcphJ
	1RpyEQDFezdRQp7LmhuYQEW4heLk3GD9TZkDYMEuiSMsHuwgkSGKpLQyLyQoWrM7PqIx
	RgvLGM64DxLKYGS7BAfW0gPUpDFxhZuGaik2Y=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=Ds4J+IH9ZigZsXs/v7Rryihq5VWDuunFlqCunAH3j/wJXqbwZjXPyXDliXQrIy0Qwp
	FBV+4nVtdbyXuRkO/i32XSkN4RgR/tpUX4d21XnQnSo8Lsq2VKZZH2yJ6bByfS/fVlWp
	tkZN7x/LDGMiI70TbQvGg8tabUslrOMzMP0e8=
MIME-Version: 1.0
Received: by 10.229.130.168 with SMTP id t40mr3266205qcs.140.1303107621026;
	Sun, 17 Apr 2011 23:20:21 -0700 (PDT)
Received: by 10.229.189.71 with HTTP; Sun, 17 Apr 2011 23:20:20 -0700 (PDT)
Date: Mon, 18 Apr 2011 11:50:20 +0530
Message-ID: <BANLkTimC2=uXFQiy8bt8UU2Q4OzwcMGFTg@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: poky@yoctoproject.org
Subject: Unable to get kernel modules
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
X-List-Received-Date: Mon, 18 Apr 2011 06:20:22 -0000
Content-Type: multipart/alternative; boundary=0015175925fadafab704a12b62ff

--0015175925fadafab704a12b62ff
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am building my image with : bitbake poky-image-minimal-live
But after booting/installing this image, lsmod, does not show any modules
loaded into the kernel. Also, the folder */lib/modules/2.6.34.7-wr-standard* in
the rfs does not contains the following files/folders:

   - modules.builtin
   - modules.order
   - kernel

Though they are present in the *
tmp/sysroots/core2-poky-linux/lib/modules/2.6.34.7-wr-standard.*
*
*
Also, while building, *modules-2.6.34.7-wr-standard-r12-atom-pc.tgz* is
formed in tmp/deploy/images, which consists of the above mentioned
files/folders, but does not seem to be integrated into the image.

Can anyone please suggest/guide me how to integrate loadable modules into
the image.

-- 
Akshat

--0015175925fadafab704a12b62ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I am building my image with : bitbake poky-image-min=
imal-live</div><div>But after booting/installing this image,=A0lsmod, does =
not show any modules loaded into the kernel. Also, the folder=A0<b>/lib/mod=
ules/2.6.34.7-wr-standard</b>=A0in the rfs=A0does not contains the followin=
g files/folders:</div>
<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><m=
eta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><div=
><ul><li>modules.builtin =A0</li><li>modules.order</li><li>kernel</li></ul>=
<div>Though they are present in the=A0<b>tmp/sysroots/core2-poky-linux/lib/=
modules/2.6.34.7-wr-standard.</b></div>
<div><b><br></b></div><div>Also, while building, <b>modules-2.6.34.7-wr-sta=
ndard-r12-atom-pc.tgz</b> is formed in tmp/deploy/images, which consists of=
 the above mentioned files/folders, but does not seem to be integrated into=
 the image.</div>
<div><br></div><div>Can anyone please suggest/guide me how to integrate loa=
dable modules into the image.=A0</div></div><div><br></div><div>-- <br><div=
><span style=3D"color:rgb(51, 51, 51);font-family:georgia, serif">Akshat=A0=
</span></div>
<div><br></div><br>
</div>

--0015175925fadafab704a12b62ff--
