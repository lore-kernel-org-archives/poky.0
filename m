Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7096E01423
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 06:35:32 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2PDiwI2005564; Mon, 25 Mar 2013 13:44:58 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id UZEtnHjeW0xX; Mon, 25 Mar 2013 13:44:58 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2PDin6c005414
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 25 Mar 2013 13:44:52 GMT
Message-ID: <1364218498.3097.48.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>, Burton Ross <ross.burton@intel.com>
Date: Mon, 25 Mar 2013 13:34:58 +0000
In-Reply-To: <51504DF2.3030206@mlbassoc.com>
References: <51504DF2.3030206@mlbassoc.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Calibrating touch screen
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
X-List-Received-Date: Mon, 25 Mar 2013 13:35:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-03-25 at 07:15 -0600, Gary Thomas wrote:
> I have a target running Poky/Yocto which has a touch screen.
> When I try to run the 'xtscal' program, I get this error:
>    # xtscal
>    XCALIBRATE extension missing: Resource temporarily unavailable
> 
> Any ideas what I need to build/install to make this work?
> 
> On a related note, my screen is a small LCD which has a native
> layout of 320x240.  However, I need to run it in portrait mode
> of 240x320.  I have this mostly working using xrandr but now
> my old touch screen calibrations no longer work (they were for
> the landscape setup).  This is my main reason for getting xtscal
> to work.

We have a major problem here. xserver-kdrive was removed and the
xcalibrate extension was dropped from big xorg. We therefore have
nothing with the xcalibrate extension in it, it was replaced by xinput
stuff which we don't have.

Two options are trying ts_calibrate on the commandline if you can get a
portrait console (kernels can support console rotation, I helped get
that merged years ago) or find the xinput-*-calibration program from
meta-oe and use that.

Ross: Any thoughts here? This isn't good coming up to release.

Cheers,

Richard


