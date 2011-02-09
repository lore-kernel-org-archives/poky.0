Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C567F4C8006D
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 20:12:35 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p192CY6E015713;
	Tue, 8 Feb 2011 18:12:34 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 18:12:33 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 18:12:34 -0800
Message-ID: <4D51F811.9040509@windriver.com>
Date: Tue, 08 Feb 2011 20:12:33 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <4D51E164.4080509@intel.com>
In-Reply-To: <4D51E164.4080509@intel.com>
X-OriginalArrivalTime: 09 Feb 2011 02:12:34.0222 (UTC)
	FILETIME=[D066F4E0:01CBC7FE]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Prelink documentation system appears to be obsolete.
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
X-List-Received-Date: Wed, 09 Feb 2011 02:12:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/8/11 6:35 PM, Scott Garman wrote:
>  From my attempts to get documentation building correctly for prelink, 
> it's becoming clear to me that the package's documentation system uses a 
> number of deprecated teTeX elements and needs updating at a "big 
> picture" level. From what I understand, TeXLive is the new hotness and 
> requires some migration.
> 
> In doc/prelink.tex, build errors lead me to suggest the following changes:
> 
> Change \usepackage{fancyheadings} to \usepackage{fancyhdr}:
> http://us.generation-nt.com/bug-421071-ftbfs-latex-error-file-fancyheadings-sty-not-found-help-164921921.html
> 
> Change [make|print]glossary to [make|print]nomenclature:
> http://pleasemakeanote.blogspot.com/2009/02/latex-undefined-control-sequence.html
> 
> Don't define \ifpdf manually, \usepackage{ifpdf}:
> http://old.nabble.com/Package-ifpdf-error:-name-clash---%5Cifpdf-is-already-defined-td18730554.html
> 
> After resolving these issues, I still end up with a failure building the 
> docs - but this time there's no clear error message to give me clues on 
> what needs fixing. My gut feeing is that the migration process from 
> teTeX to TeXLive needs to be done by someone more familiar with it than I.
> 
> Until that happens (or I suddenly become a TeX guru), I'm currently 
> advising that we keep the workaround in the prelink recipe which 
> prevents documentation from being built. Then I can move on to 
> addressing documentation builds in other packages.

The prelink documentation (other then man pages) is identical to the upstream
project.  So my suggestion [if we do fix the docs] is to push it upstream first
(or attempt to) then in my regular syncs I'll pull it back down.

The man pages do have some local changes to document the additional arguments
introduce by the cross friendly version of prelink.

--Mark

