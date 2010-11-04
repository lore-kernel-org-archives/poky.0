Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3FCE4C810A8
	for <poky@lists.pokylinux.org>; Thu,  4 Nov 2010 06:44:21 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BADA316606D1; Thu,  4 Nov 2010 05:44:20 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 65C9A16606C2;
	Thu,  4 Nov 2010 05:44:20 -0600 (MDT)
Message-ID: <4CD29C94.4070301@mlbassoc.com>
Date: Thu, 04 Nov 2010 05:44:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: timestamp overkill?
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
X-List-Received-Date: Thu, 04 Nov 2010 11:44:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just noticed that there are two identical functions in image.bbclass
to set/update the image timestamp.  Why?  Left over from a previous era?

$ find meta* -name "*.bb*" -or -name "*.inc" | xargs grep create_etc_timestamp
meta/classes/image.bbclass:create_etc_timestamp() {
meta/classes/image.bbclass:# export the zap_root_password, create_etc_timestamp and remote_init_link
meta/classes/image.bbclass:EXPORT_FUNCTIONS zap_root_password create_etc_timestamp remove_init_link do_rootfs make_zimage_symlink_relative set_image_autologin 
rootfs_update_timestamp rootfs_no_x_startup

Notice that 'create_etc_timestamp' does not seem to be used by
any recipe.  Perhaps it should be removed?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

