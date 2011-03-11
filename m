Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 739554C800A0
	for <poky@lists.pokylinux.org>; Fri, 11 Mar 2011 11:36:12 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 175571660365; Fri, 11 Mar 2011 10:36:12 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D501D166034F;
	Fri, 11 Mar 2011 10:35:56 -0700 (MST)
Message-ID: <4D7A5D7C.6040608@mlbassoc.com>
Date: Fri, 11 Mar 2011 10:35:56 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: file clashes
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
X-List-Received-Date: Fri, 11 Mar 2011 17:36:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I started with my sato-like image which includes gnome-keyring.
Then I added another application which wanted to use libgnome-keyring.
This caused this clash at install time (I'm still using opkg):
  * check_data_file_clashes: Package libgnome-keyring0 wants to install file /usr/lib/libgnome-keyring.so.0.1.1
         But that file is already provided by package  * gnome-keyring
  * check_data_file_clashes: Package libgnome-keyring0 wants to install file /usr/lib/libgnome-keyring.so.0
         But that file is already provided by package  * gnome-keyring

Does this happen because of the recipe/versions?
   meta/recipes-gnome/gnome/libgnome-keyring_2.32.0.bb
   meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

