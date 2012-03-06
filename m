Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CD95E0132F
	for <poky@lists.pokylinux.org>; Tue,  6 Mar 2012 05:52:44 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 24E1BF81274; Tue,  6 Mar 2012 06:52:44 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9303DF81208;
	Tue,  6 Mar 2012 06:52:43 -0700 (MST)
Message-ID: <4F5616AB.6000603@mlbassoc.com>
Date: Tue, 06 Mar 2012 06:52:43 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Unable to build
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
X-List-Received-Date: Tue, 06 Mar 2012 13:52:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

After a recent update, I'm now getting this error in a previously
working setup.

ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
     Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
     Following is the list of potential problems / advisories:

     Your configuration is using stamp files including the sstate hash but your build directory was built with stamp files that do not include this.
To continue, either rebuild or switch back to the OEBasic signature handler with BB_SIGNATURE_HANDLER = 'OEBasic'.

I'm using my own distro.conf (not poky.conf), and I'm not setting
BB_SIGNATURE_HANDLER anywhere, so I think it should already be
set to OEBasic.  I even tried to put that line (cut & pasted
from the error message) in local.conf - no change.

How can I get past this, short of a complete rebuild?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

