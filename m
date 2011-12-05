Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76E31E00309
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 07:42:13 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id E3C671660208; Mon,  5 Dec 2011 08:42:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9C90B16601BA;
	Mon,  5 Dec 2011 08:42:10 -0700 (MST)
Message-ID: <4EDCE652.1040802@mlbassoc.com>
Date: Mon, 05 Dec 2011 08:42:10 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Problem building SDK
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
X-List-Received-Date: Mon, 05 Dec 2011 15:42:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

With a recent master (9be6d59b78510443d0944513503d515df13caa45),
the gdbm package version changed from 1.8.3 to 1.10 (notice not 1.10.0).
This causes a problem:
|  * satisfy_dependencies_for: Cannot satisfy the following dependencies for task-core-sdk:
|  *    libgdbm3 (>= 1.8.3) *


How can I fix this?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

