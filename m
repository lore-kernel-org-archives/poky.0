Return-Path: <stefan@datenfreihafen.org>
Received: from sirius.lasnet.de (sirius.lasnet.de [78.47.116.19])
	by mx1.pokylinux.org (Postfix) with ESMTP id D16324C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 03:45:45 -0600 (CST)
Received: from [2001:638:602:1183:21f:16ff:fe0d:7d41] (helo=excalibur.local)
	by sirius.lasnet.de with esmtpsa 
	(Cipher TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.69 #1)
	id 1Pkvl0-0004v1-4S by authid <stefan@sostec.de> with cram_md5
	for <poky@yoctoproject.org>; Thu, 03 Feb 2011 10:45:44 +0100
Received: from stefan by excalibur.local with local (Exim 4.72)
	(envelope-from <stefan@excalibur.local>) id 1Pkvkz-0007ro-Bk
	for poky@yoctoproject.org; Thu, 03 Feb 2011 10:45:41 +0100
Date: Thu, 3 Feb 2011 10:45:41 +0100
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: poky@yoctoproject.org
Message-ID: <20110203094541.GH4580@excalibur.local>
References: <1296724843-6338-1-git-send-email-koen@dominion.thruhere.net>
MIME-Version: 1.0
In-Reply-To: <1296724843-6338-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: Mutt http://www.mutt.org/
X-KeyID: 0xDDF51665
X-Website: http://www.datenfreihafen.org/
User-Agent: Mutt/1.5.20 (2009-06-14)
X-Spam-Checker-Version: SpamAssassin 3.2.5 (2008-06-10) on sirius.lasnet.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,NO_RELAYS
	autolearn=ham version=3.2.5
Subject: Re: [PATCH] wpa-supplicant 0.7.3: fix packaging of dbus service files and fix layout variables
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
X-List-Received-Date: Thu, 03 Feb 2011 09:45:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello.

On Thu, 2011-02-03 at 10:20, Koen Kooi wrote:
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
>  .../wpa-supplicant/wpa-supplicant-0.7.inc          |    5 +++--
>  .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
>  2 files changed, 4 insertions(+), 3 deletions(-)

Looks good. Thanks for bringing thsi over from OE. I still have one more fix for
wpa-supplicant. Enabling the nl80211 driver. Thats needed for newer wifi drivers
and also the default in connman nowadays.

Getting this to build is still a bit of a mess. See my libnl2 vs libnl mail oe
the OE list.

This patch is fine as it stands and should go in. The info above is just to keep
you and Yocto in the loop that more wpa-supplicant changes are coming.

regards
Stefan Schmidt

