Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A516EE00DAF; Thu,  8 Oct 2015 13:46:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4135EE00C45
	for <poky@yoctoproject.org>; Thu,  8 Oct 2015 13:46:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DDA27F811DA; Thu,  8 Oct 2015 14:46:37 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DA7E5F811D7;
	Thu,  8 Oct 2015 14:46:34 -0600 (MDT)
To: poky@yoctoproject.org
References: <5616CE9C.2040001@webthatworks.it>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5616D645.2030308@mlbassoc.com>
Date: Thu, 8 Oct 2015 14:47:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5616CE9C.2040001@webthatworks.it>
Subject: Re: check gcc parameters without recompiling
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
X-List-Received-Date: Thu, 08 Oct 2015 20:46:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-10-08 14:14, Ivan Sergio Borgonovo wrote:
> I'd like to check how some stuff has been compiled after I've already generated an image.
>
> How can I check it without forcing an actual rebuild?
> If not how can I at least restrict the rebuilt to something specific and enable some sort of log just to test if gcc option where set as I expect?
>
> Is this the right list for asking such kind of questions?

Have you looked at the logs?  Complete build logs are found
in ${TMPDIR}/work/*/<package>/<version>/temp/, where '*' is
your target architecture or platform name.  In this directory
you'll find a file 'log.do_compile' which should show you the
output generated from the compile step.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

