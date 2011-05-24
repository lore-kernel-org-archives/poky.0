Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A38394C803BA
	for <poky@yoctoproject.org>; Tue, 24 May 2011 11:13:04 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id E00331660395; Tue, 24 May 2011 10:13:03 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7F34516601B1;
	Tue, 24 May 2011 10:13:03 -0600 (MDT)
Message-ID: <4DDBD90F.9080706@mlbassoc.com>
Date: Tue, 24 May 2011 10:13:03 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Over-exuberant error printing?
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
X-List-Received-Date: Tue, 24 May 2011 16:13:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Building from today's master (3504c3a9b1af5a3405e0a03a5ade50b82535b6dd)
if I get an error, I get two lines printed for each real line, e.g.
| ERROR: The stack trace of python calls that resulted in this exception/failure was:
| ERROR: The stack trace of python calls that resulted in this exception/failure was:
| ERROR:   File "sstate_task_postfunc", line 10, in <module>
| ERROR:   File "sstate_task_postfunc", line 10, in <module>
| ERROR:
| ERROR:
| ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
| ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
etc.

This is new behavior - any ideas?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

