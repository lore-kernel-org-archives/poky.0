Return-Path: <glep-poky@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A68E00CAC; Tue, 26 Jul 2016 19:35:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Jul 2016 19:35:09 PDT
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEC87E00C65
	for <poky@yoctoproject.org>; Tue, 26 Jul 2016 19:35:09 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1bSES5-00033E-Mh
	for poky@yoctoproject.org; Wed, 27 Jul 2016 04:20:06 +0200
Received: from rrcs-173-197-104-78.west.biz.rr.com ([173.197.104.78])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@yoctoproject.org>; Wed, 27 Jul 2016 04:20:05 +0200
Received: from svalentine by rrcs-173-197-104-78.west.biz.rr.com with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@yoctoproject.org>; Wed, 27 Jul 2016 04:20:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@yoctoproject.org
From: Scott Valentine <svalentine@ikayzo.com>
Date: Wed, 27 Jul 2016 02:13:45 +0000 (UTC)
Message-ID: <loom.20160727T041159-305@post.gmane.org>
References: <1458227722-28660-1-git-send-email-nick@leverton.org>
	<A288F972-E86D-4135-910D-D4743DC6D603@gmail.com>
	<CAJTo0LZWPxU4q84Vt-YBNhbf2ga6eTrdA4OgnL4hoYJH3Su5KQ@mail.gmail.com>
	<254F6BAF-4C4B-4D9C-9D78-98369D69C1A4@gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 173.197.104.78 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:47.0) Gecko/20100101 Firefox/47.0)
Subject: Re: [PATCH 1/1] lighttpd: fix /usr/lib/mod_cgi.so:undefined	symbol:chunkqueue_written
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
X-List-Received-Date: Wed, 27 Jul 2016 02:35:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Khem Raj <raj.khem@...> writes:

> 
> 
> 
> 
> On Mar 17, 2016, at 9:39 AM, Burton, Ross
<ross.burton@intel.com> wrote:
> 
> On 17 March 2016 at 16:33, Khem Raj
<raj.khem@gmail.com> wrote:I think a fix
should be accompanying the removal, otherwise we regress on memory issue.
> 
> 
> The bug report that accompanies this patch (#9289) states that the memory
problem isn't fixed upstream, and this patch is broken.
> 
> ah ok
> 
> 
> 

I'm pretty sure you can just replace the call to chunkqueue_written(cq) with
cq->bytes_out in the previously removed patch (works for me).




