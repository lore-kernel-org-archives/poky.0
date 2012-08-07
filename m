Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 206DBE002A6;
	Tue,  7 Aug 2012 02:13:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q779DAmg009193;
	Tue, 7 Aug 2012 10:13:10 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08358-08; Tue,  7 Aug 2012 10:13:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q779D0ut009187
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Aug 2012 10:13:01 +0100
Message-ID: <1344330784.9756.213.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Iorga, Cristian" <cristian.iorga@intel.com>
Date: Tue, 07 Aug 2012 10:13:04 +0100
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB161794D1@IRSMSX102.ger.corp.intel.com>
References: <969F26A8BAB325438E7EB80D3C3134FB161794D1@IRSMSX102.ger.corp.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Developing hob/bitbake using PyDev
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
X-List-Received-Date: Tue, 07 Aug 2012 09:13:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2012-08-07 at 07:48 +0000, Iorga, Cristian wrote:
> Remote debugging seems possible, but we did not set it up (yet).
>
> “Fix and Continue” we don’t know if it exists in Python world, because
> of the way Pyhon (interpreter + base language works).
> 
> I.e.: Python: from module import spam
>
> spam will be initialized after this one.
>
> How Python will handle a reload or something similar in this case?

Python can reload modules but you'd have to deactive anything using them
to be able to reload so you'd have to reset all the state. I therefore
suspect this aspect would be hard.

> If anyone have any insights into this issues, please help me.
>  
> P.S.: Doing remote debugging of hob seems to need changes in
> hob/bitbake sources, which I guess would not be acceptable to be
> integrated into main branch, isn’t it?

I'd not rule them out, particularly if how to use them was well
documented. We'd need something well thought out though for it to be
merged. It really depends on the kinds of changes needed and how
invasive they were.

Cheers,

Richard



