Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFF1E4C80B6B
	for <poky@lists.pokylinux.org>; Thu, 25 Nov 2010 10:12:04 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3A17416608CD; Thu, 25 Nov 2010 09:12:03 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4BC9616608C1;
	Thu, 25 Nov 2010 09:12:02 -0700 (MST)
Message-ID: <4CEE8AD1.80603@mlbassoc.com>
Date: Thu, 25 Nov 2010 09:12:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Eclipse plugin question
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
X-List-Received-Date: Thu, 25 Nov 2010 16:12:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have the eclipse plugin working fairly well now - I can build
an application, etc.  I tried manually downloading the code to
my board (I have real hardware, not QEMU) and it runs fine.

Next, I wanted to try running/debugging from eclipse.  I set
up the run configuration and the code was downloaded to the
board.  The last indication said it was starting the debugger.
This window stayed up a long time and then nothing more.

Note: I did figure out that I needed tcf-agent running on my board
(this is not documented).  I also have GDB server on the board.

You can see my setup at http://www.mlbassoc.com/poky/eclipse_plugin

Thanks for any ideas/pointers

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

