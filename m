Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BECA4C800B0
	for <poky@yoctoproject.org>; Fri,  6 May 2011 04:19:22 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D90AF16602D8; Fri,  6 May 2011 03:19:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8CA1216602D0;
	Fri,  6 May 2011 03:19:21 -0600 (MDT)
Message-ID: <4DC3BD19.5010108@mlbassoc.com>
Date: Fri, 06 May 2011 03:19:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: chinmaya hoshing <cahoshing@gmail.com>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>	<1304604592.17396.122.camel@elmorro>	<4DC2B2C8.5050106@mlbassoc.com>
	<BANLkTim7_pkGarX_F6RCsM8gF72os-XWRg@mail.gmail.com>
In-Reply-To: <BANLkTim7_pkGarX_F6RCsM8gF72os-XWRg@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Error in pulling cups package
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
X-List-Received-Date: Fri, 06 May 2011 09:19:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/06/2011 01:32 AM, chinmaya hoshing wrote:
>
> Thanks guys a lot,
>
> Gary it worked finaly!!!!!!!!! :-) as said by you I made the changes in local.conf for PACKAGE_CLASSES ?= "package_ipk"

So that points to RPM being the cause of the problems you were seeing.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

