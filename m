Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F89DE013CC
	for <poky@yoctoproject.org>; Wed, 29 Feb 2012 03:08:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1TB8H8c029337;
	Wed, 29 Feb 2012 11:08:17 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28765-04; Wed, 29 Feb 2012 11:08:13 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1TB88i7029329
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 29 Feb 2012 11:08:09 GMT
Message-ID: <1330513691.9185.154.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: sonu vishwakarma <vishwasonu2000@gmail.com>
Date: Wed, 29 Feb 2012 11:08:11 +0000
In-Reply-To: <CABRtByOL_9OcbVRfu+pMpjYtjLj4M1hBUUWt-WC6RTb9o6yxiw@mail.gmail.com>
References: <CABRtByOfAeCkrnVJ8Y40HsrjXRaLjmOARb-hj4_B87EoeZ6XDQ@mail.gmail.com>
	<CABRtByOL_9OcbVRfu+pMpjYtjLj4M1hBUUWt-WC6RTb9o6yxiw@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: glibc-2.12.1-r6: task do_package: Failed
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
X-List-Received-Date: Wed, 29 Feb 2012 11:08:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-29 at 12:55 +0530, sonu vishwakarma wrote:
> Hi,
> The error mentioned was generated on commenting the line , 
> #currency_symbol      "<U20A1>" in file es_CR .
> But the actual error was something like this :
> ************************
> | NOTE: stdout:
> | NOTE:
> | NOTE: stderr:
> |
> NOTE: /home/poky_gigabyte_09Nov_xbmc/build/tmp/work/atom-poky-linux/glibc-2.12.1-r6/locale-tree//usr/share/i18n/locales/es_CR:56: LC_MONETARY: unknown character in field `currency_symbol'
> | 
> | ERROR: Function 'localedef returned an error' failed
> NOTE: package glibc-2.12.1-r6: task do_package: Failed
> ************************
> 

Bernard shipped with glibc 2.10, not 2.12. I'd imagine the easiest way
to work around this is to blacklist the locale. You can see the locale
blacklist in the glibc recipe:

GLIBC_BROKEN_LOCALES = " _ER _ET so_ET yn_ER sid_ET tr_TR mn_MN gez_ET gez_ER bn_BD te_IN"

so try adding es_CR to the list.

Cheers,

Richard



