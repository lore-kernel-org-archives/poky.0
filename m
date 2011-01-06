Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59CA54C80BD4
	for <poky@pokylinux.org>; Thu,  6 Jan 2011 17:04:08 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C14761660170; Thu,  6 Jan 2011 16:04:07 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1CB611660166;
	Thu,  6 Jan 2011 16:04:07 -0700 (MST)
Message-ID: <4D264A67.9020901@mlbassoc.com>
Date: Thu, 06 Jan 2011 16:04:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1294354570.17519.25325.camel@rex>
In-Reply-To: <1294354570.17519.25325.camel@rex>
Cc: poky <poky@pokylinux.org>
Subject: Re: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Thu, 06 Jan 2011 23:04:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/06/2011 03:56 PM, Richard Purdie wrote:
> We've been working on checksums and sstate for a while, one of the
> pieces we've not put in place so far is using the checksums in the stamp
> files.
    ... snip
> My proposal for dealing with this will be to start having the packaging
> backend take ownership of PE and PR fields. These should be auto
> incremented when the build changes. That in itself is easy enough if you
> have one build area, the tricky bit is where you have multiple build
> sources feeding into a common packages repo like Angstrom.
>
> For this we're going to need some kind of network service that takes a
> version and provides the PE/PR values back, incrementing them each time
> it sees a new version/checksum.

How would this play with non-core packages/recipes, e.g. the ones that
are only in my local trees?

Also, how could this work in a no-network-available environment?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

