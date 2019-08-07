Return-Path: <glep-poky@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0706E00D8E; Tue,  6 Aug 2019 23:35:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from blaine.gmane.org (195-159-176-226.customer.powertech.no
	[195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7233E00D8C
	for <poky@yoctoproject.org>; Tue,  6 Aug 2019 23:35:50 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.89)
	(envelope-from <glep-poky@m.gmane.org>) id 1hvFY4-000BNr-B5
	for poky@yoctoproject.org; Wed, 07 Aug 2019 08:35:48 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@yoctoproject.org
From: Tim Blechmann <tim@klingt.org>
Date: Wed, 7 Aug 2019 14:35:37 +0800
Message-ID: <320c4e09-e480-4a93-4ef2-a6453e4ca779@klingt.org>
References: <qidgh2$3lce$1@blaine.gmane.org> <20190807060446.GA5249@localhost>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
Openpgp: preference=signencrypt
Autocrypt: addr=tim@klingt.org; keydata=
	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
	EfM=
In-Reply-To: <20190807060446.GA5249@localhost>
Subject: Re: deb: custom compression
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
X-List-Received-Date: Wed, 07 Aug 2019 06:35:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

>> poky compresses deb packages with the default flags, which these days
>> boils down to using xz compression.
>> trying to cut down turnaround times for local builds, i tried to modify
>> the `package_deb` class to be able to force a low gzip compression via a
>> `DPKG_FAST` parameter (patch attached).
>>
>> could this patch be accepted upstream?
> 
> It is specific to your problem (and sent to the wrong mailing list).

my bad (thought it's this one, as the file resides in the poky repo).
which is the right place for it?

> A more generic solution would be similar to OPKGBUILDCMD,
> allowing the user to pass any parameters (including any
> compression settings) to dpkg-deb.

something like `DPKG_OPTIONS` i'm happy to adapt the patch?

thanks,
tim


