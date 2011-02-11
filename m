Return-Path: <stefan@datenfreihafen.org>
Received: from sirius.lasnet.de (sirius.lasnet.de [78.47.116.19])
	by mx1.pokylinux.org (Postfix) with ESMTP id 379504C800AB
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 04:07:57 -0600 (CST)
Received: from [2001:638:602:1183:d951:1b7b:fca1:e19c] (helo=excalibur.local)
	by sirius.lasnet.de with esmtpsa 
	(Cipher TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.69 #1)
	id 1Pnpur-0003Cb-44 by authid <stefan@sostec.de> with cram_md5
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 11:07:55 +0100
Received: from stefan by excalibur.local with local (Exim 4.72)
	(envelope-from <stefan@excalibur.local>) id 1Pnpup-00041r-U1
	for poky@yoctoproject.org; Fri, 11 Feb 2011 11:07:51 +0100
Date: Fri, 11 Feb 2011 11:07:51 +0100
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: poky@yoctoproject.org
Message-ID: <20110211100751.GF9652@excalibur.local>
References: <cover.1297415188.git.dongxiao.xu@intel.com>
	<0a9dc7a03251c1521a2e5baaead56055207ae72f.1297415188.git.dongxiao.xu@intel.com>
MIME-Version: 1.0
In-Reply-To: <0a9dc7a03251c1521a2e5baaead56055207ae72f.1297415188.git.dongxiao.xu@intel.com>
X-Mailer: Mutt http://www.mutt.org/
X-KeyID: 0xDDF51665
X-Website: http://www.datenfreihafen.org/
User-Agent: Mutt/1.5.20 (2009-06-14)
X-Spam-Checker-Version: SpamAssassin 3.2.5 (2008-06-10) on sirius.lasnet.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,NO_RELAYS
	autolearn=ham version=3.2.5
Subject: Re: [PATCH 1/2] wpa-supplicant: change dbus interface
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
X-List-Received-Date: Fri, 11 Feb 2011 10:07:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello.

On Fri, 2011-02-11 at 17:11, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
>  # Driver interface for FreeBSD net80211 layer (e.g., Atheros driver)
>  #CONFIG_DRIVER_BSD=y
> @@ -404,4 +405,4 @@ CONFIG_PEERKEY=y
>  #LIBS_c += -lbfd -liberty -lz
>  CONFIG_TLS = gnutls
>  CONFIG_GNUTLS_EXTRA=y
> -CONFIG_CTRL_IFACE_DBUS=y
> +CONFIG_CTRL_IFACE_DBUS_NEW=y

Any reason not enable both dbus interfaces? They can happily life next to each
other. Thats how I did it in OE.

> diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> index 7865b8f..cd62d8f 100644
> --- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> +++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> @@ -6,7 +6,7 @@ LICENSE = "GPLv2 | BSD"
>  LIC_FILES_CHKSUM = "file://../COPYING;md5=c54ce9345727175ff66d17b67ff51f58 \
>                      file://../README;md5=54cfc88015d3ce83f7156e63c6bb1738 \
>                      file://wpa_supplicant.c;beginline=1;endline=17;md5=acdc5a4b0d6345f21f136eace747260e"
> -DEPENDS = "gnutls dbus"
> +DEPENDS = "gnutls dbus libnl"

Hmm, does poky onl yhave libnl2 recipes or both libnl and libnl2?

If the later you should depend on libnl2 instead. I'm trying to get rid of these
libnl mess in OE and getting all packges over to libnl2. Would be great if we
could share resources here. The iw package for example can also be switched
easily.

I fear I only have time to send patches to poky after the OE release in march.
If you want to cherry-pick (if possible) patches that of course fine.

regards
Stefan Schmidt

