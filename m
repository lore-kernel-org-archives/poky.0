Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 842674C8009D
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:24:28 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IHOQqQ010169;
	Fri, 18 Mar 2011 17:24:26 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09850-05; Fri, 18 Mar 2011 17:24:22 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IHOK0u010162
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 17:24:21 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: scott.m.rifenbark@intel.com
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Date: Fri, 18 Mar 2011 17:24:04 +0000
Message-ID: <1300469044.30423.2209.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/15] [DOCS] Poky Reference Manual changes
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
X-List-Received-Date: Fri, 18 Mar 2011 17:24:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 10:59 -0600, scott.m.rifenbark@intel.com wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> These commits are the changes for the Poky Reference Manual.
> Some bugs taken care of, spell-checks, title page updates,
> grammar fixes, FAQ entries, formfactor path fix.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/poky-work
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work
> 
> Thanks,
>      <scott.m.rifenbark@intel.com>
> ---
> 
> 
> Scott Rifenbark (15):
>   [BUGID# 873] - documentation/poky-ref-manual: Notes added for
>     non-GPLv3 builds
>   [BUGID# 293] - documentation/poky-ref-manual/extendpoky.xml: Added
>     text for choosing server
>   documentation/poky-ref-manual/extendpoky.xml: Spell check
>   documentation/poky-ref-manual/style.css: Updated to match other
>     manuals
>   documentation/poky-ref-manual/poky-ref-manual.xml: Updated title page
>   documentation/poky-ref-manual/faq.xml:  Spell Check
>   documentation/poky-ref-manual/introduction.xml:  Removed link
>   documentation/poky-ref-manual/introduction.xml: Wording and release
>     update
>   documentation/poky-ref-manual/usingpoky.xml: grammar fix and BitBake
>     fix
>   documentation/poky-ref-manual/usingpoky.xml:  More BitBake changes
>   documentation/poky-ref-manual/faq.xml: Added three FAQ entries
>   documentation/poky-ref-manual/usingpoky.xml:  Small edits
>   documentation/poky-ref-manual/extendpoky.xml: small edits
>   documentation/poky-ref-manual/extendpoky.xml: Formfactor path
>     corrected
>   documentation/poky-ref-manual/faq.xml:  Added entry about proxy and
>     firewall

Merged to master, thanks Scott.

Cheers,

Richard


