Return-Path: <kergoth@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5094D4C804D9
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 08:38:20 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so6000029vws.35
	for <poky@yoctoproject.org>; Tue, 07 Jun 2011 06:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=tWpgj6wVkGTX7F4aIDT1lILFsX3mSIMN3fQlv2Lm1y8=;
	b=vbdFzQ5gtEbcrqZDroNG3ziocv2YNfp0+3qq5GdpngYhe/BM/8G/ET+03Dfn3bYXcO
	e0gBFmBEBgogIf6wSj49ZKyx/xS5/EKQ74+fIjjjlJOfEVqkhsYDfzceNwtxxfMXyb5Q
	5ZP/6tX5xij0CcFfM1aZENPYckF2FZtYcQOtk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=aeqW6F1ARgxWqNbTS8DsIQgAqvZzyexGraiSYyTCTQIGZRWxT0oUNJzwVMfD75skzH
	AfBZwBUoEsjdGuP2AmId2Nj9CmIGDSKiREME/EQxBwzbweZerUoFv8C2z3U2JrVkveHt
	pnhJpvIAAyIIbuMysFnvvrth7pJ5UlHJbzz18=
Received: by 10.52.97.132 with SMTP id ea4mr751680vdb.115.1307453899050; Tue,
	07 Jun 2011 06:38:19 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.101.134 with HTTP; Tue, 7 Jun 2011 06:37:59 -0700 (PDT)
In-Reply-To: <fb45c999724a0d9f022ea95a79f7f3aebd5d0ab6.1307430287.git.lianhao.lu@intel.com>
References: <cover.1307430283.git.lianhao.lu@intel.com>
	<fb45c999724a0d9f022ea95a79f7f3aebd5d0ab6.1307430287.git.lianhao.lu@intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 7 Jun 2011 06:37:59 -0700
X-Google-Sender-Auth: 79yzPkbN4N45xTjG8Ij8ms9d-j4
Message-ID: <BANLkTikB2m5z648AtQ5WKi=ix-f7NZBD9A@mail.gmail.com>
To: Lianhao Lu <lianhao.lu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [Image_Creator_Patch 1/1] bitbake/hob: Not display false error msg at hob exit.
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
X-List-Received-Date: Tue, 07 Jun 2011 13:38:20 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 7, 2011 at 12:12 AM, Lianhao Lu <lianhao.lu@intel.com> wrote:
> Not display the false error msg "Nothing to do ..." when hob ui exits by
> adding a flag of bb.ui.allowNoneAction.
>
> Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>

Maybe we should move the handling of this message into the UIs, rather
than it being in the cooker, either as additional logic (I do think we
need to find a better way of handling the command line action) or as
an event, then it would be up to the UI if it should display such a
message.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

