Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D195BE00559
	for <poky@yoctoproject.org>; Mon, 26 Sep 2011 06:45:40 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 7D4E616602D2; Mon, 26 Sep 2011 07:45:38 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6DCA316602D1;
	Mon, 26 Sep 2011 07:45:37 -0600 (MDT)
Message-ID: <4E808201.8080103@mlbassoc.com>
Date: Mon, 26 Sep 2011 07:45:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: How to build a kernel using menuconfig
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
X-List-Received-Date: Mon, 26 Sep 2011 13:45:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm working with a recent Poky checkout:
   meta-yocto        = "master:7a0cbe6b0e5185aebabedc515b427994bc2a15dc"

I used to be able to do this:
   % bitbake <some-image>
This step builds everything, including the kernel
   % bitbake virtual/kernel -c menuconfig
Adjust some settings
   % bitbake virtual/kernel -c compile -f
   % bitbake virtual/kernel
Rebuild my image with the new kernel included
   % bitbake <some-image>

In the past, this would let me adjust some kernel settings, e.g. add a new
module, then rebuild it and later add this to an image.  Sadly, when I run
through these steps with the current master, the new kernel gets compiled
(because I used -f), but not packaged.

The only thing I've done differently, save updating master, is my build
today includes
   INHERIT += "rm_work"

Am I missing something?

How can I build the kernel and make these in-tree adjustments like I used to?
I do this to figure out what kernel settings to set/save for my final packaging.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

