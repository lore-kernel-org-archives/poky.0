Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EF974C80188
	for <poky@yoctoproject.org>; Sun, 13 Mar 2011 10:49:22 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A7B141660207; Sun, 13 Mar 2011 09:49:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8C56516601E5;
	Sun, 13 Mar 2011 09:49:20 -0600 (MDT)
Message-ID: <4D7CE780.7070704@mlbassoc.com>
Date: Sun, 13 Mar 2011 09:49:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "embedded.yogesh" <embedded.yogesh@gmail.com>
References: <4D7C7897.2040702@gmail.com>
In-Reply-To: <4D7C7897.2040702@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: unpacking of archive failed
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
X-List-Received-Date: Sun, 13 Mar 2011 15:49:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/13/2011 12:56 AM, embedded.yogesh wrote:
> Hi,
>
> I am getting following error again and again, can any one guide how to resolve this .
>
> "error: unpacking of archive failed on file /var/cache: cpio: rename failed - Inappropriate ioctl for device"

More details needed.
   * What's the target MACHINE
   * What recipe are you trying to build?
   * What is your host [build] computer (OS, etc)?

Also posting the appropriate log files (e.g. log.do_unpack from the failed
recipe) to postbin.com will help a lot.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

