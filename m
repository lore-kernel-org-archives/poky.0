Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 117F2E013A7
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 08:23:54 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 87F4BF81209; Mon, 25 Mar 2013 09:23:54 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 913A6F811E1;
	Mon, 25 Mar 2013 09:23:53 -0600 (MDT)
Message-ID: <51506C09.9060503@mlbassoc.com>
Date: Mon, 25 Mar 2013 09:23:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51504DF2.3030206@mlbassoc.com> <1364218498.3097.48.camel@ted>
	<CAJTo0LZ2K0Q4CjrGojjSPwFB+RL6NAkFu5wvZG1s1yr-PD00Lg@mail.gmail.com>
In-Reply-To: <CAJTo0LZ2K0Q4CjrGojjSPwFB+RL6NAkFu5wvZG1s1yr-PD00Lg@mail.gmail.com>
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
X-List-Received-Date: Mon, 25 Mar 2013 15:23:55 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-03-25 07:54, Burton, Ross wrote:
> On 25 March 2013 13:34, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> Ross: Any thoughts here? This isn't good coming up to release.
>
> xinput-calibrate is the answer, which is sadly in meta-oe still.  This
> needs to be merged.  Last time I looked at this there was on-going
> rewriting of it's startup, I'll see if that's integrated so we can
> migrate it.
>
> What hardware/touchscreen are you using?

Sadly it's proprietary and not public.

Basically OMAP4 (like a Panda) with LCD+touch.

For my case, I found that I could just adjust these things in
the Xorg.conf.  I use this file as /etc/X11/xorg.conf.d/11-touchscreen.conf
   Section "InputClass"
   Identifier "ADS7846 Touchscreen"
   MatchProduct "ADS7846 Touchscreen"
   MatchDevicePath "/dev/input/event*"
   Driver "evdev"
   Option "SwapAxes" "false"
   Option "InvertX" "false"
   #Option "InvertY" "true"
   Option "Calibration" "102 3768 3590 275"
   EndSection
The calibration values came from xinput-calibrate which I imported for
just this project.  As you say, that should get moved to OE-core.

The code in /etc/X11/Xsession.d/30xTs_Calibrate.sh seems totally
broken (and is how I came to my original question)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

