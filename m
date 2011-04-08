Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E5C134C80132
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 04:02:04 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so1762150pve.35
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 02:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=hlBtQhuDahDASuRM1Kb9NDlKe70Gn+mzK0FfwRQGLdM=;
	b=KIkWR5cOg1iLvOMHTyp5vb33VGCmfBelCkhPaav7KkDfa1zEyTuzw2C27z/8/waUdR
	7taXKcV9qCf7ZcYm1eRV/2Uwiq/24ZtQcCpyqo4gICC1ykeBydP3P0H5lLZKqcm3reqJ
	NErmA6n9isP8/gnIi4Vk6azr9IRI3glXiosyY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=mpwGRXNhb0/IVc7Rm94tLYPO6/ySdABJFbwl2euaNl6NAtEBlhOv93a85c3W6b+cIk
	+40nYNpVNBvuHnQxI5e4QwoSpwhNLLNLU8p0qdMW1h8BpmtlFg0Xom7WtT7KRP8/DDmG
	spPsClXXugIT02x+i4P6DjlMMuumUJ4iTu7Uk=
MIME-Version: 1.0
Received: by 10.143.87.3 with SMTP id p3mr1649081wfl.153.1302253324098; Fri,
	08 Apr 2011 02:02:04 -0700 (PDT)
Received: by 10.68.56.161 with HTTP; Fri, 8 Apr 2011 02:02:04 -0700 (PDT)
In-Reply-To: <c736c43ae24bae2af7e059bf3770c6f422c75a71.1302252022.git.xiaofeng.yan@windriver.com>
References: <cover.1302252022.git.xiaofeng.yan@windriver.com>
	<c736c43ae24bae2af7e059bf3770c6f422c75a71.1302252022.git.xiaofeng.yan@windriver.com>
Date: Fri, 8 Apr 2011 11:02:04 +0200
Message-ID: <BANLkTik+MzYHC1w4fLm+WG5oDzWf6OFvbg@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] eglibc-package.inc: Add eglibc-binarys, eglibc-localedatas, eglibc-gconvs and eglibc-charmps to variable PACKAGE
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
X-List-Received-Date: Fri, 08 Apr 2011 09:02:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Apr 8, 2011 at 10:43 AM, Xiaofeng Yan
<xiaofeng.yan@windriver.com> wrote:
>
> The purpose to add above variables is for installing them to lsb-image ea=
sy. or not these packages about locale will occupy too much space in list =
=A0taks-poky-lsb.bb
> eglibc-binarys include packages "eglibc-binary-*"

Rename eglibc-binary to eglibc-binaries.

Can a native English speaker comment on this pls?

Regards,
--=20
Leon

