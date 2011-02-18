Return-Path: <stefan@datenfreihafen.org>
Received: from sirius.lasnet.de (sirius.lasnet.de [78.47.116.19])
	by mx1.pokylinux.org (Postfix) with ESMTP id 069734C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 04:01:23 -0600 (CST)
Received: from [2001:638:602:1183:21f:16ff:fe0d:7d41] (helo=excalibur.local)
	by sirius.lasnet.de with esmtpsa 
	(Cipher TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.69 #1)
	id 1PqN9L-0001BU-GT by authid <stefan@sostec.de> with cram_md5
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 11:01:21 +0100
Received: from stefan by excalibur.local with local (Exim 4.72)
	(envelope-from <stefan@excalibur.local>) id 1PqN9J-0000b7-T7
	for poky@yoctoproject.org; Fri, 18 Feb 2011 11:01:17 +0100
Date: Fri, 18 Feb 2011 11:01:17 +0100
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: poky@yoctoproject.org
Message-ID: <20110218100117.GY14931@excalibur.local>
References: <AANLkTi==59FW4R15YrsSSR8EHWRgn2Gh9BJ2rUVPMWS+@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <AANLkTi==59FW4R15YrsSSR8EHWRgn2Gh9BJ2rUVPMWS+@mail.gmail.com>
X-Mailer: Mutt http://www.mutt.org/
X-KeyID: 0xDDF51665
X-Website: http://www.datenfreihafen.org/
User-Agent: Mutt/1.5.20 (2009-06-14)
X-Spam-Checker-Version: SpamAssassin 3.2.5 (2008-06-10) on sirius.lasnet.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,NO_RELAYS
	autolearn=ham version=3.2.5
Subject: Re: Problem with METADATA_* vars
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
X-List-Received-Date: Fri, 18 Feb 2011 10:01:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello.

On Fri, 2011-02-18 at 10:34, Koen Kooi wrote:
> 
> I have a simple recipe that does:
> 
> export METADATA_REVISION
> export METADATA_BRANCH
> export TARGET_SYS
> 
> do_install() {
>     install -d ${D}${sysconfdir}
>     echo "Angstrom ${DISTRO_VERSION}" > ${D}${sysconfdir}/angstrom-version
>     echo "Built from branch: ${METADATA_BRANCH}" >>
> ${D}${sysconfdir}/angstrom-version
>     echo "Revision: ${METADATA_REVISION}" >>
> ${D}${sysconfdir}/angstrom-version
>     echo "Target system: ${TARGET_SYS}" >>
> ${D}${sysconfdir}/angstrom-version
> 
>     [..]
> }
> 
> It builds fine when doing 'bitbake angstrom-version', but when doing
> 'bitbake console-image', which includes angstrom-version I get:
> 
> tr: write error: Broken pipe
> ERROR: Error evaluating '${@base_detect_branch(d)}'

Hmm, I somehow remeber something like this also in OE. Can you give it a try
with removing the explicit export in the recipe? Its a bit of guessing as I
don't have all the details in mind anymore. :)

regards
Stefan Schmidt

