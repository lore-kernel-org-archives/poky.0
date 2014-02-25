Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 909F6E0084D
	for <poky@yoctoproject.org>; Tue, 25 Feb 2014 08:33:55 -0800 (PST)
Received: by mail-qa0-f46.google.com with SMTP id k15so629873qaq.5
	for <poky@yoctoproject.org>; Tue, 25 Feb 2014 08:33:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=kDMt/sJ+vVUvOv3LwHALIJSPaXQER55jkSDUb8v4wIU=;
	b=D6Xeiqd0DRTfjuyeBiGEJ+W0L0mlJCwvODqXWSwQ2+KtNggkg9r5XGJ38oPCJtpu1S
	y/S60J4Rrj0DFIe+LagwWaqOmIUl/VQiXhyg8YqFrPlaA/pkppoLiXoqoUw158i1J9yr
	bqgvLh90XqTU7JqukVWcw3vFHdMR1/VHSJNHSxCSNvTiD0kLvkhwDtGej6X0DIglGIhY
	YRz4xmvNpEAGO2VQ1q/4Lp1jGTid7QuL7kNsbvXc/1Of9OUrD5v/ZYTWUoZo2Jg0opaI
	lTpfCqrjscKeNvRUwljPgdrxVBO3t7PcdndTtX5FHDUpYx9gDVwk4CmLlIOSIL35aAH9
	z7ig==
X-Gm-Message-State: ALoCoQnAzn1FIvRSLHNXHuGF4bTD8yTO6HIGlMn98RcpA6Zg0T2MDK38+PvFsFJ+2twjzmzNvHpG
X-Received: by 10.140.42.54 with SMTP id b51mr855973qga.87.1393346035032; Tue,
	25 Feb 2014 08:33:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Tue, 25 Feb 2014 08:33:34 -0800 (PST)
In-Reply-To: <ba11cffc684b4f0588b819270e6539b2@BLUPR05MB037.namprd05.prod.outlook.com>
References: <54eef9b1596a474c8b0817db566f492d@BLUPR05MB037.namprd05.prod.outlook.com>
	<CAJTo0LZm5RVV2CNN7w9OyC0=Hk8vVrGL515p4H3sNN_r9iQ9zA@mail.gmail.com>
	<ba11cffc684b4f0588b819270e6539b2@BLUPR05MB037.namprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Feb 2014 16:33:34 +0000
Message-ID: <CAJTo0LapdJqMb53d0ZOn1iOvafZDV4ix9VTfrr22vVTTGJBOHw@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Setup for hot plugging Ethernet
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
X-List-Received-Date: Tue, 25 Feb 2014 16:33:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 25 February 2014 16:28, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> In looking through the documentation for connman, all the examples appear=
 to assume systemd is used for init.  I am planning in the future to move f=
rom sysvinit to systemd.  In your opinion, would it be better to do that be=
fore attempting to use connman, or is connman setup relatively easy under s=
ysvinit?

connman works fine with sysvinit, the Poky images have been using
connman for several releases and they don't use systemd.

Ross

