Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f176.google.com (mail-px0-f176.google.com
	[209.85.212.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BCCC4C80335
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 22:57:54 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi11 with SMTP id 11so522464pxi.35
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 20:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=BtiZmXnK1c7D3t/6ad/epH3A+K5S8Z+6myKojRFkI5A=;
	b=x56bKSf2chAqRSjiJ+EF2pPAWTflvAxh5lis2/ROuFbqTNuEokV/5iZ4CdQtYI6Gqo
	iLZLNveycwckjhGOGJ20erIxEHQgUU2rrwOaDQv1k1qvzZZEMY1TS3RV/MuQ/vYZfEIF
	ANydU0ntzEi8X2QppicYgicdZJOrIjgzSxzNs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=nXtSLK5fftInS0pMuMb0fC21mCMr8N6b+klba0IXYpRc/1SOXqh24tH/AQklxAfWjB
	XP8ZLAztSsJgTuY2fzWPlVFXCwNbmKQVnAOtmYDvkf2I/gbokPnuGvwY37RYZT7MfuMn
	veRxxCW7dGKL7ZtiaB+TRkE9LMR8HqKd0lElQ=
MIME-Version: 1.0
Received: by 10.142.250.19 with SMTP id x19mr2856485wfh.308.1298437073250;
	Tue, 22 Feb 2011 20:57:53 -0800 (PST)
Received: by 10.142.170.3 with HTTP; Tue, 22 Feb 2011 20:57:53 -0800 (PST)
Date: Wed, 23 Feb 2011 10:27:53 +0530
Message-ID: <AANLkTin34iXW7Zy7Z4NJfa3Fmv3LSt8y1eYH4UoNWcac@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: errors while building the poky
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
X-List-Received-Date: Wed, 23 Feb 2011 04:57:54 -0000
Content-Type: multipart/alternative; boundary=001636ed69a583a9ab049cebf0ca

--001636ed69a583a9ab049cebf0ca
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to build the poky image    --  *poky-image-minimal-live.*
I added the packages  to poky-image-minimal.bb

    * alsa-lib
     alsa-tools
     alsa-utils*

But i am getting the error like

*./configure: line 4246:syntax error near unexpected token `1.0.0'
./configure: line 4246: `AM_PATH_ALSA(1.0.0)'*

please help me someone in finding the solution.
appeciated if anyone helps me.

Thanks,
sai

--001636ed69a583a9ab049cebf0ca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am trying to build the poky image=A0=A0=A0 --=A0 <b>poky-image=
-minimal-live.</b><br>I added the packages=A0 to  <a href=3D"http://poky-im=
age-minimal.bb" target=3D"_blank">poky-image-minimal.bb</a> <br>=A0=A0=A0=
=A0=A0 <br>=A0=A0=A0=A0<b> alsa-lib<br>
=A0=A0=A0=A0 alsa-tools <br>
=A0=A0=A0=A0 alsa-utils</b><br><br>But i am getting the error like<br><br><=
b>./configure: line 4246:syntax error near unexpected token `1.0.0&#39;<br>=
./configure: line 4246: `AM_PATH_ALSA(1.0.0)&#39;</b><br><br>please help me=
 someone in finding the solution.<br>

appeciated if anyone helps me.<br><br>Thanks,<br>sai<br><br>

--001636ed69a583a9ab049cebf0ca--
