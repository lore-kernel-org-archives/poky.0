Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E5D9D4C80FA8
	for <poky@lists.pokylinux.org>; Tue,  9 Nov 2010 07:21:34 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 37002166085D; Tue,  9 Nov 2010 06:21:34 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D09721660813;
	Tue,  9 Nov 2010 06:21:33 -0700 (MST)
Message-ID: <4CD94ADD.2090607@mlbassoc.com>
Date: Tue, 09 Nov 2010 06:21:33 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Another staging question
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
X-List-Received-Date: Tue, 09 Nov 2010 13:21:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've found another peculiarity with the new staging scheme(*).
I have two target platforms, which for all intents and purposes
are identical - both are Motorola MPC83xx (e300 core).  The only
reason for two target machines is the kernel, plus platform specifics.

I built totally from scratch (no SSTATE_MIRRORS) for target machine A.
I then tested the staging by building in a new tree, again for machine A.
This worked great - the build used mostly the staged packages.  About
the only things that were rebuilt were the target specific packages.

When I tried it for machine B, again in a totally empty directory, using
the 'sstate-cache' directory of the first build as SSTATE_MIRRORS, all of
the toolchain was rebuilt (GCC  and friends), but there was no need, the
staged version should have been used.

Is this expected?
What could I do to fix it?

Thanks

(*) I'm very happy that the new staging is starting to work better.
As is, it's a great leap forward;  I'm just hopeful that the remaining
kinks can be worked out.  I'll be glad to help in this any way I can.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

