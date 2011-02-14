Return-Path: <stefan@datenfreihafen.org>
Received: from sirius.lasnet.de (sirius.lasnet.de [78.47.116.19])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DA244C808F9
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 01:31:20 -0600 (CST)
Received: from [2001:638:602:1183:21f:16ff:fe0d:7d41] (helo=excalibur.local)
	by sirius.lasnet.de with esmtpsa 
	(Cipher TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.69 #1)
	id 1Postw-0006Tj-0G by authid <stefan@sostec.de> with cram_md5;
	Mon, 14 Feb 2011 08:31:18 +0100
Received: from stefan by excalibur.local with local (Exim 4.72)
	(envelope-from <stefan@excalibur.local>)
	id 1Postu-00048k-3m; Mon, 14 Feb 2011 08:31:14 +0100
Date: Mon, 14 Feb 2011 08:31:13 +0100
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Message-ID: <20110214073113.GA14931@excalibur.local>
References: <cover.1297415188.git.dongxiao.xu@intel.com>
	<0a9dc7a03251c1521a2e5baaead56055207ae72f.1297415188.git.dongxiao.xu@intel.com>
	<20110211100751.GF9652@excalibur.local>
	<D5AB6E638E5A3E4B8F4406B113A5A19A33285081@shsmsx501.ccr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A33285081@shsmsx501.ccr.corp.intel.com>
X-Mailer: Mutt http://www.mutt.org/
X-KeyID: 0xDDF51665
X-Website: http://www.datenfreihafen.org/
User-Agent: Mutt/1.5.20 (2009-06-14)
X-Spam-Checker-Version: SpamAssassin 3.2.5 (2008-06-10) on sirius.lasnet.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,NO_RELAYS
	autolearn=ham version=3.2.5
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 14 Feb 2011 07:31:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello.

On Mon, 2011-02-14 at 08:55, Xu, Dongxiao wrote:
> 
> Stefan Schmidt wrote:
> > Hello.
> > 
> > On Fri, 2011-02-11 at 17:11, Dongxiao Xu wrote:
> >> From: Dongxiao Xu <dongxiao.xu@intel.com>
> >> 
> >>  # Driver interface for FreeBSD net80211 layer (e.g., Atheros driver)
> >> #CONFIG_DRIVER_BSD=y @@ -404,4 +405,4 @@ CONFIG_PEERKEY=y  #LIBS_c +=
> >> -lbfd -liberty -lz  CONFIG_TLS = gnutls  CONFIG_GNUTLS_EXTRA=y
> >> -CONFIG_CTRL_IFACE_DBUS=y
> >> +CONFIG_CTRL_IFACE_DBUS_NEW=y
> > 
> > Any reason not enable both dbus interfaces? They can happily life
> > next to each other. Thats how I did it in OE. 
> 
> It is OK for me to enable both options. I will change it in my next pull request.

Thanks.

> >> diff --git
> >> a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> >> b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> >> index 7865b8f..cd62d8f 100644
> >> --- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> >> +++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> >> @@ -6,7 +6,7 @@ LICENSE = "GPLv2 | BSD"
> >>  LIC_FILES_CHKSUM =
> >>                     
> >>                     
> >> "file://../COPYING;md5=c54ce9345727175ff66d17b67ff51f58 \
> >> file://../README;md5=54cfc88015d3ce83f7156e63c6bb1738 \
> >> file://wpa_supplicant.c;beginline=1;endline=17;md5=acdc5a4b0d6345f21f136eace747260e"
> >> -DEPENDS = "gnutls dbus" +DEPENDS = "gnutls dbus libnl"   
> > 
> > Hmm, does poky onl yhave libnl2 recipes or both libnl and libnl2?
> > 
> > If the later you should depend on libnl2 instead. I'm trying to get
> > rid of these libnl mess in OE and getting all packges over to libnl2.
> > Would be great if we could share resources here. The iw package for
> > example can also be switched easily.   
> 
> Currently, Poky only has libnl2, and recipe name is libnl_2.0.bb, thus I added "libnl" as the wpa_supplicant's DEPENDS.

That explains it. So libnl is fine in your case. In OE we have it named
libnl2_2.0.bb to not clash with the libnl recipes.

> Something intersting that, though APIs are incompatible between libnl and libnl2, we didn't see build issues
> except this wpa_supplicant case when upgrading libnl from 1.1 to 2.0.

I would expect that Poky does not have any recipes included that only support
the old libnl version. See the list below.

> Could you list some OE packages which need libnl 1.1 as examples? We can check if we have included them in our current Poky build.

bmon
ibrdtn
lowpan-tools
networkmanager
networkmanager-openvpn

That are the ones that come in mind quickly. The first three are not in  Poky
(at least as afar as I know). For the networkmanager part I would be interested
how you got it working with libnl2.

regards
Stefan Schmidt

