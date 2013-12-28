Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D37B9E00746;
	Sat, 28 Dec 2013 03:49:20 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id EFDF18A2; Sat, 28 Dec 2013 12:49:32 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.3.2
Received: from [192.168.1.28] (AReims-652-1-238-43.w83-198.abo.wanadoo.fr
	[83.198.181.43])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 42B2A83D;
	Sat, 28 Dec 2013 12:49:32 +0100 (CET)
Message-ID: <52BEB963.2030901@free-electrons.com>
Date: Sat, 28 Dec 2013 12:43:31 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Organization: Free Electrons
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <52BDEFA3.2090106@free-electrons.com> <20131228083238.GY3706@jama>
	<52BEA5BE.2020107@free-electrons.com> <20131228112839.GZ3706@jama>
In-Reply-To: <20131228112839.GZ3706@jama>
X-Enigmail-Version: 1.5.2
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	poky@yoctoproject.org
Subject: Re: X11 incompatibilities using meta-oe with poky
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
X-List-Received-Date: Sat, 28 Dec 2013 11:49:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 28/12/2013 12:28, Martin Jansa wrote:
> I'm not using matchbox and I'm using only xserver-common, this fix is to
> start xinput-calibrator in correct location.
>
> You can get rid of x11-common by setting:
> VIRTUAL-RUNTIME_xserver_common = "xserver-common"

Still not enough, the Xsession from xserver-common will make the board
hang in 80matchboxkeyboard.shbg the main issue I see is that a lot of
recipes are providing Xsession scripts for the x11-common's Xsession but
at the end, we are installing Xsession from xserver-common. You kind of
hacked around that by renaming all the scripts to .sh.

I think we should get rid of kdrive in poky and only use xserver-common.
Or, for each recipe installing an Xsession script, we should have a look
at whether it is for x11-common or xserver-common. In that case, we
havfe to make the conflicting work.

I believe your patch is not really solving the issue and I you want, I
can work on that.

- -- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (GNU/Linux)

iQIcBAEBCAAGBQJSvrljAAoJEKbNnwlvZCyzmyUQAKKIk1a544bPZJdA089u3W04
lfHU2rVpaPc6DklXwdnMN52PuNupDpzUJWueCFiHUfNJJ6DrAL3DhilI8wDclrwC
0bTwqmppCHjHCQtWZpNjDD6Zp0/gZ01IxYzRRexIMHsmytaAMMOsAkebYgD80RNR
8SJTk0OJ9l5vGsmMYU+zontuS413uNAobuvJjbif51ZPOkaZDCW7DOsoV9mowwGX
s1Z4O5gwFgf0RdiVT3EbFJu1cd1YHlEDLkqXvZgVVpYBxOTpAxcPed0kS5C6+zUE
kODwymPonnPkGgL1I4nfqdw+TN7ymDwQQWrDaV0HsfuW7Uw5ppA/jePPKaolZY+8
WQjPW/59Z70Zso8dtZZNqYhau4s8bpR0lmu/RhNRNvJBn5g/AweWC4istg0Ef0M9
eik3/epT42usSZMZrL6gkBHN3t0hBwLadd58Q8K/fs7WsoV0Lz3XfBaJK4uMLxwa
LLS5EKWbX/5F6WTmIfYuTcGlBeZRFWaB+7Hr8qEQwA7OG9j9/a5vutbV2+BTtFO0
4NDr/elC2+WGtKeSFj+8m2ppRvWXf8WJ3eKj4mj218x/7GX3xhHVfvnWISRZAcnj
FlBl4hZsvBdteD5gE0vb17D+qqULcdl6ZA8QZrBptjccCwbFHb4tMXlSA7dH3FwH
s8+4EDeP0mJNU4fq1/uU
=u124
-----END PGP SIGNATURE-----


