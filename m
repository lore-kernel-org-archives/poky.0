Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 658C74C8009A
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 08:55:31 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtTxR003030;
	Wed, 16 Mar 2011 13:55:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02929-02; Wed, 16 Mar 2011 13:55:21 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtIKB003007
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Mar 2011 13:55:18 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: scott.m.rifenbark@intel.com
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Date: Wed, 16 Mar 2011 13:41:10 +0000
Message-ID: <1300282870.30423.1878.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/13] [DOCS] ADT Manual
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
X-List-Received-Date: Wed, 16 Mar 2011 13:55:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 17:43 -0600, scott.m.rifenbark@intel.com wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> These commits represent the new Application Development Toolkit 
> (ADT) User's Manual into the GIT repository.  The changes are 
> incremental and work from creation of the new directory 
> within the 'documentation' directory through some final tweeks
> on one of the individual chapters.  
> 
> These need to be merged with master before the git documentation 
> cutoff date.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/adt-work
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work
> 
> Thanks,
>      <scott.m.rifenbark@intel.com>
> ---
> 
> 
> Scott Rifenbark (13):
>   documentation/adt-manual:  New file structure for ADT Manual
>   documentation/adt-manual/figures:  Added title PNG file, deleted
>     kernel title PNG file.
>   documentation/adt-manual/adt-manual.xml: Initial file
>   documentation/adt-manual/Makefile:  Initial Makefile
>   documentation/adt-manual:  cleaned up labels in chapter files
>   documentation/adt-manual/style.css:  Changed PNG file in the title
>     page style
>   documentation/adt-manual/adt-intro.xml: Initial text
>   documentation/adt-manual/adt-prepare.xml:  Initial draft of
>     preparation chapter
>   documentation/adt-manual/adt-package.xml:  Initial file
>   documentation/adt-manual/adt-eclipse.xml:  Initial draft for Eclipse
>     chapter.
>   documentation/adt-manual/adt-command.xml:  Initial draft of command
>     line chapter
>   documentation/adt-manual/adt-eclipse.xml:  Removed Autotools plug-in
>     requirement
>   documentation/adt-manual/adt-eclipse.xml: Specified qemu options
>     outside of brackets.

Merged to master, thanks.

Richard


