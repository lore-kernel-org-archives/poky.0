Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD440E007EC;
	Tue, 31 Dec 2013 02:42:08 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 7852689C; Tue, 31 Dec 2013 11:42:24 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.3.2
Received: from [192.168.0.36] (col31-4-88-188-83-94.fbx.proxad.net
	[88.188.83.94])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 1FCFC7C1;
	Tue, 31 Dec 2013 11:42:24 +0100 (CET)
Message-ID: <52C29F7E.4060307@free-electrons.com>
Date: Tue, 31 Dec 2013 11:42:06 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Organization: Free Electrons
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <52BDEFA3.2090106@free-electrons.com>	<20131228083238.GY3706@jama>	<52BEA5BE.2020107@free-electrons.com>	<20131228112839.GZ3706@jama>	<52BEB963.2030901@free-electrons.com>	<20131228120750.GA3706@jama>	<52BECB61.9010401@free-electrons.com>
	<CAP9ODKqjuQxGDowZ_pj=H8i9-DA-DVsuoPP_tpVpvsCUm0VmWA@mail.gmail.com>
In-Reply-To: <CAP9ODKqjuQxGDowZ_pj=H8i9-DA-DVsuoPP_tpVpvsCUm0VmWA@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-freescale] X11 incompatibilities using meta-oe with poky
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
X-List-Received-Date: Tue, 31 Dec 2013 10:42:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 30/12/2013 06:09, Otavio Salvador wrote:
>> Right, thanks for those pointers !
> 
> Martin already backported the fix to Dora so please give it a new try
> and see if it fixes your previous issues.
> 

As said, it indeed fixes the issue with touchscreen calibration but
matchbox-keyboard is still broken as the script has a .shbg extension.
I'll try to rework that script and send a patch.

Martin, I'm not sure what is preferred: having a .sh extension or no
extension at all ?

-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

