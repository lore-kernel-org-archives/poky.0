Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F3F04C80FAD
	for <poky@pokylinux.org>; Wed, 19 Jan 2011 20:11:09 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.69)
	(envelope-from <yanok@emcraft.com>)
	id 1PfjzO-0008Lt-TU; Thu, 20 Jan 2011 05:11:07 +0300
Message-ID: <4D3799C1.7000108@emcraft.com>
Date: Thu, 20 Jan 2011 05:11:13 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101226 Icedove/3.0.11
MIME-Version: 1.0
To: Adrian Alonso <aalonso00@gmail.com>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>	<1295296178-18590-3-git-send-email-aalonso@secretlab.ca>	<loom.20110118T004536-689@post.gmane.org>
	<AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>
In-Reply-To: <AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 03/25] gcc: crosssdk unset TARGET_FPU
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
X-List-Received-Date: Thu, 20 Jan 2011 02:11:10 -0000
Content-Type: multipart/alternative;
	boundary="------------030001060305060503000205"

--------------030001060305060503000205
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Adrian,

I'm sorry, I was wrong in my previous postings.
I was confused by the gcc-crosssdk recipe name.
Now I think your solution is perfectly legal, but I still think that 
comment is misleading:
it's not powerpc arch that does not sipport --with-float=soft, it's 
x86_64 (in my case)!

I think we should just reset TARGET_FPU from crosssdk.bbclass, what do 
you think about it?

Regards, Ilya.

On 18.01.2011 03:59, Adrian Alonso wrote:
> Hi Ilya,
>
> I will also look for the proper solution,
> However un-setting TARGET_FPU only affects the target machines
> in meta-xilinx layer bsp, so other Powerpc targets are not been affected
> with this patch.
>
> Regards
>
> On Mon, Jan 17, 2011 at 5:55 PM, Ilya Yanok <yanok@emcraft.com 
> <mailto:yanok@emcraft.com>> wrote:
>
>     Hi Adrian,
>
>     Adrian Alonso <aalonso@...> writes:
>
>     >
>     > * Configure fails due that --with-float=soft
>     >   flag isn't supportted by powerpc arch
>
>     That's not true. PowerPC support soft-float (and we actually need
>     this for
>     MPC8308 which has e300c3 core without FPU).
>
>     For me, configure fails with the same message but that's not
>     because PowerPC
>     lacks support for soft-float but cause gcc-crosssdk recipe passes
>     wrong
>     --target= option to the configure script (for me it's
>     x86_86-pokysdk-linux, I'm
>     building on the x86_64 host).
>
>     > * Unsetting TARGET_FPU this flag to not try to use
>     >   this flag
>
>     So please do NOT unset TARGET_FPU, some targets really need it.
>     I'm looking
>     forward to see a correct solution for this issue.
>
>     Regards, Ilya.
>
>
>     _______________________________________________
>     poky mailing list
>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/poky
>
>
>
>
> -- 
> Saludos
> Adrian Alonso
> http://aalonso.wordpress.com
>


--------------030001060305060503000205
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1"
 http-equiv="Content-Type">
</head>
<body bgcolor="#ffffff" text="#000000">
Hi Adrian,<br>
<br>
I'm sorry, I was wrong in my previous postings.<br>
I was confused by the gcc-crosssdk recipe name.<br>
Now I think your solution is perfectly legal, but I still think that
comment is misleading:<br>
it's not powerpc arch that does not sipport --with-float=soft, it's
x86_64 (in my case)!<br>
<br>
I think we should just reset TARGET_FPU from crosssdk.bbclass, what do
you think about it?<br>
<br>
Regards, Ilya.<br>
<br>
On 18.01.2011 03:59, Adrian Alonso wrote:
<blockquote
 cite="mid:AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com"
 type="cite">Hi Ilya,
  <div><br>
  </div>
  <div>I will also look for the proper solution,</div>
  <div>However un-setting TARGET_FPU only affects the target machines</div>
  <div>in meta-xilinx layer bsp, so other Powerpc targets are not been
affected</div>
  <div>with this patch.</div>
  <div><br>
  </div>
  <div>Regards<br>
  <br>
  <div class="gmail_quote">On Mon, Jan 17, 2011 at 5:55 PM, Ilya Yanok <span
 dir="ltr">&lt;<a moz-do-not-send="true" href="mailto:yanok@emcraft.com">yanok@emcraft.com</a>&gt;</span>
wrote:<br>
  <blockquote class="gmail_quote"
 style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Hi
Adrian,<br>
    <div class="im"><br>
Adrian Alonso <a class="moz-txt-link-rfc2396E" href="mailto:aalonso@...">&lt;aalonso@...&gt;</a> writes:<br>
    <br>
&gt;<br>
&gt; * Configure fails due that --with-float=soft<br>
&gt; &nbsp; flag isn't supportted by powerpc arch<br>
    <br>
    </div>
That's not true. PowerPC support soft-float (and we actually need this
for<br>
MPC8308 which has e300c3 core without FPU).<br>
    <br>
For me, configure fails with the same message but that's not because
PowerPC<br>
lacks support for soft-float but cause gcc-crosssdk recipe passes wrong<br>
--target= option to the configure script (for me it's
x86_86-pokysdk-linux, I'm<br>
building on the x86_64 host).<br>
    <div class="im"><br>
&gt; * Unsetting TARGET_FPU this flag to not try to use<br>
&gt; &nbsp; this flag<br>
    <br>
    </div>
So please do NOT unset TARGET_FPU, some targets really need it. I'm
looking<br>
forward to see a correct solution for this issue.<br>
    <br>
Regards, Ilya.<br>
    <br>
    <br>
_______________________________________________<br>
poky mailing list<br>
    <a moz-do-not-send="true" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
    <a moz-do-not-send="true"
 href="https://lists.yoctoproject.org/listinfo/poky" target="_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
  </blockquote>
  </div>
  <br>
  <br clear="all">
  <br>
-- <br>
Saludos<br>
Adrian Alonso<br>
  <a moz-do-not-send="true" href="http://aalonso.wordpress.com">http://aalonso.wordpress.com</a><br>
  <br>
  </div>
</blockquote>
<br>
</body>
</html>

--------------030001060305060503000205--
