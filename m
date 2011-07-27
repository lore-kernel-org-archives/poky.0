Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7729A4C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 08:02:34 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 29A451660401; Wed, 27 Jul 2011 07:02:34 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 86BC51660194;
	Wed, 27 Jul 2011 07:02:33 -0600 (MDT)
Message-ID: <4E300C69.4010408@mlbassoc.com>
Date: Wed, 27 Jul 2011 07:02:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Holger Hans Peter Freyther <holger@freyther.de>
References: <4E3008DA.8090401@freyther.de>
In-Reply-To: <4E3008DA.8090401@freyther.de>
Cc: poky@yoctoproject.org
Subject: Re: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 13:02:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-07-27 06:47, Holger Hans Peter Freyther wrote:
> Hi,
>
> todays story is adding a 'interfaces' to netbase.
>
>
> $ touch sysmocom/recipes-core/netbase/netbase-4.45/alix/interfaces
>
> $ vi sysmocom/recipes-core/netbase/netbase_4.45.bbappend
> FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], d)}:"
> PRINC = "1"
>
> $ bitbake netbase
>
>
> So does it work? The answer is no. Why doesn't it work? meta-yocto already has
> a bbappend file? How to solve it? Use different names? Automatically add
> FILESPATH for bbappends?
>
> comments?

Set the layer priority for sysmocom/ higher than meta-yocto

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

