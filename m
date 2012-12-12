Return-Path: <eu@felipetonello.com>
Received: from mail-yh0-f42.google.com (mail-yh0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B7A5E00294
	for <poky@yoctoproject.org>; Tue, 11 Dec 2012 16:56:21 -0800 (PST)
Received: by mail-yh0-f42.google.com with SMTP id g71so20934yhg.29
	for <poky@yoctoproject.org>; Tue, 11 Dec 2012 16:56:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=DzbKhBh6sEuRdH4Wv0I9kH8HcUAyLCzCQUMY6oPBKGg=;
	b=PPJ2+XDxr/2Qleyjld+XUZlXbFHPoSclX+GDveaE+ko9tkpilLHI2gXz8D+ppzOX8i
	+QAG+Xl9df0RGB6AaDyooWXuadwYB9K0TQKeQ6vNhkMGGN5hYCbYntbjyJycN5JulZxI
	vZWrnyU+xQTiJ1uD/br+32egk/5BWLuK3zg/Ok+JdVQZuqAvR2Us6LbBynmNl8dY0Xv2
	ESVd2IMFi/1H0TXSyuC0iDJ3vmREr7V/bFsHOgaEbmNSfZfXGGaU0p3XzaZvQRcY5XoU
	uPqO7vLORLg+pw4ldBWFeDRJoTkMYrl2Bygq6RE7dvcdwSiVWTjSZW4nl3WhB17g14Xn
	CZqQ==
Received: by 10.236.92.15 with SMTP id i15mr30734166yhf.85.1355273780757;
	Tue, 11 Dec 2012 16:56:20 -0800 (PST)
Received: from [192.168.48.44] (wsip-70-183-20-162.oc.oc.cox.net.
	[70.183.20.162])
	by mx.google.com with ESMTPS id f15sm32786593yhi.11.2012.12.11.16.56.18
	(version=SSLv3 cipher=OTHER); Tue, 11 Dec 2012 16:56:19 -0800 (PST)
Message-ID: <50C7D64A.2090403@felipetonello.com>
Date: Tue, 11 Dec 2012 16:56:42 -0800
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQn3uZYaYZS4q1z0VBr/q3BBz/qaO31m9GT3dE37k1JY1qpusDL+ahpi3wjDaAaoz5oqDgrM
Subject: Qt commercial support
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Dec 2012 00:56:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Basically there is still no easy way to support commercial Qt versions. 
Yocto Bug #2505 fixes part of it but not all.

In my case I have to provide, not just a qt4-x11-commercial recipe, but 
all others native and sdk recipes basically because the OE-Core ones 
enforces the download of the opensource version.

It would be perfect if we can provide our own .tar.gz or git repo with 
our modified Qt version.

I know that we can provide a bbappend to change that but still not a 
perfect solution.

Is there a better way to fix that? Maybe a patch idea.

Regards

Felipe Tonello

