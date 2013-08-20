Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5137E00747
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 07:46:08 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7KEvTAa020202; Tue, 20 Aug 2013 15:57:29 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Wlv1JtWNVq2Y; Tue, 20 Aug 2013 15:57:29 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7KEvLHA020182
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Tue, 20 Aug 2013 15:57:24 +0100
Message-ID: <1377009931.25999.97.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Tue, 20 Aug 2013 15:45:31 +0100
In-Reply-To: <CAPhnLPDbAFt8EPdBPE86Jrg14wXkFuupwj=GXNT_G6k=PMAUtQ@mail.gmail.com>
References: <1376948717-8206-1-git-send-email-elizabeth.flanagan@intel.com>
	<1376949519.25999.65.camel@ted>
	<CAPhnLPDbAFt8EPdBPE86Jrg14wXkFuupwj=GXNT_G6k=PMAUtQ@mail.gmail.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] SDK_NAME: Change to include image name and machine.
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
X-List-Received-Date: Tue, 20 Aug 2013 14:46:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-08-19 at 16:10 -0700, Flanagan, Elizabeth wrote:
> There apparently are differences caused by each machines tunings (for
> example, meta-fsl-arm's imx53qsb is armv7a-vfp-neon, whereas qemuarm
> is armv5te). With SDK_NAME as it is, you'd end up with two files that
> have the exact same name and toolchains builds that are different.
> Example. qemuarm's toolchain env setup should be named
> 'environment-setup-armv5te-poky-linux-gnueabi' but the toolchain I
> just downloaded from the last master build is
> 'environment-setup-armv7a-vfp-neon-poky-linux-gnueabi' because it's
> the toolchain from the meta-fsl-arm build. I'm not sure how deep the
> issues go outside of these relatively small naming issues. ccing: Yi
> Zhao as I'm sure he can tell us more.
> 
> I agree that TUNE_PKGARCH is probably a better solution than
> TARGET_ARCH but with how I'm generating toolchains now (bitbake
> core-image-sato  -c populate_sdk) I can see a day when having the
> IMAGE_BASENAME included would be a very useful thing.
> 
> So, would anyone be opposed to:
> 
> SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"

Looks good to me, it was ${MACHINE} which worried me, TUNE_PKGARCH is
the right thing.

We should also remove [nostamp] from any SDK/ADT bits where it remains.

Cheers,

Richard


