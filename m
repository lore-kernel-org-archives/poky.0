Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f182.google.com (mail-iw0-f182.google.com
	[209.85.214.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE65E4C80050
	for <poky@yoctoproject.org>; Sun, 12 Dec 2010 09:04:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn39 with SMTP id 39so10761843iwn.13
	for <poky@yoctoproject.org>; Sun, 12 Dec 2010 07:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type;
	bh=7zz3JNnPKoxXIhTAYOUlZHqw+KlvQUPiU0Il1E5O4HU=;
	b=U1T1bO6idqb5Yh0fIdiUmOBdeAI4gtJUrZ/Xo9E/pQtdz0Vpd/5+tw1tWg9uK/yYlT
	SfoefnNQBfxbh9RLTJRv4ifRFJ8zcvaHQ1raXgUaLl8+gwjEIy40xsd4i9Wfg7/uA5EI
	pTAvx47fgMG7UPc35zGAXcOyYpFlR/FTBkHhE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=MyAmfck8R7iLV65Lu0bMAuF9uXoqLCfEizD9sPZsyAF7eqsohzq2WkZIkJnwU0ATxh
	CVaNy2k5GuFIuh/YuGM72fwUYfFMkYISsBF/MSY6c63/XYI5MUh+hocTyvWkBTRq2V/j
	Wu9x42najTevrafsT/AvVYGzUyBA72USB5CJU=
MIME-Version: 1.0
Received: by 10.231.38.10 with SMTP id z10mr1112124ibd.107.1292166276927; Sun,
	12 Dec 2010 07:04:36 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Sun, 12 Dec 2010 07:04:36 -0800 (PST)
In-Reply-To: <1292166104-22971-1-git-send-email-fransmeulenbroeks@gmail.com>
References: <1292166104-22971-1-git-send-email-fransmeulenbroeks@gmail.com>
Date: Sun, 12 Dec 2010 16:04:36 +0100
Message-ID: <AANLkTinXasdCKTy=K=+cLue-J_=8ujL8qHzGGAXMfj65@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Subject: Re: [PATCH 1/4] libcdio: new recipe (brought over from OE)
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
X-List-Received-Date: Sun, 12 Dec 2010 15:04:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

Apologies for resending this. This was not intended. Frans.

