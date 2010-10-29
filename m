Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A5494C80BD4
	for <poky@lists.pokylinux.org>; Fri, 29 Oct 2010 16:33:58 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 78ACE1660717; Fri, 29 Oct 2010 15:33:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1262F1660717;
	Fri, 29 Oct 2010 15:33:57 -0600 (MDT)
Message-ID: <4CCB3DC4.6070604@mlbassoc.com>
Date: Fri, 29 Oct 2010 15:33:56 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: RPM vs IPK
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Oct 2010 21:33:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I notice that in the latest master, rpm-native is always built,
even if I'm using ipk style packaging.

* Why?
* Why should I choose one over the other?  I'm happy using rpm
   (been using it for 15 years!) but I wonder why the switch?
   Is rpm to become the de-facto packaging for Poky builds?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

