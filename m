Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 203FAE006B0
	for <poky@pokylinux.org>; Tue, 29 Nov 2011 09:50:17 -0800 (PST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1RVRor-00089N-FP
	for poky@pokylinux.org; Tue, 29 Nov 2011 18:50:13 +0100
Received: from irdmzpr01-ext.ir.intel.com ([192.198.151.36])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 29 Nov 2011 18:50:13 +0100
Received: from derek.browne by irdmzpr01-ext.ir.intel.com with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 29 Nov 2011 18:50:13 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Derek Browne <derek.browne@intel.com>
Date: Tue, 29 Nov 2011 17:44:35 +0000 (UTC)
Message-ID: <loom.20111129T174734-623@post.gmane.org>
References: <CAJa-nAwJ_EFLovm_+wr-n+WaRsDscCCfCgFtAnsCYNdy4Cx3AA@mail.gmail.com>
	<4ED3C63E.9060900@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 192.198.151.36 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.121
	Safari/535.2)
Subject: Re: ERROR: Execution of event handler 'run_buildstats' failed on non-local storage
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
X-List-Received-Date: Tue, 29 Nov 2011 17:50:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Saul Wold <sgw@...> writes:

> This has been fixed in Master see
> 
>   http://bugzilla.pokylinux.org/show_bug.cgi?id=1700
> 
> This should be a candidate for the 1.1.1 stable branch being worked on 
> currently also.
> 
> The fix should apply to your version of buildstats.bbclass.
> 
> Sau!
> 

OK, great. I must sharpen my search skills, I wasn't able to find that. Thank 
you for your help.

Derek




