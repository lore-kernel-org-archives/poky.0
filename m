Return-Path: <ml@communistcode.co.uk>
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B0AE015B1
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:07:13 -0700 (PDT)
Message-ID: <520CC46F.9020501@communistcode.co.uk>
Date: Thu, 15 Aug 2013 13:07:11 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130806 Thunderbird/17.0.8
MIME-Version: 1.0
To: Laszlo Papp <lpapp@kde.org>
References: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
	<CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
	<CAOMwXhMLBa+qefh1HgDB57EhqU_HJ4Ju9Y-V881PRGU0UYgS4g@mail.gmail.com>
	<520C9E77.1060201@communistcode.co.uk>
	<CAOMwXhMxu1tzsXD7srHm9RBFXFbwojoZz9FcZZy7cPiohgOP1g@mail.gmail.com>
	<520CC328.4020106@communistcode.co.uk>
	<CAOMwXhOe0dNZW4xwsrdjsGmHF2Jp1A0a48Cui7nhi2wdv1kQPw@mail.gmail.com>
In-Reply-To: <CAOMwXhOe0dNZW4xwsrdjsGmHF2Jp1A0a48Cui7nhi2wdv1kQPw@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Stunnel recipe
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Aug 2013 12:07:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 15/08/13 13:03, Laszlo Papp wrote:
> That was not a real question, more like a hint for you to think a bit
> more ... ;-)
> 
> But since you seem to be not getting the point, should stunnel go to
> recipes-support inside meta-working layer?
> 
> 
> On Thu, Aug 15, 2013 at 1:01 PM, Jack Mitchell <ml@communistcode.co.uk
> <mailto:ml@communistcode.co.uk>> wrote:
> 
>     On 15/08/13 10:29, Laszlo Papp wrote:
>     > You have to put a recipe inside a recipes-foo, right?
>     >
>     >
>     > On Thu, Aug 15, 2013 at 10:25 AM, Jack Mitchell
>     <ml@communistcode.co.uk <mailto:ml@communistcode.co.uk>
>     > <mailto:ml@communistcode.co.uk <mailto:ml@communistcode.co.uk>>>
>     wrote:
>     >
>     >     On 14/08/13 10:37, Laszlo Papp wrote:
>     >     > On Wed, Aug 14, 2013 at 9:34 AM, Burton, Ross
>     >     <ross.burton@intel.com <mailto:ross.burton@intel.com>
>     <mailto:ross.burton@intel.com <mailto:ross.burton@intel.com>>
>     >     > <mailto:ross.burton@intel.com <mailto:ross.burton@intel.com>
>     <mailto:ross.burton@intel.com <mailto:ross.burton@intel.com>>>> wrote:
>     >     >
>     >     >     There's a meta-networking layer in the meta-oe
>     repository which is
>     >     >     probably a good place to start.
>     >     >
>     >     >
>     >     > recipes-support?
>     >     >
>     >     >
>     >
>     >    
>     https://github.com/openembedded/meta-oe/tree/master/meta-networking
>     >
>     >
>     >     --
>     >       Jack Mitchell (jack@embed.me.uk <mailto:jack@embed.me.uk>
>     <mailto:jack@embed.me.uk <mailto:jack@embed.me.uk>>)
>     >       Embedded Systems Engineer
>     >       Cambrideshire, UK
>     >       http://www.embed.me.uk
>     >     --
>     >     _______________________________________________
>     >     poky mailing list
>     >     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     <mailto:poky@yoctoproject.org <mailto:poky@yoctoproject.org>>
>     >     https://lists.yoctoproject.org/listinfo/poky
>     >
>     >
> 
>     Correct, you don't want to put it in the root directory.
> 
>     --
>       Jack Mitchell (jack@embed.me.uk <mailto:jack@embed.me.uk>)
>       Embedded Systems Engineer
>       Cambrideshire, UK
>       http://www.embed.me.uk
>     --
> 
> 

I've no idea what stunnel does, I imagine you're more qualified to
decide on it's sub category.

-- 
  Jack Mitchell (jack@embed.me.uk)
  Embedded Systems Engineer
  Cambrideshire, UK
  http://www.embed.me.uk
--

