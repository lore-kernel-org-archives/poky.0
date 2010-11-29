Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 675254C81209
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 05:59:56 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBxs7k032041;
	Mon, 29 Nov 2010 11:59:54 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31803-05; Mon, 29 Nov 2010 11:59:50 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBxgnN032035
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 11:59:45 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Ke, Liping" <liping.ke@intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659732FF6B4D1@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6B4D1@shsmsx501.ccr.corp.intel.com>
Date: Mon, 29 Nov 2010 03:59:27 -0800
Message-ID: <1291031967.14277.912.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: FW: Request to mailing list poky rejected
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
X-List-Received-Date: Mon, 29 Nov 2010 11:59:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-29 at 17:07 +0800, Ke, Liping wrote:
> Finally understand why I can't send out the mail to the mail list. Seems poky list will not accept the mail with the attachment size of 175kb?
> 
> Send the mail to confirm that I can send mail to this mail list.
> Btw: so could anybody tell me the exact attachment size limit of poky mail list?

Its set at 40kb which is perhaps a little low as I've seen patches
exceed that. We should be posting links to big files though.

The moderators are currently myself and Saul and we'll approve any large
patches within reason (but not binary image attachments).

Cheers,

Richard


