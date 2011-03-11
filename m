Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB0BC4C800A0
	for <poky@lists.pokylinux.org>; Fri, 11 Mar 2011 11:13:35 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2BHDZ9k032290;
	Fri, 11 Mar 2011 17:13:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32028-05; Fri, 11 Mar 2011 17:13:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2BHDHPq032284
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 11 Mar 2011 17:13:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D7A08BF.80303@mlbassoc.com>
References: <4D7A08BF.80303@mlbassoc.com>
Date: Fri, 11 Mar 2011 09:13:14 -0800
Message-ID: <1299863594.1445.2875.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Native vs not
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
X-List-Received-Date: Fri, 11 Mar 2011 17:13:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-11 at 04:34 -0700, Gary Thomas wrote:
> As pointed out in another thread, I'm trying to build a native
> package which sends "I need native" ripples throughout much of
> the Poky infrastructure.
> 
> Does having a native version available for any given package incur a cost?
> If not, would patches for [all of] the packages I need be acceptable?
> 
> So far, nearly all of the affected packages built fine, just adding native
> to BBCLASSEXTEND.  Many already build nativesdk versions already.

There is a cost incurred by doing this since it does increase parse time
and this is something user exposed which we do try and keep under
control.

Having said that, the BBCLASSEXTEND technology has a lot less overhead
than some of the older approaches to native/sdk recipes.

The main reason I've been against native everywhere is that having
native versions available makes it far too easy for people to add native
dependencies which encourage feature creep without thinking through the
huge additional dependency chains, the extra build time and other
implications. Often there are slightly more difficult but worthwhile
ways we can avoid the native dependency.

Cheers,

Richard



