Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B5B3E0132F
	for <poky@lists.pokylinux.org>; Tue,  6 Mar 2012 06:26:40 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q26EQdQN016104;
	Tue, 6 Mar 2012 14:26:39 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15207-06; Tue,  6 Mar 2012 14:26:34 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q26EQRq4016097
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 6 Mar 2012 14:26:30 GMT
Message-ID: <1331043985.25887.8.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 06 Mar 2012 06:26:25 -0800
In-Reply-To: <4F5616AB.6000603@mlbassoc.com>
References: <4F5616AB.6000603@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Unable to build
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
X-List-Received-Date: Tue, 06 Mar 2012 14:26:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-06 at 06:52 -0700, Gary Thomas wrote:
> After a recent update, I'm now getting this error in a previously
> working setup.
> 
> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
> 
>      Your configuration is using stamp files including the sstate hash but your build directory was built with stamp files that do not include this.
> To continue, either rebuild or switch back to the OEBasic signature handler with BB_SIGNATURE_HANDLER = 'OEBasic'.
> 
> I'm using my own distro.conf (not poky.conf), and I'm not setting
> BB_SIGNATURE_HANDLER anywhere, so I think it should already be
> set to OEBasic.  I even tried to put that line (cut & pasted
> from the error message) in local.conf - no change.
> 
> How can I get past this, short of a complete rebuild?

You've somehow merged a change like:

http://git.yoctoproject.org/cgit.cgi/poky/commit/meta-yocto?id=ea2c8defd570bc2c4d29c6b0bd9fd84865d4e144

which sets OELAYOUT_ABI = "8" and triggers the transition message about
OEBasicHash. Set it to "7" and it won't show that message.

Cheers,

Richard



