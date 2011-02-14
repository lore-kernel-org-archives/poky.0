Return-Path: <stefan@datenfreihafen.org>
Received: from sirius.lasnet.de (sirius.lasnet.de [78.47.116.19])
	by mx1.pokylinux.org (Postfix) with ESMTP id E38594C8007E
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 02:07:22 -0600 (CST)
Received: from [2001:638:602:1183:21f:16ff:fe0d:7d41] (helo=excalibur.local)
	by sirius.lasnet.de with esmtpsa 
	(Cipher TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.69 #1)
	id 1PotSh-0006t9-90 by authid <stefan@sostec.de> with cram_md5;
	Mon, 14 Feb 2011 09:07:21 +0100
Received: from stefan by excalibur.local with local (Exim 4.72)
	(envelope-from <stefan@excalibur.local>)
	id 1PotSf-00064A-Iw; Mon, 14 Feb 2011 09:07:09 +0100
Date: Mon, 14 Feb 2011 09:07:09 +0100
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Message-ID: <20110214080709.GC14931@excalibur.local>
References: <cover.1297415188.git.dongxiao.xu@intel.com>
	<0a9dc7a03251c1521a2e5baaead56055207ae72f.1297415188.git.dongxiao.xu@intel.com>
	<20110211100751.GF9652@excalibur.local>
	<D5AB6E638E5A3E4B8F4406B113A5A19A33285081@shsmsx501.ccr.corp.intel.com>
	<20110214073113.GA14931@excalibur.local>
	<D5AB6E638E5A3E4B8F4406B113A5A19A3328545A@shsmsx501.ccr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A3328545A@shsmsx501.ccr.corp.intel.com>
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
X-List-Received-Date: Mon, 14 Feb 2011 08:07:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello.

On Mon, 2011-02-14 at 15:34, Xu, Dongxiao wrote:
> Stefan Schmidt wrote:
> > 
> > That are the ones that come in mind quickly. The first three are not
> > in  Poky (at least as afar as I know). For the networkmanager part I
> > would be interested how you got it working with libnl2.  
> 
> Actually networkmanager has beed deprecated and deleted in poky.
> Now connman is the default network configuration tool.

Ah, that explains why you don't have problems with it. :)

regards
Stefan Schmidt

